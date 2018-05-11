-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- show default status bar (iOS)
display.setStatusBar( display.HiddenStatusBar )

-- Book created by Kwik for Adobe Photoshop  - Developed by Kwiksher 
-- Copyright (C) 2013 kwiksher.com. All Rights Reserved. 
-- Created using Kwik 3.3. 
-- uses DMC classes, by David McCuskey 
-- Exported on Thu Aug 27 2015 09:19:30 GMT+0700 

local composer = require("composer") 

-- =====================================aktifkan untuk notifikasi=====================================================================

-- local notifications = require( "plugin.notifications.v2" )

-- notifications.registerForPushNotifications( { useFCM=true } )
-- notifications.subscribe( "bursasajadah" )

-- local launchArgs = ...
 
-- if ( launchArgs and launchArgs.notification ) then
--     --notificationListener( launchArgs.notification )
--     media.playSound( "notification.wav" )
-- end

--====================================================================================================================================

--composer.Gesture = require("dmc_gesture") 
--composer.MultiTouch = require("dmc_multitouch") 
--system.activate("multitouch") 
local json = require("json") 

-- check if current SDK version is the latest compatible with Kwik 
local function versionCheck(event) if "clicked" == event.action then if event.index == 2 then system.openURL( "https://developer.coronalabs.com/downloads/coronasdk" ) end end end 
if ( system.getInfo("environment") == "simulator" and string.sub(system.getInfo("build"),6) < string.sub("2014.2393a",6) ) then native.showAlert("Corona SDK Incompatible Version","Your Corona SDK version is different than the certified one with Kwik. Install build 2014.2393a or you may have issues in your project.",{"OK", "Download"}, versionCheck) end 





composer.kwk_readMe = 0 

display.setStatusBar( display.HiddenStatusBar ) 
composer.imgDir = "images/" 
composer.audioDir = "audio/" 
composer.videoDir = "video/" 
composer.spriteDir = "sprites/" 
composer.thumbDir = "thumbnails/" 

composer.lang = "" 

composer.kBidi = false 
composer.kAutoPlay = 0 
composer.goPage = 1 

cur_page = "main"
status_back = 0



--print(pindah)

-- Handles physical buttons on Android devices 
local function onKeyEventExit( event ) 
   print("halaman: "..cur_page)
   
   local phase = event.phase 
   local keyName = event.keyName 
   if ( "back" == keyName and phase == "up" ) then 	
   		if(cur_page == "home") then
   			native.requestExit()
   		else		
   			if nil~= composer.getScene("home") then composer.removeScene("home", true) end  		            
			composer.gotoScene("home")
     	end
   end 
   return true
end 
Runtime:addEventListener( "key", onKeyEventExit )

-- Json code for external variable loading 
local jsonFile = function(filename ) 
   local path = system.pathForFile(filename, system.DocumentsDirectory ) 
   local contents 
   local file = io.open( path, "r" ) 
   if file then 
      contents = file:read("*a") 
      io.close(file) 
   end 
   return contents 
end 
-- Variable saving function 
local path = system.pathForFile( "kwkVars.json", system.DocumentsDirectory ) 
local file = io.open( path, "r" ) 
if file then 
else 
   local file = io.open( path, "w+" ) 
   file:write("{{}}") 
   io.close(file) 
end 

-- Loads vars 
kwkVar = json.decode( jsonFile("kwkVars.json") ) 
-- Check for saved variables 
function kwkVarCheck(variable) 
   kwkVar = json.decode( jsonFile("kwkVars.json") ) 
   local found = nil 
   if kwkVar ~= nil then 
      for i = 1, #kwkVar do 
         if (variable == kwkVar[i].name) then 
            found = kwkVar[i].value; break 
         end 
      end 
   end
   return (found) 
end 



--Create a main group
local mainGroup = display.newGroup()

