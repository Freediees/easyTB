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
		 text = "Diagnosis",
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
		 text = composer.anak4_1,
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


     local a2 = display.newText("-", composer.tab1,teks_produk_diskon.y + teks_produk_diskon.height + 10, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

	local options = {
		 text = composer.paru4_2,
         x = composer.textTab1,
         y = teks_produk_diskon.y + teks_produk_diskon.height + 10,
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
		 text = composer.anak4_3,
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


    local a2 = display.newText("1", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

	local options = {
		 text = "Anamnesis (riwayat kontak erat dengan pasien TB dan gejala klinis mengarah ke TB).",
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


     local a2 = display.newText("2", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

	local options = {
		 text = "Pemeriksaan fisik (analisis tumbuh kembang anak)",
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


     local a2 = display.newText("3", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

	local options = {
		 text = "Uji tuberkulin",
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
		 text = "Penegakan diagnosis: gejala klinis + pemeriksaan penunjang yang sesuai",
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
		 text = "Riwayat kontak merupakan informasi penting untuk mengetahui sumber penularan. Lalu dibuktikan dengan uji tuberkulin.",
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
		 text = "Pembacaan uji tuberkulin dilakukan 48-72 jam setelah penyuntikan dengan mengukur diameter transversal. Positif bila:",
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


     

     local options = {
		 text = "a. Imunokompeten termasuk anak dengan riwayat BCG, diameter indurasi ≥10mm",
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


     local options = {
		 text = "b. Imunokompromais (HIV, gizi buruk, keganasan dsb), diameter indurasi ≥5 mm",
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
		 text = "Uji tuberkulin positif, tanpa gejala umum dan/ spesifik dan radiologis: INFEKSI TB (TB laten)",
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
		 text = "Uji tuberkulin positif + gejala umum dan/ spesifik serta radiologis: SAKIT TB",
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



    local a2 = display.newText("Pemeriksaan darah dan serologis: IGRA", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)



     y_now = a2.y + a2.height + 10


    local a2 = display.newText("+", composer.tab2,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

     local options = {
		 text = "IGRA dapat membedakan antara infeksi TB dengan BCG, namun tidak dapat membedakan antara sakit TB atau infeksi TB",
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
		 text = "Pemeriksaan IGRA mempunyai potensi keunggulan dibanding uji tuberkulin, namun studi pada anak belum banyak. Harga pemeriksaan IGRA relatif mahal",
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
		 text = "Pemeriksaan serologi seperti PAP TB. MycoDot, ICT, ELISA dll tidak direkomendasikan oleh WHO untuk diagnostik TB dewasa maupun anak",
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
		 text = "Pemeriksaan darah LED < limfositosis) tidak ada rujukannya, dan tidak direkomendasikan sebagai sarana diagnosis TB.",
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

     


     local a2 = display.newText("4", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

	local options = {
		 text = "Pemeriksaan bakteriologis",
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
		 text = "Spesimen: dari organ yang terlibat",
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
		 text = "Pemeriksaan: pulasan langsung (direct smear) untuk menemukan BTA dan biakan untuk menumbuhkan kuman TB.",
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
		 text = "Cara mendapatkan sampel spesimen:",
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



     local options = {
		 text = "1. Ekspektoransi",
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


     local options = {
		 text = "2. Aspirasi lambung",
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



     local options = {
		 text = "- Pada anak yang tidak dapat mengeluarkan dahak",
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


     local options = {
		 text = "- Dikumpulkan 3 hari berturut-turut pada pagi hari.",
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



     local options = {
		 text = "3. Induksi sputum",
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


      local options = {
		 text = "- Relatif mudah, murah, aman, dan efektif untuk anak semua umur dengan hasil lebih baik daripada aspirasi lambung, terutama apabila menggunakan lebih dari 1 sampel.",
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


     local options = {
		 text = "- 1 induksi sputum menghasilkan 3 kali nilai positif yang lebih tinggi daripada aspirasi lambung.",
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
		 text = "Pemeriksaan terkini TB",
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



      local options = {
		 text = "- Mengunakan Nucleid Acid Amplification test misal Xpert MTB/RIF.",
         x = composer.textTab2 + 10,
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

      local options = {
		 text = "- WHO merekomendasikan penggunaan alat ini",
         x = composer.textTab2 + 10,
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


     local options = {
		 text = "- Pada TB anak terbentur pada kesulitan mendapatkan spesimen",
         x = composer.textTab2 + 10,
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




     local a2 = display.newText("5", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

	local options = {
		 text = "Pemeriksaan penunjang yang sesuai (CXR, pungsi lumbal, biopsi dll)",
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
		 text = "Pemeriksaan histopatologi",
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


      local options = {
		 text = "- Dapat memberikan gambaran yang khas -> gambaran granuloma dengan nekrosis perkejuan di tengahnya dan dapat pula ditemukan gambaran sel datia langhans dan atau kuman TB.",
         x = composer.textTab2 + 10,
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



     local options = {
		 text = "- Apabila dicurigai TB ekstraparu dan memerlukan tindakan pembedahan, kesempatan baik untuk mendapatkan spesimen dan pemeriksaan histopatologi hendaknya dilakukan.",
		 x = composer.textTab2 + 10,
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


     local options = {
		 text = "- Spesimen dapat diperoleh dengan cara biopsi eksisi atau fine needle aspiration biopsy.",
		 x = composer.textTab2 + 10,
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
		 text = "Pemeriksaan foto thoraks",
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




     local options = {
		 text = "- Pemeriksaan yang cukup penting, namun gambaran foto toraks pada TB tidak khas.",
		 x = composer.textTab2 + 10,
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


     local options = {
		 text = "- Variabilitas antar pembaca foto toraks cukup besar.",
		 x = composer.textTab2 + 10,
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


     local options = {
		 text = "- Foto toraks saja tidak dapat digunakan untuk mendiagnosis TB kecuali gambaran TB milier.",
		 x = composer.textTab2 + 10,
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



     local options = {
		 text = "- Pembacaan harus dibaca oleh tenaga terlatih",
		 x = composer.textTab2 + 10,
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


     local options = {
		 text = "- Gambaran radiologis yang menunjang TB sbb:",
		 x = composer.textTab2 + 10,
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



     local options = {
		 text = "a. Pembesaran kelenjar hilus atau paratrakeal dengan/ tanpa infiltrat (visualisasinya harus dengan foto AP dan lateral)",
		 x = composer.textTab2 + 30,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2 - 30
 	 }


 	 local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);

     y_now = teks2.y + teks2.height + 10


     local options = {
		 text = "b. Konsolidasi segmental/ lobar",
		 x = composer.textTab2 + 30,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2 - 30
 	 }


 	 local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);

     y_now = teks2.y + teks2.height + 10


     local options = {
		 text = "c. Efusi pleura",
		 x = composer.textTab2 + 30,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2 - 30
 	 }


 	 local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);

     y_now = teks2.y + teks2.height + 10


      local options = {
		 text = "d. Milier",
		 x = composer.textTab2 + 30,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2 - 30
 	 }


 	 local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);

     y_now = teks2.y + teks2.height + 10


     local options = {
		 text = "e. Atelektasis",
		 x = composer.textTab2 + 30,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2 - 30
 	 }


 	 local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);

     y_now = teks2.y + teks2.height + 10


     local options = {
		 text = "f. Kavitas",
		 x = composer.textTab2 + 30,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2 - 30
 	 }


 	 local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);

     y_now = teks2.y + teks2.height + 10


     local options = {
		 text = "g. Klasifikasi dengan infltrat",
		 x = composer.textTab2 + 30,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2 - 30
 	 }


 	 local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);

     y_now = teks2.y + teks2.height + 10


      local options = {
		 text = "g. h. Tuberkuloma",
		 x = composer.textTab2 + 30,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = composer.endTextTab2 - 30
 	 }


 	 local teks2 = display.newText(options)
     teks2.anchorX = 0
     teks2.anchorY = 0
     teks2:setFillColor(0.2);
     scrollView:insert(teks2);

     y_now = teks2.y + teks2.height + 10




     local a2 = display.newText("6", composer.tab1,y_now, used_font, 12  * (display.contentWidth / 320) )
    a2:setFillColor(0.2)
    a2.anchorX = 0
    a2.anchorY = 0
    scrollView:insert(a2)

	local options = {
		 text = "Skrining HIV",
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