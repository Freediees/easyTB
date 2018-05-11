-----------------------------------------------------------------------------------------
--
-- view1.lua
--
-----------------------------------------------------------------------------------------
local widget = require( "widget" )
local json = require ("json")
local composer = require( "composer" )
local scene = composer.newScene()
local used_font = "PT_Sans-Web-Regular.ttf"
local used_font_bold = "PT_Sans-Web-Bold.ttf"
local glo = require("globals")


local x_mid = display.contentCenterX;
local y_mid = display.contentCenterY;
local x_quar1 = x_mid/2
local x_quar2 = x_mid + x_mid/2
local y_quar1 = y_mid/2
local y_quar2 = y_mid + y_mid/2
local lebar = display.contentWidth
local tinggi = display.contentHeight

cur_page = "level1"

local webView

function scene:create( event )
	--local sceneGroup = nil
	local sceneGroup = self.view
	

	

	
	local background = display.newRect(x_mid, y_mid, lebar, tinggi )
	background:setFillColor(1)
	sceneGroup:insert(background)

	--[[local logo = display.newImageRect( composer.imgDir.. "Overwatch.png", 128, 128 ); 
	logo.x = x_mid;
	logo.y =  y_mid
	logo.anchorY = 0.5
	logo.anchorX = 0.5
	--logo:scale(0.5,0.5)
	logo.xScale = (display.contentWidth* 0.5) / logo.width 
	logo.yScale = (display.contentWidth * 0.5) / logo.width 
	sceneGroup:insert(logo)--]]

	


	webView = native.newWebView( 0, tinggi/20, lebar, tinggi - tinggi*0.2 )
	webView:request( "page_tuberkulosis_khusus.html", system.ResourceDirectory )
	webView.anchorX = 0
	webView.anchorY = 0


     local function toHome()
     	if(webView ~= nil)then	
     		print("webview deleted")
			webView:removeSelf()
			webView = nil
		end
     	composer.gotoScene("home", {
				effect="fromLeft", 
				time=200
			})
     end

     local button2 = widget.newButton(
    {
        label = "Kembali",
        onEvent = toHome,
        --emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        --width = teks_masuk.width + 20,
        height = tinggi/15,
        cornerRadius = 5,
        fillColor = { default={63/255, 137/255, 255/255,1}, over={63/255, 137/255, 255/255,0.4} },
        labelColor = { default={ 1 }, over={ 0.4 } }
	    }
	)
	 
	-- Center the button
	button2.x = x_mid
	button2.y = webView.y + webView.height + tinggi/20

	sceneGroup:insert(button2)
	sceneGroup:insert(webView)
	
 
-- Change the button's label text

     --sceneGroup:insert(button1)
     --sceneGroup:insert(teks_masuk)

end

function scene:show( event )
	
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then



		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		--composer.removeHidden()
		
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then

		--[[ 
		  end--]]

	elseif phase == "did" then
		

		
		-- Called when the scene is now off screen
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	-- Called prior to the removal of scene's "view" (sceneGroup)
	-- 
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene