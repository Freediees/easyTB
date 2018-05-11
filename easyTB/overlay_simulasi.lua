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
composer.id_kategori = 0
composer.status_kategori= 1 
local cancelall = {}
local began = 1

composer.page = 1

function scene:create( event )

	local lfs = require( "lfs" )
 	
 	local sceneGroup = self.view

	local doc_path = system.pathForFile( "", system.TemporaryDirectory )
	 
	for file in lfs.dir( doc_path ) do
	    local destDir = system.TemporaryDirectory  -- Location where the file is stored
        os.remove( system.pathForFile( file , destDir ) )
	end

	-- Called when the scene's view does not exist.
	-- 
	-- INSERT code here to initialize the scene
	-- e.g. add display objects to 'sceneGroup', add touch listeners, etc.
	
	-- create a white background to fill screen
	local background = display.newRect( display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
	background:setFillColor( 0 )	-- white
	background.alpha = 0.7

	local background2 = display.newRect( 0, 0, display.contentWidth, display.contentHeight/5)
	background2.anchorY = 0
	background2:setFillColor( 1)
	background2.alpha = 0

	local xt = background2.x

	local background3 = display.newRect( xt, 0, display.contentWidth /4*3, display.contentHeight)
	background3.anchorY = 0
	background3.anchorX = 0
	background3:setFillColor( 1)
	background3.alpha = 1

	local background4 = display.newRect( xt, 0, display.contentWidth /4*3, display.contentHeight/12)
	background4.anchorY = 0
	background4.anchorX = 0
	background4:setFillColor(58/255, 99/255, 165/255)
	background4.alpha = 1



	local scrollView = widget.newScrollView(
	    {
	        top = 0 + background4.height,
	        left = xt,
	        width = display.contentWidth - xt,
	        height = display.contentHeight - background4.height,
	        horizontalScrollDisabled = true,
	        isBounceEnabled = false,
	        hideBackground = true
	        --backgroundColor = {1}
	        --scrollWidth = 600,
	        --scrollHeight = 2000,
	        --listener = scrollListener

	    }
	)


	local function onMenu()
		-- body
		composer.hideOverlay("fromLeft", 100)
		
	end
	

	background:addEventListener("tap", onMenu)

	local menu = display.newImageRect( composer.imgDir.. "info.png", 256, 256 ); 
	menu.x = 0 + 20 + xt;
	menu.y =  0 + display.contentCenterY / 11
	menu.anchorY = 0.5
	menu.anchorX = 0
	--menu:scale(0.5,0.5)
	menu.xScale = (background2.height/6) / menu.height
	menu.yScale = (background2.height/6) / menu.height

	menu:addEventListener("tap", onMenu)


	local text_header = display.newText("Simulasi", menu.x + menu.width*menu.xScale + 10, menu.y, used_font_bold,15  * (display.contentWidth / 320))
	text_header.anchorX = 0


	local text_header1 = display.newText("Kalkulator Dx", 10, 10, used_font_bold,16  * (display.contentWidth / 320))
	text_header1.anchorX = 0
	text_header1.anchorY = 0
	text_header1:setFillColor(58/255, 99/255, 165/255)

	local options = {
		 text = "Mulai simulasi baru",
         x = 10,
         y =  text_header1.y + text_header1.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks1 = display.newText(options)
     teks1.anchorX = 0
     teks1.anchorY = 0
     teks1:setFillColor(58/255, 99/255, 165/255);
     


     local line1 = display.newLine(2, teks1.height + teks1.y + 2, display.contentWidth /4 * 3 - 5, teks1.height + teks1.y + 2)
     line1:setStrokeColor(58/255, 99/255, 165/255)
     line1.strokeWidth = 1
     

     local options = {
		 text = "List User", 
         x = 10,
         y = teks1.y + teks1.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(58/255, 99/255, 165/255);
     

     local line2 = display.newLine(2, teks2.height + teks2.y + 2, display.contentWidth /4 * 3 - 5, teks2.height + teks2.y + 2)
     line2:setStrokeColor(58/255, 99/255, 165/255)
     line2.strokeWidth = 1

	

	sceneGroup:insert(background)
	sceneGroup:insert(background2)
	sceneGroup:insert(background3)
	sceneGroup:insert(background4)
	sceneGroup:insert(scrollView)
	sceneGroup:insert(menu)
    sceneGroup:insert(text_header)
	

	
    scrollView:insert(text_header1)

	scrollView:insert(teks1)
	scrollView:insert(teks2)
   
	


	scrollView:insert(line1)
	scrollView:insert(line2)
  
	


	teks1:addEventListener("tap", toBaru)
	teks2:addEventListener("tap", toListUser)
	--[[teks2:addEventListener("tap", toKhusus2)
	teks3:addEventListener("tap", toKhusus3)
	teks4:addEventListener("tap", toKhusus4)
	teks5:addEventListener("tap", toKhusus5)
    teks6:addEventListener("tap", toKhusus6)
    teks7:addEventListener("tap", toKhusus7)
    teks8:addEventListener("tap", toKhusus8)--]]
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then


	elseif phase == "did" then



     --composer.removeHidden()
  
		-- Called when the scene is now on screen
		-- 
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		
		
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