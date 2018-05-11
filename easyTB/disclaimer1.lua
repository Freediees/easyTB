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

cur_page = "home"
function scene:create( event )
	--local sceneGroup = nil
	local sceneGroup = self.view
	

	print(lebar.." hemeh "..tinggi)
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



	local options3 = {

		 text = "PERHATIAN",
         x = lebar * 0.05,
         y = y_quar1,
         font = used_font,
         fontSize = 15  * (display.contentWidth / 320),
         align = "center",
         width = (0.9 * display.contentWidth)
 	 }


 	 local teks_perhatian = display.newText(options3)
     teks_perhatian.anchorX = 0
     teks_perhatian.anchorY = 0
     teks_perhatian:setFillColor(0);
     sceneGroup:insert(teks_perhatian);


	local options3 = {

		 text = composer.text_disclaimer,
         x = lebar * 0.05,
         y = teks_perhatian.y + y_quar1/4,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "center",
         width = (0.9 * display.contentWidth)
 	 }


 	 local teks_produk_diskon_desc = display.newText(options3)
     teks_produk_diskon_desc.anchorX = 0
     teks_produk_diskon_desc.anchorY = 0
     teks_produk_diskon_desc:setFillColor(0);
     sceneGroup:insert(teks_produk_diskon_desc);


     local options3 = {

		 text = composer.text_url,
         x = lebar * 0.05,
         y = teks_produk_diskon_desc.y + teks_produk_diskon_desc.height,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "center",
         width = (0.9 * display.contentWidth)
 	 }


 	 local teks_url = display.newText(options3)
     teks_url.anchorX = 0
     teks_url.anchorY = 0
     teks_url:setFillColor(0,0,0.6);
     sceneGroup:insert(teks_url);

     local function openurl()
     	system.openURL(composer.text_url)
     end
     teks_url:addEventListener("tap", openurl)



     --[[local teks_masuk = display.newText({font=used_font,align="center", text="Masuk Aplikasi"})
     teks_masuk.x = x_mid
     teks_masuk.y = y_quar2--]]

    --[[ local button1 = display.newRoundedRect(x_mid, y_quar2, teks_masuk.width + 20, tinggi/15, 10)
     button1:setFillColor(63/255, 137/255, 255/255)--]]
     local function toHome()


     	composer.gotoScene("home", {
				effect="fromRight", 
				time=200
			})
     	
     end

     local button2 = widget.newButton(
    {
        label = "Masuk Aplikasi",
        onEvent = toHome,
        --emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        --width = teks_masuk.width + 20,
        height = tinggi/15,
        cornerRadius = 5,
        fillColor = { default={155/255, 39/255, 21/255,1}, over={155/255, 39/255, 21/255,0.4} },
        labelColor = { default={ 1 }, over={ 0.4 } }
	    }
	)
	 
	-- Center the button
	button2.x = x_mid
	button2.y = y_quar2

	sceneGroup:insert(button2)
 
-- Change the button's label text

     --sceneGroup:insert(button1)
     --sceneGroup:insert(teks_masuk)

end

function scene:show( event )
	
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then

	print(composer.text123)


		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		composer.removeHidden()


		
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