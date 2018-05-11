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
local y_now
local webView
cur_page = "level2"
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

	menu:addEventListener("tap", onMenuKhusus)
	
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
		 text = "Tuberkulosis Paru dengan HIV / AIDS", 
         x = lebar * 0.05,
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

   --[[ local a1 = display.newText("1.", composer.tab1,teks_latar.y + teks_latar.height + 5, used_font, 12  * (display.contentWidth / 320) )
    a1:setFillColor(0.2)
    a1.anchorX = 0
    a1.anchorY = 0
    scrollView:insert(a1)--]]

	local options = {
		 text = composer.khusus2_1,
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


    --[[ local a2 = display.newText("-", composer.tab1,teks_produk_diskon.y + teks_produk_diskon.height + 10, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)--]]

	local options = {
		 text = "Diagnosis",
         x = composer.tab1,
         y = teks_produk_diskon.y + teks_produk_diskon.height + 10,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


     y_now = teks2.y + teks2.height + 10


   --[[ local a3 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a3:setFillColor(0.2)
    a3.anchorX = 0
    a3.anchorY = 0
    scrollView:insert(a3)--]]

	local options = {
		 text = composer.khusus2_2,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
 	 }


 	 local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);

     y_now = teks3.y + teks3.height + 10



     --[[local a4 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a4:setFillColor(0.2)
    a4.anchorX = 0
    a4.anchorY = 0
    scrollView:insert(a4)--]]

	local options = {
		 text = composer.khusus2_3,
         x = composer.tab1,
         y = y_now,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);

     y_now = teks4.y + teks4.height + 10



   --[[  local a5 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a5:setFillColor(0.2)
    a5.anchorX = 0
    a5.anchorY = 0
    scrollView:insert(a5)--]]

	local options = {
		 text = composer.khusus2_4,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(0.2);
     scrollView:insert(teks5);

     y_now = teks5.y + teks5.height + 10


    --[[ local a6 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a6:setFillColor(0.2)
    a6.anchorX = 0
    a6.anchorY = 0
    scrollView:insert(a6)
--]]
	local options = {
		 text = composer.khusus2_5,
         x = composer.tab1,
         y = y_now,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(0.2);
     scrollView:insert(teks6);

     y_now = teks6.y + teks6.height + 10


    --[[ local a6 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a6:setFillColor(0.2)
    a6.anchorX = 0
    a6.anchorY = 0
    scrollView:insert(a6)--]]

	local options = {
		 text = composer.khusus2_6,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks7 = display.newText(options)
     teks7.anchorX = 0
     teks7.anchorY = 0
     teks7:setFillColor(0.2);
     scrollView:insert(teks7);

     y_now = teks7.y + teks7.height + 10




     --[[local a8 = display.newText("1", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a8:setFillColor(0.2)
    a8.anchorX = 0
    a8.anchorY = 0
    scrollView:insert(a8)--]]

	local options = {
		 text = composer.khusus2_7,
         x = composer.tab1,
         y = y_now,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks8 = display.newText(options)
     teks8.anchorX = 0
     teks8.anchorY = 0
     teks8:setFillColor(0.2);
     scrollView:insert(teks8);

     y_now = teks8.y + teks8.height + 10

     --[[ local a9 = display.newText("2", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a9:setFillColor(0.2)
    a9.anchorX = 0
    a9.anchorY = 0
    scrollView:insert(a9)--]]

	local options = {
		 text = composer.khusus2_8,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks9 = display.newText(options)
     teks9.anchorX = 0
     teks9.anchorY = 0
     teks9:setFillColor(0.2);
     scrollView:insert(teks9);

     y_now = teks9.y + teks9.height + 10



       --[[local a10 = display.newText("3", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a10:setFillColor(0.2)
    a10.anchorX = 0
    a10.anchorY = 0
    scrollView:insert(a10)--]]

	local options = {
		 text = composer.khusus2_9,
         x = composer.tab1,
         y = y_now,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks10 = display.newText(options)
     teks10.anchorX = 0
     teks10.anchorY = 0
     teks10:setFillColor(0.2);
     scrollView:insert(teks10);

     y_now = teks10.y + teks10.height + 10


    --[[local a11 = display.newText("4", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a11:setFillColor(0.2)
    a11.anchorX = 0
    a11.anchorY = 0
    scrollView:insert(a11)--]]

	local options = {
		 text = composer.khusus2_10,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks11 = display.newText(options)
     teks11.anchorX = 0
     teks11.anchorY = 0
     teks11:setFillColor(0.2);
     scrollView:insert(teks11);

     y_now = teks11.y + teks11.height + 10





     local options = {
		 text = composer.khusus2_11,
         x = composer.tab1,
         y = y_now,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks12 = display.newText(options)
     teks12.anchorX = 0
     teks12.anchorY = 0
     teks12:setFillColor(0.2);
     scrollView:insert(teks12);

     y_now = teks12.y + teks12.height + 10




     --[[local a13 = display.newText("1", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a13:setFillColor(0.2)
    a13.anchorX = 0
    a13.anchorY = 0
    scrollView:insert(a13)--]]

	local options = {
		 text = composer.khusus2_12,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks13 = display.newText(options)
     teks13.anchorX = 0
     teks13.anchorY = 0
     teks13:setFillColor(0.2);
     scrollView:insert(teks13);

     y_now = teks13.y + teks13.height + 10

      --[[local a14 = display.newText("2", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a14:setFillColor(0.2)
    a14.anchorX = 0
    a14.anchorY = 0
    scrollView:insert(a14)--]]



	local options = {
		 text = composer.khusus2_13,
         x = composer.tab1,
         y = y_now,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks14 = display.newText(options)
     teks14.anchorX = 0
     teks14.anchorY = 0
     teks14:setFillColor(0.2);
     scrollView:insert(teks14);

     y_now = teks14.y + teks14.height + 10



       --[[local a15 = display.newText("3", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a15:setFillColor(0.2)
    a15.anchorX = 0
    a15.anchorY = 0
    scrollView:insert(a15)--]]

	local options = {
		 text = composer.khusus2_14,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks15 = display.newText(options)
     teks15.anchorX = 0
     teks15.anchorY = 0
     teks15:setFillColor(0.2);
     scrollView:insert(teks15);

     y_now = teks15.y + teks15.height + 10


    local a16 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a16:setFillColor(0.2)
    a16.anchorX = 0
    a16.anchorY = 0
    scrollView:insert(a16)

	local options = {
		 text = composer.khusus2_15,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks16 = display.newText(options)
     teks16.anchorX = 0
     teks16.anchorY = 0
     teks16:setFillColor(0.2);
     scrollView:insert(teks16);

     y_now = teks16.y + teks16.height + 10




    local a17 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a17:setFillColor(0.2)
    a17.anchorX = 0
    a17.anchorY = 0
    scrollView:insert(a17)

	local options = {
		 text = composer.khusus2_16,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks17 = display.newText(options)
     teks17.anchorX = 0
     teks17.anchorY = 0
     teks17:setFillColor(0.2);
     scrollView:insert(teks17);

     y_now = teks17.y + teks17.height + 10

     --[[ local a18 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a18:setFillColor(0.2)
    a18.anchorX = 0
    a18.anchorY = 0
    scrollView:insert(a18)--]]

	local options = {
		 text = composer.khusus2_17,
         x = composer.tab1,
         y = y_now,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks18 = display.newText(options)
     teks18.anchorX = 0
     teks18.anchorY = 0
     teks18:setFillColor(0.2);
     scrollView:insert(teks18);

     y_now = teks18.y + teks18.height + 10



      --[[ local a19 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a19:setFillColor(0.2)
    a19.anchorX = 0
    a19.anchorY = 0
    scrollView:insert(a19)--]]

	local options = {
		 text = composer.khusus2_18,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks19 = display.newText(options)
     teks19.anchorX = 0
     teks19.anchorY = 0
     teks19:setFillColor(0.2);
     scrollView:insert(teks19);

     y_now = teks19.y + teks19.height + 10


    local a20 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a20:setFillColor(0.2)
    a20.anchorX = 0
    a20.anchorY = 0
    scrollView:insert(a20)

	local options = {
		 text = composer.khusus2_19,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
 	 }


 	 local teks20 = display.newText(options)
     teks20.anchorX = 0
     teks20.anchorY = 0
     teks20:setFillColor(0.2);
     scrollView:insert(teks20);

     y_now = teks20.y + teks20.height + 10


     local a21 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a21:setFillColor(0.2)
    a21.anchorX = 0
    a21.anchorY = 0
    scrollView:insert(a21)

    local options = {
         text = composer.khusus2_20,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks21 = display.newText(options)
     teks21.anchorX = 0
     teks21.anchorY = 0
     teks21:setFillColor(0.2);
     scrollView:insert(teks21);

     y_now = teks21.y + teks21.height + 10


     local options = {
         text = composer.khusus2_21,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks22 = display.newText(options)
     teks22.anchorX = 0
     teks22.anchorY = 0
     teks22:setFillColor(0.2);
     scrollView:insert(teks22);

     y_now = teks22.y + teks22.height + 10


     local options = {
         text = composer.khusus2_22,
         x = composer.tab1,
         y = y_now,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks23 = display.newText(options)
     teks23.anchorX = 0
     teks23.anchorY = 0
     teks23:setFillColor(0.2);
     scrollView:insert(teks23);

     y_now = teks23.y + teks23.height + 10



     local options = {
         text = composer.khusus2_23,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks24 = display.newText(options)
     teks24.anchorX = 0
     teks24.anchorY = 0
     teks24:setFillColor(0.2);
     scrollView:insert(teks24);

     y_now = teks24.y + teks24.height + 10





      local options = {
         text = composer.khusus2_24,
         x = composer.tab1,
         y = y_now,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks25 = display.newText(options)
     teks25.anchorX = 0
     teks25.anchorY = 0
     teks25:setFillColor(0.2);
     scrollView:insert(teks25);

     y_now = teks25.y + teks25.height + 10



     local options = {
         text = composer.khusus2_25,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks26 = display.newText(options)
     teks26.anchorX = 0
     teks26.anchorY = 0
     teks26:setFillColor(0.2);
     scrollView:insert(teks26);

     y_now = teks26.y + teks26.height + 10




      local options = {
         text = composer.khusus2_26,
         x = composer.tab1,
         y = y_now,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks27 = display.newText(options)
     teks27.anchorX = 0
     teks27.anchorY = 0
     teks27:setFillColor(0.2);
     scrollView:insert(teks27);

     y_now = teks27.y + teks27.height + 10




    local a28 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a28:setFillColor(0.2)
    a28.anchorX = 0
    a28.anchorY = 0
    scrollView:insert(a28)

    local options = {
         text = composer.khusus2_27,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks28 = display.newText(options)
     teks28.anchorX = 0
     teks28.anchorY = 0
     teks28:setFillColor(0.2);
     scrollView:insert(teks28);

     y_now = teks28.y + teks28.height + 10


     local s29 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    s29:setFillColor(0.2)
    s29.anchorX = 0
    s29.anchorY = 0
    scrollView:insert(s29)

    local options = {
         text = composer.khusus2_28,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks29 = display.newText(options)
     teks29.anchorX = 0
     teks29.anchorY = 0
     teks29:setFillColor(0.2);
     scrollView:insert(teks29);

     y_now = teks29.y + teks29.height + 10




     local options = {
         text = composer.khusus2_29,
         x = composer.tab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks30 = display.newText(options)
     teks30.anchorX = 0
     teks30.anchorY = 0
     teks30:setFillColor(0.2);
     scrollView:insert(teks30);

     y_now = teks30.y + teks30.height + 10




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