-- Main function
local function main()
	local loop = 0
	local loop2 = 0
	local loop3 = 0
	composer.is_login = 0
	composer.data_max_slider = 0
	local pindah = ""
    composer.masuk = 0

	require "sqlite3"

	local datab = "data.db"
	local path = system.pathForFile(datab, system.DocumentsDirectory)
	db = sqlite3.open( path )

	local tablesetup = [[CREATE TABLE IF NOT EXISTS t_user (id INTEGER PRIMARY KEY , nama, umur, diagnosa, saran, status);]]
	db:exec(tablesetup)
	
	--composer.gotoScene( "pag", options )
	composer.gotoScene( "home", options )
    
	
   return true
end




--Clear timers and transitions
composer.timerStash = {}
composer.trans = {}
composer.gt = {}

composer.cancelAllTimers = function()
    local k, v

    for k,v in pairs(composer.timerStash) do
        timer.cancel( v )
        v = nil; k = nil
    end

    composer.timerStash = nil
    composer.timerStash = {}
end

--

composer.cancelAllTransitions = function()
    local k, v

    for k,v in pairs(composer.trans) do
        transition.cancel( v )
        v = nil; k = nil
    end

    composer.trans = nil
    composer.trans = {}
end

--cancel all gtweens
composer.cancelAllTweens = function()
    local k, v

    for k,v in pairs(composer.gt) do
        v:pause();
        v = nil; k = nil
    end

    composer.gt = nil
    composer.gt = {}
end

--save all permanent variables
function zeroesKwikVars() --restart the file to save variable content
	local path = system.pathForFile( "kwkVars.json", system.DocumentsDirectory )
	local contents
	local file = io.open( path, "w+b" )
	if file then
	   contents = file:write( "{{}}" )
	   io.close( file )	-- close the file after using it
	end
end

function saveKwikVars(toSave) --toSave is a table with contents
    local varTab={}
	--loop current kwkVar content (contains ALL variables saved)
	local found = nil
	local jsonString
	
	--checks if current file is empty or not
	local path = system.pathForFile( "kwkVars.json", system.DocumentsDirectory )
	local contents
	--check if file exists
	local file = io.open( path, "r" )
	if file then
	    --reads to check if original content is empty == {{}}
	    local test = file:read("*l") 

	    if (test=="{{}}") then
	        -- kwkVar.json is empty. Recreates the file with the new content
	        io.close( file )
	    	local file = io.open( path, "w+" )
	    	varTab[1] = {["name"] = toSave[1],["value"] = toSave[2]}
			jsonString = json.encode( varTab )

			contents = file:write( jsonString )
			io.close( file )
	    else
	        --there are already variables saved in the kwkVars.json file
	        io.close( file )
	    	local file = io.open( path, "w" )
	    	local ts = 0

		    for i = 1,#kwkVar do
		      if (toSave[1] == kwkVar[i].name) then
				kwkVar[i].value = toSave[2]
				varTab[i] = {["name"] = kwkVar[i].name,["value"] = kwkVar[i].value}
				ts = 1
			  else
				varTab[i] = {["name"] = kwkVar[i].name,["value"] = kwkVar[i].value}
			  end
		    end
		    if (ts == 0) then --variable not in the file yet
		    	local x = #kwkVar
		    	x = x + 1
			    varTab[x] = {["name"] = toSave[1],["value"] = toSave[2]}
			end

		    jsonString = json.encode( varTab )
	    	contents = file:write( jsonString )
			io.close( file )
	    end
	    
	    
	else
	    --re-creation scenario
	    zeroesKwikVars()
	end
	kwkVar = json.decode( jsonFile( "kwkVars.json" ) )	
	
end

local function myUnhandledErrorListener( event )
 
    local iHandledTheError = true
 
    if iHandledTheError then
        print( "Handling the unhandled error", event.errorMessage )
    else
        print( "Not handling the unhandled error", event.errorMessage )
    end
    
    return iHandledTheError
end
 
Runtime:addEventListener("unhandledError", myUnhandledErrorListener)


-- Begin
main()-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here