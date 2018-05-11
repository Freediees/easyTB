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

    menu:addEventListener("tap", onMenuAnak)
    
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
         text = "Tata Laksana", 
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

    local a1 = display.newText("-", composer.tab1,teks_latar.y + teks_latar.height + 5, used_font, 12  * (display.contentWidth / 320) )
    a1:setFillColor(0.2)
    a1.anchorX = 0
    a1.anchorY = 0
    scrollView:insert(a1)

    local options = {
         text = composer.anak5_1,
         x = composer.textTab1,
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



     local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = composer.anak5_2,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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


      local a3 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a3:setFillColor(0.2)
    a3.anchorX = 0
    a3.anchorY = 0
    scrollView:insert(a3)

    local options = {
         text = composer.anak5_3,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(0.2);
     scrollView:insert(teks3);


    y_now = teks3.y + teks3.height + 10



       local a4 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a4:setFillColor(0.2)
    a4.anchorX = 0
    a4.anchorY = 0
    scrollView:insert(a4)

    local options = {
         text = "Obat TB diberikan dalam paduan obat, tidak boleh diberikan sebagai monoterapi.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


    y_now = teks4.y + teks4.height + 10


     local a4 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a4:setFillColor(0.2)
    a4.anchorX = 0
    a4.anchorY = 0
    scrollView:insert(a4)

    local options = {
         text = "Pemberian gizi yang adekuat",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


    y_now = teks4.y + teks4.height + 10



    local a4 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a4:setFillColor(0.2)
    a4.anchorX = 0
    a4.anchorY = 0
    scrollView:insert(a4)

    local options = {
         text = "Mencari penyakit penyerta",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(0.2);
     scrollView:insert(teks4);


    y_now = teks4.y + teks4.height + 10



    local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = composer.anak5_4,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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




    local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = composer.anak5_5,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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


    local a2 = display.newText("Jenis OAT lini pertama dan dosisnya", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    y_now = a2.y + a2.height 
    

    local tabel = display.newImageRect( composer.imgDir.. "table2.png", 497, 433 ); 
    tabel.x = display.contentCenterX;
    tabel.y =  y_now + tinggi/20
    tabel.anchorY = 0
    tabel.anchorX = 0.5
    --tabel:scale(0.5,0.5)
    tabel.xScale = (display.contentWidth* 0.9) / tabel.width 
    tabel.yScale = (display.contentWidth * 0.9) / tabel.width 
    scrollView:insert(tabel)


    y_now = tabel.y + tabel.height* tabel.yScale + 20



    local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = composer.anak5_6,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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



    local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = composer.anak5_7,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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



    local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = composer.anak5_8,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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



    local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = composer.anak5_9,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab1
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height




    local tabel2 = display.newImageRect( composer.imgDir.. "table3.png", 259, 209 ); 
    tabel2.x = display.contentCenterX;
    tabel2.y =  y_now + tinggi/20
    tabel2.anchorY = 0
    tabel2.anchorX = 0.5
    --tabel2:scale(0.5,0.5)
    tabel2.xScale = (display.contentWidth* 0.6) / tabel2.width 
    tabel2.yScale = (display.contentWidth * 0.6) / tabel2.width 
    scrollView:insert(tabel2)


    y_now = tabel2.y + tabel2.height* tabel2.yScale + 20



    local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = composer.anak5_10,
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Pemantauan setiap 2 minggu pada fase intensif dan setiap 1 bulan pada fase lanjutan.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Penilaian meliputi: penilaian gejala, kepatuhan minum obat, efek samping, dan pengukuran berat badan.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Kepatuhan minum obat dicatat menggunakan kartu pemantauan pengobatan",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Pemantauan sputum harus dilakukan pada anak dengan BTA (+) pada diagnosis awal, yaitu pada akhir bulan ke-2, ke-5, dan ke-6",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10



    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Foto rontgen tidak rutin dilakukan karena perbaikan radiologis ditemukan dalam jangka waktu yang lama, kecuali pada TB milier setelah pengobatan 1 bulan dan efusi pleura setelah pengobatan 2-4 minggu.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10



    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Anak yang tidak menunjukkan perbaikan dengan terapi TB harus dirujuk untuk penilaian dan terapi, anak mungkin mengalami resistensi obat, komplikasi TB yang tidak biasa, penyebab paru lain atau masalah dengan keteraturan (adherence) minum obat",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 20



    local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Kortikosteroid",
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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

     local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Digunakan untuk TB dengan komplikasi seperti: meningitis TB, sumbatan jalan napas akibat TB kelenjar, dan pericarditis TB.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Obat yang sering digunakan adalah prednisone dengan dosis 2 mg/kg/hari sampai 4 mg/kg/hari pada kasus sakit berat dengan dosis maksimal 60 mg/hari selama 4 minggu.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Tappering-off bertahap 1-2 minggu.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 20



     local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Immune Reconstitution",
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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




    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Disebut juga reaksi paradoksal, perburukan klinis (gejala baru atau perburukan gejala, tanda, atau manifestasi radiologis).",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10



    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Biasa terjadi setelah terapi OAT akibat peningkatan kapasitas respon imun yang merangsang perburukan penyakit, demam dan peningkatan ukuran kelenjar linfe atau tuberkuloma.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


     y_now = teks2.y + teks2.height + 10



      local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Terjadi akibat peningkatan status gizi atau akibat terapi anti TB sendiri.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10



    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Pada pasien HIV dapat terjadi setelah pengobatan ARV dan disebut immune reconstition inflammatory syndrome (IRIS)",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10




    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Mencegah IRIS: ARV diberikan 2-6 minggu setelah OAT dimulai",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Untuk mengurangi risiko hepatotoksisitas, dipertimbangkan mengganti nevirapin dengan sediaan yang lain. Jika terjadi IRIS, terapi TB tetap diteruskan, sebagian kasus bisa ditambahkan kortikosteroid, namun jika terjadi keraguan hendaknya anak dirujuk ke level yang lebih tinggi.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 20




    local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Nutrisi",
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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



    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Penilaian yang terus menerus dan cermat pada pertumbuhan anak perlu dilakukan",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Penilaian dilakukan dengan mengukur: berat badan, tinggi badan, lingkar lengan atas atau pengamatan gejala dan tanda malnutrisi seperti edeme atau muscle wasting",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "ASI tetap diberikan, jika masih dalam periode menyusui",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10



    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Peberian PMT yang mudah diterima anak dan bervariasi",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10





    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Dapat diberikan sulementasi nutrisi sampai anak stabil dan Tb dapat diatas",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 20




     local a2 = display.newText("-", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Piridoksin",
         x = composer.textTab1,
         y = y_now,
         font = used_font,
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


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Isoniazid dapat menyebabkan defisiensi piridoksin simptomatik, terutama pada anak dengan malnutrisi berat dan anak dengan HIV yang mendapatkan ARV.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 10




     local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

    local options = {
         text = "Suplementasi piridoksin (5-10 mg/hari) direkomendasikan pada bayi yang mendapat ASI ekslusif, HIV positif atau malnutrisi berat.",
         x = composer.textTab2,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2
     }


     local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);


    y_now = teks2.y + teks2.height + 30


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