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
	background2.anchorX = 0
	background2:setFillColor( 1)
	background2.alpha = 0

	local xt = background2.x

	local background3 = display.newRect( xt, 0, display.contentWidth/4*3, display.contentHeight)
	background3.anchorY = 0
	background3.anchorX = 0
	background3:setFillColor( 1)
	background3.alpha = 1

	local background4 = display.newRect( xt, 0, display.contentWidth/4*3, display.contentHeight/12)
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


	local text_header = display.newText("Tuberkulosis Paru", menu.x + menu.width*menu.xScale + 10, menu.y, used_font_bold,15  * (display.contentWidth / 320))
	text_header.anchorX = 0


	local text_header1 = display.newText("Klasifikasi", 10, 10, used_font_bold,16  * (display.contentWidth / 320))
	text_header1.anchorX = 0
	text_header1.anchorY = 0
	text_header1:setFillColor(58/255, 99/255, 165/255)

	local options = {
		 text = string.upper("Klasifikasi berdasarkan lokasi anatomi"),
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
     


     local line1 = display.newLine(2, teks1.height + teks1.y + 2, display.contentWidth/4*3 - 5, teks1.height + teks1.y + 2)
     line1:setStrokeColor(58/255, 99/255, 165/255)
     line1.strokeWidth = 1
     

     local options = {
		 text = "Klasifikasi Berdasarkan Riwayat Pengobatan",
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


     local options = {
		 text = "Klasifikasi Berdasarkan Hasil Pemeriksaan Bakteriologis dan Uji Resistensi Obat",
         x = 10,
         y = teks2.y + teks2.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks3 = display.newText(options)
     teks3.anchorX = 0
     teks3.anchorY = 0
     teks3:setFillColor(58/255, 99/255, 165/255);
     sceneGroup:insert(teks3);

     local line3 = display.newLine(2, teks3.height + teks3.y + 2, display.contentWidth /4 * 3 - 5, teks3.height + teks3.y + 2)
     line3:setStrokeColor(58/255, 99/255, 165/255)
     line3.strokeWidth = 1


     local options = {
		 text = "Klasifikasi Berdasarkan Status HIV",
         x = 10,
         y = teks3.y + teks3.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks4 = display.newText(options)
     teks4.anchorX = 0
     teks4.anchorY = 0
     teks4:setFillColor(58/255, 99/255, 165/255);
     

     local line4 = display.newLine(2, teks4.height + teks4.y + 2, display.contentWidth /4 * 3 - 5, teks4.height + teks4.y + 2)
     line4:setStrokeColor(58/255, 99/255, 165/255)
     line4.strokeWidth = 1




    local text_header2 = display.newText("Diagnosis Tuberkulosis", 10, teks4.y + teks4.height + 50, used_font_bold,16  * (display.contentWidth / 320))
	text_header2.anchorX = 0
	text_header2.anchorY = 0
	text_header2:setFillColor(58/255, 99/255, 165/255)

	local text_header3 = display.newText("Pengobatan Tuberkulosis Paru", 10, text_header2.y + text_header2.height + 50, used_font_bold,16  * (display.contentWidth / 320))
	text_header3.anchorX = 0
	text_header3.anchorY = 0
	text_header3:setFillColor(58/255, 99/255, 165/255)


	local options = {
		 text = "Tujuan dan Algoritma Pengobatan",
         x = 10,
         y = text_header3.y + text_header3.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks5 = display.newText(options)
     teks5.anchorX = 0
     teks5.anchorY = 0
     teks5:setFillColor(58/255, 99/255, 165/255);

     local line5 = display.newLine(2, teks5.height + teks5.y + 2, display.contentWidth /4 * 3 - 5, teks5.height + teks5.y + 2)
     line5:setStrokeColor(58/255, 99/255, 165/255)
     line5.strokeWidth = 1


     local options = {
		 text = "Kombinasi Dosis Tetap",
         x = 10,
         y = teks5.y + teks5.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks6 = display.newText(options)
     teks6.anchorX = 0
     teks6.anchorY = 0
     teks6:setFillColor(58/255, 99/255, 165/255);

     local line6 = display.newLine(2, teks6.height + teks6.y + 2, display.contentWidth /4 * 3 - 5, teks6.height + teks6.y + 2)
     line6:setStrokeColor(58/255, 99/255, 165/255)
     line6.strokeWidth = 1



     local options = {
		 text = "Paduan Obat Standar",
         x = 10,
         y = teks6.y + teks6.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks7 = display.newText(options)
     teks7.anchorX = 0
     teks7.anchorY = 0
     teks7:setFillColor(58/255, 99/255, 165/255);

     local line7 = display.newLine(2, teks7.height + teks7.y + 2, display.contentWidth /4 * 3 - 5, teks7.height + teks7.y + 2)
     line7:setStrokeColor(58/255, 99/255, 165/255)
     line7.strokeWidth = 1


     local options = {
		 text = "Pemantauan Respon Pengobatan",
         x = 10,
         y = teks7.y + teks7.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks8 = display.newText(options)
     teks8.anchorX = 0
     teks8.anchorY = 0
     teks8:setFillColor(58/255, 99/255, 165/255);

     local line8 = display.newLine(2, teks8.height + teks8.y + 2, display.contentWidth /4 * 3 - 5, teks8.height + teks8.y + 2)
     line8:setStrokeColor(58/255, 99/255, 165/255)
     line8.strokeWidth = 1


     local options = {
		 text = "Klasifikasi Hasil Pengobatan",
         x = 10,
         y = teks8.y + teks8.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks9 = display.newText(options)
     teks9.anchorX = 0
     teks9.anchorY = 0
     teks9:setFillColor(58/255, 99/255, 165/255);

     local line9 = display.newLine(2, teks9.height + teks9.y + 2, display.contentWidth /4 * 3 - 5, teks9.height + teks9.y + 2)
     line9:setStrokeColor(58/255, 99/255, 165/255)
     line9.strokeWidth = 1


     local options = {
		 text = "Efek OAT yang Tidak Diinginkan",
         x = 10,
         y = teks9.y + teks9.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks10 = display.newText(options)
     teks10.anchorX = 0
     teks10.anchorY = 0
     teks10:setFillColor(58/255, 99/255, 165/255);

     local line10 = display.newLine(2, teks10.height + teks10.y + 2, display.contentWidth /4 * 3 - 5, teks10.height + teks10.y + 2)
     line10:setStrokeColor(58/255, 99/255, 165/255)
     line10.strokeWidth = 1


     local options = {
		 text = "Pengawasan dan Ketaatan Pasien dalam Pengobatan OAT",
         x = 10,
         y = teks10.y + teks10.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks11 = display.newText(options)
     teks11.anchorX = 0
     teks11.anchorY = 0
     teks11:setFillColor(58/255, 99/255, 165/255);

     local line11 = display.newLine(2, teks11.height + teks11.y + 2, display.contentWidth /4 * 3 - 5, teks11.height + teks11.y + 2)
     line11:setStrokeColor(58/255, 99/255, 165/255)
     line11.strokeWidth = 1



     local options = {
		 text = "Pencatatan dan Pelaporan Program Penanggulangan TB",
         x = 10,
         y = teks11.y + teks11.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks12 = display.newText(options)
     teks12.anchorX = 0
     teks12.anchorY = 0
     teks12:setFillColor(58/255, 99/255, 165/255);

     local line12 = display.newLine(2, teks12.height + teks12.y + 2, display.contentWidth /4 * 3 - 5, teks12.height + teks12.y + 2)
     line12:setStrokeColor(58/255, 99/255, 165/255)
     line12.strokeWidth = 1
    


    local text_header4 = display.newText("Tuberkulosis Resisten Obat", 10, teks12.y + teks12.height + 50, used_font_bold,16  * (display.contentWidth / 320))
	text_header4.anchorX = 0
	text_header4.anchorY = 0
	text_header4:setFillColor(58/255, 99/255, 165/255)


	local options = {
		 text = "Klasifikasi TB Resisten Obat",
         x = 10,
         y = text_header4.y + text_header4.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks13 = display.newText(options)
     teks13.anchorX = 0
     teks13.anchorY = 0
     teks13:setFillColor(58/255, 99/255, 165/255);

     local line13 = display.newLine(2, teks13.height + teks13.y + 2, display.contentWidth /4 * 3 - 5, teks13.height + teks13.y + 2)
     line13:setStrokeColor(58/255, 99/255, 165/255)
     line13.strokeWidth = 1


     local options = {
		 text = "Suspek TB Resisten Obat",
         x = 10,
         y = teks13.y + teks13.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks14 = display.newText(options)
     teks14.anchorX = 0
     teks14.anchorY = 0
     teks14:setFillColor(58/255, 99/255, 165/255);

     local line14 = display.newLine(2, teks14.height + teks14.y + 2, display.contentWidth /4 * 3 - 5, teks14.height + teks14.y + 2)
     line14:setStrokeColor(58/255, 99/255, 165/255)
     line14.strokeWidth = 1


      local options = {
		 text = "Strategi Pengobatan TB Resisten Obat Ganda",
         x = 10,
         y = teks14.y + teks14.height + 10,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = (0.5 * display.contentWidth)
 	 }


 	 local teks15 = display.newText(options)
     teks15.anchorX = 0
     teks15.anchorY = 0
     teks15:setFillColor(58/255, 99/255, 165/255);

     local line15 = display.newLine(2, teks15.height + teks15.y + 20, display.contentWidth /4 * 3 - 5, teks15.height + teks15.y + 20)
     line15:setStrokeColor(58/255, 99/255, 165/255)
     line15.strokeWidth = 1
	  --[[ function but_menu1(self) 	      
            if nil~= composer.getScene("test_cart") then composer.removeScene("test_cart", true) end  
            composer.gotoScene( "test_cart" ) 
	   end --]]



	

	

	sceneGroup:insert(background)
	sceneGroup:insert(background2)
	sceneGroup:insert(background3)
	sceneGroup:insert(background4)
	sceneGroup:insert(scrollView)
	sceneGroup:insert(menu)
	sceneGroup:insert(text_header)
	scrollView:insert(text_header1)
	scrollView:insert(text_header2)
	scrollView:insert(text_header3)
	scrollView:insert(text_header4)
	scrollView:insert(teks1)
	scrollView:insert(teks2)
	scrollView:insert(teks3)
	scrollView:insert(teks4)
	scrollView:insert(teks5)
	scrollView:insert(teks6)
	scrollView:insert(teks7)
	scrollView:insert(teks8)
	scrollView:insert(teks9)
	scrollView:insert(teks10)
	scrollView:insert(teks11)
	scrollView:insert(teks12)
	scrollView:insert(teks13)
	scrollView:insert(teks14)
	scrollView:insert(teks15)


	scrollView:insert(line1)
	scrollView:insert(line2)
	scrollView:insert(line3)
	scrollView:insert(line4)
	scrollView:insert(line5)
	scrollView:insert(line6)
	scrollView:insert(line7)
	scrollView:insert(line8)
	scrollView:insert(line9)
	scrollView:insert(line10)
	scrollView:insert(line11)
	scrollView:insert(line12)
	scrollView:insert(line13)
	scrollView:insert(line14)
	scrollView:insert(line15)
	


	teks1:addEventListener("tap", toParu1)
	teks2:addEventListener("tap", toParu2)
	teks3:addEventListener("tap", toParu3)
	teks4:addEventListener("tap", toParu4)
	teks5:addEventListener("tap", toParu5)
	teks6:addEventListener("tap", toParu6)
	teks7:addEventListener("tap", toParu7)
    teks8:addEventListener("tap", toParu8)
    teks9:addEventListener("tap", toParu9)
    teks10:addEventListener("tap", toParu10)
    teks11:addEventListener("tap", toParu11)
    teks12:addEventListener("tap", toParu12)
    teks13:addEventListener("tap", toParu13)
    teks14:addEventListener("tap", toParu14)
    teks15:addEventListener("tap", toParu15)
	text_header2:addEventListener("tap", toParuDiagnosis)
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