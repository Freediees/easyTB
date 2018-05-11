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
cur_page = "level2"
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

	menu:addEventListener("tap", onMenuParu)
	
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
		 text = "Efek OAT yang Tidak Diinginkan", x = lebar * 0.05,
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
		 text = composer.paru10_1,
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


 	local a2 = display.newText("MAYOR", x_mid,y_now, used_font_bold, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0.5
    a2.anchorY = 0
    scrollView:insert(a2)

    

	
    y_now = a2.y + a2.height + 10


	local options = {
		 text = "EFEK TIDAK DIINGINKAN",
         x = 0,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "center",
         width = lebar/3
 	 }


 	 local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);

    local options = {
         text = "KEMUNGKINAN OAT PENYEBAB",
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "center",
         width = lebar/3
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);

    local options = {
         text = "PENGOBATAN",
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "center",
         width = lebar/3
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     y_now = teks3.y + teks3.height + 10



     local options = {
         text = composer.paru10_2,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);

    local options = {
         text = composer.paru10_3,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks7 = display.newText(options)
     teks7.anchorX = 0
     teks7.anchorY = 0
     teks7:setFillColor(0.2);
     scrollView:insert(teks7);

    local options = {
         text = composer.paru10_4,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks8 = display.newText(options)
     teks8.anchorX = 0
     teks8.anchorY = 0
     teks8:setFillColor(0.2);
     scrollView:insert(teks8);

     y_now = teks7.y + teks7.height + 10




     local options = {
         text = composer.paru10_5,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks9 = display.newText(options)
     teks9.anchorX = 0
     teks9.anchorY = 0
     teks9:setFillColor(0.2);
     scrollView:insert(teks9);

    local options = {
         text = composer.paru10_6,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks10 = display.newText(options)
     teks10.anchorX = 0
     teks10.anchorY = 0
     teks10:setFillColor(0.2);
     scrollView:insert(teks10);

    local options = {
         text = composer.paru10_7,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks11 = display.newText(options)
     teks11.anchorX = 0
     teks11.anchorY = 0
     teks11:setFillColor(0.2);
     scrollView:insert(teks11);

     y_now = teks9.y + teks9.height + 10




     local options = {
         text = composer.paru10_8,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks12 = display.newText(options)
     teks12.anchorX = 0
     teks12.anchorY = 0
     teks12:setFillColor(0.2);
     scrollView:insert(teks12);

    local options = {
         text = composer.paru10_6,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks13 = display.newText(options)
     teks13.anchorX = 0
     teks13.anchorY = 0
     teks13:setFillColor(0.2);
     scrollView:insert(teks13);

    local options = {
         text = composer.paru10_7,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks14 = display.newText(options)
     teks14.anchorX = 0
     teks14.anchorY = 0
     teks14:setFillColor(0.2);
     scrollView:insert(teks14);

     y_now = teks12.y + teks12.height + 10



     local options = {
         text = composer.paru10_9,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks15 = display.newText(options)
     teks15.anchorX = 0
     teks15.anchorY = 0
     teks15:setFillColor(0.2);
     scrollView:insert(teks15);

    local options = {
         text = composer.paru10_10,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks16 = display.newText(options)
     teks16.anchorX = 0
     teks16.anchorY = 0
     teks16:setFillColor(0.2);
     scrollView:insert(teks16);

    local options = {
         text = composer.paru10_4,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks17 = display.newText(options)
     teks17.anchorX = 0
     teks17.anchorY = 0
     teks17:setFillColor(0.2);
     scrollView:insert(teks17);

     y_now = teks15.y + teks15.height + 10





     local options = {
         text = composer.paru10_11,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks18 = display.newText(options)
     teks18.anchorX = 0
     teks18.anchorY = 0
     teks18:setFillColor(0.2);
     scrollView:insert(teks18);

    local options = {
         text = composer.paru10_12,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks19 = display.newText(options)
     teks19.anchorX = 0
     teks19.anchorY = 0
     teks19:setFillColor(0.2);
     scrollView:insert(teks19);

    local options = {
         text = composer.paru10_4,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks20 = display.newText(options)
     teks20.anchorX = 0
     teks20.anchorY = 0
     teks20:setFillColor(0.2);
     scrollView:insert(teks20);

     y_now = teks18.y + teks18.height + 10





      local options = {
         text = composer.paru10_13,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks21 = display.newText(options)
     teks21.anchorX = 0
     teks21.anchorY = 0
     teks21:setFillColor(0.2);
     scrollView:insert(teks21);

    local options = {
         text = composer.paru10_14,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks22 = display.newText(options)
     teks22.anchorX = 0
     teks22.anchorY = 0
     teks22:setFillColor(0.2);
     scrollView:insert(teks22);

    local options = {
         text = composer.paru10_15,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks23 = display.newText(options)
     teks23.anchorX = 0
     teks23.anchorY = 0
     teks23:setFillColor(0.2);
     scrollView:insert(teks23);

     y_now = teks21.y + teks21.height + 10



      local options = {
         text = composer.paru10_16,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks24 = display.newText(options)
     teks24.anchorX = 0
     teks24.anchorY = 0
     teks24:setFillColor(0.2);
     scrollView:insert(teks24);

    local options = {
         text = composer.paru10_6,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks25 = display.newText(options)
     teks25.anchorX = 0
     teks25.anchorY = 0
     teks25:setFillColor(0.2);
     scrollView:insert(teks25);

    local options = {
         text = composer.paru10_7,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks26 = display.newText(options)
     teks26.anchorX = 0
     teks26.anchorY = 0
     teks26:setFillColor(0.2);
     scrollView:insert(teks26);

     y_now = teks24.y + teks24.height + 10




















     local a2 = display.newText("MINOR", x_mid,y_now + 30, used_font_bold, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0.5
    a2.anchorY = 0
    scrollView:insert(a2)

    

    
    y_now = a2.y + a2.height + 10


    local options = {
         text = "EFEK TIDAK DIINGINKAN",
         x = 0,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "center",
         width = lebar/3
     }


     local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);

    local options = {
         text = "KEMUNGKINAN OAT PENYEBAB",
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "center",
         width = lebar/3
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);

    local options = {
         text = "PENGOBATAN",
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "center",
         width = lebar/3
     }


     local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     y_now = teks3.y + teks3.height + 10



     local options = {
         text = composer.paru10_17,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);

    local options = {
         text = composer.paru10_18,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks7 = display.newText(options)
     teks7.anchorX = 0
     teks7.anchorY = 0
     teks7:setFillColor(0.2);
     scrollView:insert(teks7);

    local options = {
         text = composer.paru10_19,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks8 = display.newText(options)
     teks8.anchorX = 0
     teks8.anchorY = 0
     teks8:setFillColor(0.2);
     scrollView:insert(teks8);

     y_now = teks8.y + teks8.height + 10




     local options = {
         text = composer.paru10_20,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks9 = display.newText(options)
     teks9.anchorX = 0
     teks9.anchorY = 0
     teks9:setFillColor(0.2);
     scrollView:insert(teks9);

    local options = {
         text = composer.paru10_21,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks10 = display.newText(options)
     teks10.anchorX = 0
     teks10.anchorY = 0
     teks10:setFillColor(0.2);
     scrollView:insert(teks10);

    local options = {
         text = composer.paru10_22,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks11 = display.newText(options)
     teks11.anchorX = 0
     teks11.anchorY = 0
     teks11:setFillColor(0.2);
     scrollView:insert(teks11);

     y_now = teks11.y + teks11.height + 10




     local options = {
         text = composer.paru10_23,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks12 = display.newText(options)
     teks12.anchorX = 0
     teks12.anchorY = 0
     teks12:setFillColor(0.2);
     scrollView:insert(teks12);

    local options = {
         text = composer.paru10_6,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks13 = display.newText(options)
     teks13.anchorX = 0
     teks13.anchorY = 0
     teks13:setFillColor(0.2);
     scrollView:insert(teks13);

    local options = {
         text = composer.paru10_24,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks14 = display.newText(options)
     teks14.anchorX = 0
     teks14.anchorY = 0
     teks14:setFillColor(0.2);
     scrollView:insert(teks14);

     y_now = teks12.y + teks12.height + 10



     local options = {
         text = composer.paru10_25,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks15 = display.newText(options)
     teks15.anchorX = 0
     teks15.anchorY = 0
     teks15:setFillColor(0.2);
     scrollView:insert(teks15);

    local options = {
         text = composer.paru10_26,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks16 = display.newText(options)
     teks16.anchorX = 0
     teks16.anchorY = 0
     teks16:setFillColor(0.2);
     scrollView:insert(teks16);

    local options = {
         text = composer.paru10_27,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks17 = display.newText(options)
     teks17.anchorX = 0
     teks17.anchorY = 0
     teks17:setFillColor(0.2);
     scrollView:insert(teks17);

     y_now = teks17.y + teks17.height + 10





     local options = {
         text = composer.paru10_28,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks18 = display.newText(options)
     teks18.anchorX = 0
     teks18.anchorY = 0
     teks18:setFillColor(0.2);
     scrollView:insert(teks18);

    local options = {
         text = composer.paru10_21,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks19 = display.newText(options)
     teks19.anchorX = 0
     teks19.anchorY = 0
     teks19:setFillColor(0.2);
     scrollView:insert(teks19);

    local options = {
         text = composer.paru10_30,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks20 = display.newText(options)
     teks20.anchorX = 0
     teks20.anchorY = 0
     teks20:setFillColor(0.2);
     scrollView:insert(teks20);

     y_now = teks20.y + teks20.height + 10





      local options = {
         text = composer.paru10_31,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3 - composer.tab1
     }


     local teks21 = display.newText(options)
     teks21.anchorX = 0
     teks21.anchorY = 0
     teks21:setFillColor(0.2);
     scrollView:insert(teks21);

    local options = {
         text = composer.paru10_32,
         x = lebar/3,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks22 = display.newText(options)
     teks22.anchorX = 0
     teks22.anchorY = 0
     teks22:setFillColor(0.2);
     scrollView:insert(teks22);

    local options = {
         text = composer.paru10_33,
         x = lebar/3 * 2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar/3
     }


     local teks23 = display.newText(options)
     teks23.anchorX = 0
     teks23.anchorY = 0
     teks23:setFillColor(0.2);
     scrollView:insert(teks23);

     y_now = teks21.y + teks21.height + 10



    




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