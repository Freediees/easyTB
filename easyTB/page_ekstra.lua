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
                                          
local y_now
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

	local background2 = display.newRect(x_mid, tinggi/12, lebar, tinggi/12 )
	background2:setFillColor(155/255, 39/255, 21/255)
	background2.anchorY = 1
	sceneGroup:insert(background2)

	local text_header = display.newText("EasyTB", x_mid, background2.height/2, used_font_bold,15  * (display.contentWidth / 320))
	sceneGroup:insert(text_header)

	local text_back = display.newImageRect( composer.imgDir.. "back.png", 128, 128 ); 
    text_back.xScale = (background2.height/2.5) / text_back.height
    text_back.yScale = (background2.height/2.5) / text_back.height
    text_back.anchorX = 0
    text_back.anchorY = 0.5
    text_back.x = 10 ;
    text_back.y =  background2.height/2
    sceneGroup:insert(text_back)
    text_back:addEventListener("tap", toHome)

	local menu = display.newImageRect( composer.imgDir.. "info.png", 256, 256 ); 
	menu.x = lebar - 20 ;
	menu.y =  background2.height/2
	menu.anchorY = 0.5
	menu.anchorX = 1
	--menu:scale(0.5,0.5)
	menu.xScale = (background2.height/2) / menu.height
	menu.yScale = (background2.height/2) / menu.height
	sceneGroup:insert(menu)

	menu:addEventListener("tap", onMenuEkstra)
	
	scrollView = widget.newScrollView(
	    {
	        top = 0 + background2.height,
	        left = 0,
	        width = lebar,
	        height = tinggi - background2.height,
	        horizontalScrollDisabled = true,
	        isBounceEnabled = false,
	        --backgroundColor = {0,0.4, 0.1, 1}
	        --scrollWidth = 600,
	        --scrollHeight = 2000,
	        --listener = scrollListener

	    }
	)

	sceneGroup:insert(scrollView)

	local options = {
		 text = "Tuberkulosis Ekstra Paru", x = lebar * 0.05,
         y = 10,
         font = used_font_bold,
         fontSize = 15  * (display.contentWidth / 320),
         align = "left",
         width = (0.9 * display.contentWidth)
 	 }


 	 local teks_latar = display.newText(options)
     teks_latar.anchorX = 0
     teks_latar.anchorY = 0
     teks_latar:setFillColor(0.2);
     scrollView:insert(teks_latar);


	--[[local a1 = display.newText("1.", composer.tab1,teks_latar.y + teks_latar.height + 5, used_font, 12  * (display.contentWidth / 320) )
    a1:setFillColor(0.2)
    a1.anchorX = 0
    a1.anchorY = 0
    scrollView:insert(a1)
--]]
	local options = {
		 text = composer.ekstra1_1,
         x = composer.tab1,
         y = teks_latar.y + teks_latar.height + 5,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }



 	 local teks_produk_diskon = display.newText(options)
     teks_produk_diskon.anchorX = 0
     teks_produk_diskon.anchorY = 0
     teks_produk_diskon:setFillColor(0.2);
     scrollView:insert(teks_produk_diskon);
 	 
 	 y_now = teks_produk_diskon.y + teks_produk_diskon.height + 10


 	local a2 = display.newText("Organ", 10 ,y_now, used_font_bold, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local a2 = display.newText("Pencitraan", lebar/4,y_now, used_font_bold, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local a2 = display.newText("Biopsi", lebar/2,y_now, used_font_bold, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local a2 = display.newText("Biakan", lebar/4 * 3 ,y_now, used_font_bold, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

	
    y_now = a2.y + a2.height + 10


	local options = {
		 text = "Kelenjar Getah Bening",
         x = 10,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4 - 10
 	 }


 	 local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);


	local options = {
		 text = "-",
         x = lebar/4,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
 	 }


 	 local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


     local options = {
         text = "Nodus",
         x = lebar/2,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     local options = {
         text = "Nodus atau aspirasi",
         x = lebar/4 * 3,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);



     y_now = teks6.y + teks6.height + 10



     local options = {
         text = "Tulang atau sendi",
         x = 10,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4 - 10
     }


     local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);


    local options = {
         text = "Foto polos, CT, dan MRI",
         x = lebar/4,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


     local options = {
         text = "Lokasi penyakit",
         x = lebar/2,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     local options = {
         text = "Biopsi atau abses paraspinal, cairan sendi",
         x = lebar/4 * 3,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);



     y_now = teks6.y + teks6.height + 10



     local options = {
         text = "Sistem pencernaan",
         x = 10,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4 - 10
     }


     local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);


    local options = {
         text = "Ultrasonografi CT Abdomen",
         x = lebar/4,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


     local options = {
         text = "Omentum Usus Besar",
         x = lebar/2,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     local options = {
         text = "Biopsi Asites",
         x = lebar/4 * 3,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);



     y_now = teks5.y + teks5.height + 10





     local options = {
         text = "Sistem Genital dan Saluran Kemih",
         x = 10,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4 - 10
     }


     local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);


    local options = {
         text = "Urografi intravena Ultrasonografi",
         x = lebar/4,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


     local options = {
         text = "Lokasi penyakit",
         x = lebar/2,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     local options = {
         text = "Urin pagi hari Lokasi penyakit Kuretasse Endometrium",
         x = lebar/4 * 3,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);



     y_now = teks6.y + teks6.height + 10






     local options = {
         text = "Diseminata",
         x = 10,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4 - 10
     }


     local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);


    local options = {
         text = "HRCT Toraks Ultrasonografi",
         x = lebar/4,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


     local options = {
         text = "Paru Hati Sumsum tulang",
         x = lebar/2,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     local options = {
         text = "Bilasan bronkus Hati Sumsum Tulang Darah",
         x = lebar/4 * 3,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);



     y_now = teks6.y + teks6.height + 10




     local options = {
         text = "Sistem Saraf Pusat",
         x = 10,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4 - 10
     }


     local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);


    local options = {
         text = "CT Kepala MRI",
         x = lebar/4,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


     local options = {
         text = "Tuberkuloma",
         x = lebar/2,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     local options = {
         text = "Cairan serebrospinal",
         x = lebar/4 * 3,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);



     y_now = teks6.y + teks6.height + 10








     local options = {
         text = "Kulit",
         x = 10,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4 - 10
     }


     local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);


    local options = {
         text = "-",
         x = lebar/4,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


     local options = {
         text = "Lokasi Penyakit",
         x = lebar/2,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     local options = {
         text = "Lokasi Penyakit",
         x = lebar/4 * 3,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);



     y_now = teks6.y + teks6.height + 10








     local options = {
         text = "Perikardium",
         x = 10,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4 - 10
     }


     local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);


    local options = {
         text = "Ekokardiogram",
         x = lebar/4,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


     local options = {
         text = "Perikardium",
         x = lebar/2,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     local options = {
         text = "Cairan perikardium",
         x = lebar/4 * 3,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);



     y_now = teks6.y + teks6.height + 10






     local options = {
         text = "Abses hati",
         x = 10,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4 - 10
     }


     local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);


    local options = {
         text = "Ultrasonografi",
         x = lebar/4,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


     local options = {
         text = "Lokasi Penyakit",
         x = lebar/2,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     local options = {
         text = "Lokasi Penyakit",
         x = lebar/4 * 3,
         y = y_now,
         font = used_font,
         fontSize = 11  * (display.contentWidth / 320),
         align = "left",
         width = lebar/4
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);



     y_now = teks6.y + teks6.height + 10

  




     local garis = display.newLine(0, y_now,lebar,y_now)
     scrollView:insert(garis)


     --[[local button2 = widget.newButton(
    {
        label = "Kembali",
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
	button2.y = teks_produk_diskon.height + tinggi/10

	scrollView:insert(button2)--]]


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