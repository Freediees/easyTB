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
                                          
local y_now = 20
local x_mid = display.contentCenterX;
local y_mid = display.contentCenterY;
local x_quar1 = x_mid/2
local x_quar2 = x_mid + x_mid/2
local y_quar1 = y_mid/2
local y_quar2 = y_mid + y_mid/2
local lebar = display.contentWidth
local tinggi = display.contentHeight
cur_page = "input"
local radioGroup2 = display.newGroup()
local radioGroup3 = display.newGroup()
radioGroup2.alpha = 0

composer.diagnosis = ""
composer.saran = ""

local radioButton1
local radioButton2
local radioButton3
local radioButton4
local radioButton5
local radioButton6
local radioButton7
local radioButton8
local radioButton9
local radioButton10
local radioButton11
local radioButton12
local radioButton13
local radioButton14
local radioButton15
local radioButton16
local radioButton17
local radioButton18
local radioButton19
local radioButton20
local radioButton21
local radioButton22
local radioButton23

local value={}
for i=0, 7 do
	value[i] = 0
end

local total1 = 0
local webView


local function minusone()
	total1 = total1 - 1
end

local function plusone()
	total1 = total1 + 1
end
function scene:create( event )
	--local sceneGroup = nil
	local sceneGroup = self.view
	
	total1 = 0
	

	
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

	menu:addEventListener("tap", onMenuSimulasi)
	
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
		 text = "Pemeriksaan Penunjang",
         x = lebar * 0.05,
         y = y_now,
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

     local options = {
		 text = "Ya",
         x = lebar/4 * 2.5,
         y = y_now,
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

     local options = {
		 text = "Tidak",
         x = lebar/5 * 4,
         y = y_now,
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

    y_now = teks_latar.y + teks_latar.height + 20

    local function onSwitchPress()
    	

    	print("masuk switch")
    	composer.status = tonumber(composer.status)
    	if(composer.status == 1)then
    		
    		print("masuk sini 1")
    		if(radioButton1.isOn == true and radioButton3.isOn == true)then
    			composer.diagnosis = "TB paru kasus baru"
    		elseif(radioButton1.isOn == false and radioButton3.isOn == true) then
    			composer.diagnosis = "TB paru BTA (-)"
    		end

    	elseif(composer.status ==2)then
    		print("masuk sini 2")
    		if(radioButton1.isOn == true and radioButton3.isOn == true and radioButton5.isOn == true)then
    			composer.diagnosis = "TB resisten obat"
    		end

    	end



     	print("diagnosis : "..composer.diagnosis)
     	print("id : "..composer.id)
     	print("status : "..composer.status)


     	teks_pertanyaan8.text = "Diagnosis : "..composer.diagnosis
     	y_saran = teks_pertanyaan8.y + teks_pertanyaan8.height + 20
     	--[[teks_pertanyaan9.text = "Saran : "..composer.saran
     	teks_pertanyaan9.y = y_saran--]]



    end

    local options = {
		 text = composer.pertanyaan2_1,
         x = lebar * 0.05,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar - lebar/4 * 2
 	 }


 	 local teks_latar = display.newText(options)
     teks_latar.anchorX = 0
     teks_latar.anchorY = 0
     teks_latar:setFillColor(0.2);
     scrollView:insert(teks_latar);



    local radioGroup1 = display.newGroup()
    scrollView:insert(radioGroup1)
    scrollView:insert(radioGroup3)
	radioButton1 = widget.newSwitch(
	    {
	        left = lebar/4*2.5,
	        top = y_now,
	        style = "radio",
	        id = "RadioButton1",
	        width = 20,
	        height = 20,
	        anchorY = 0,
	        onRelease = onSwitchPress
	    }
	)
	radioGroup1:insert( radioButton1 )
	 
	radioButton2 = widget.newSwitch(
	    {
	         left = lebar/5 * 4.2,
	        top = y_now,
	        style = "radio",
	        id = "RadioButton1",
	        initialSwitchState = true,
	        width = 20,
	        height = 20,
	        anchorY = 0,
	        onRelease = onSwitchPress
	    }
	)
	radioGroup1:insert( radioButton2 )


	

	
	--radioGroup1.y = y_now
    y_now = teks_latar.y + teks_latar.height + 20






    local options = {
		 text = composer.pertanyaan2_2,
         x = lebar * 0.05,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar - lebar/4*2
 	 }


 	 local teks_latar = display.newText(options)
     teks_latar.anchorX = 0
     teks_latar.anchorY = 0
     teks_latar:setFillColor(0.2);
     scrollView:insert(teks_latar);



    local radioGroup1 = display.newGroup()
    scrollView:insert(radioGroup1)
	radioButton3 = widget.newSwitch(
	    {
	        left = lebar/4*2.5,
	        top = y_now,
	        style = "radio",
	        id = "RadioButton1",
	       
	        width = 20,
	        height = 20,
	        anchorY = 0,
	        onPress = onSwitchPress
	    }
	)
	radioGroup1:insert( radioButton3 )
	 
	radioButton4 = widget.newSwitch(
	    {
	         left = lebar/5 * 4.2,
	        top = y_now,
	        style = "radio",
	        id = "RadioButton1",
	         initialSwitchState = true,
	        width = 20,
	        height = 20,
	        anchorY = 0,
	        onPress = onSwitchPress
	    }
	)
	radioGroup1:insert( radioButton4 )
	--radioGroup1.y = y_now
    y_now = teks_latar.y + teks_latar.height + 20






    local options = {
		 text = composer.pertanyaan2_3,
         x = lebar * 0.05,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar - lebar/4*2
 	 }


 	 local teks_latar = display.newText(options)
     teks_latar.anchorX = 0
     teks_latar.anchorY = 0
     teks_latar:setFillColor(0.2);
     scrollView:insert(teks_latar);

     

  


    local radioGroup1 = display.newGroup()
    scrollView:insert(radioGroup1)
	radioButton5 = widget.newSwitch(
	    {
	        left = lebar/4*2.5,
	        top = y_now,
	        style = "radio",
	        id = "RadioButton1",
	       
	        width = 20,
	        height = 20,
	        anchorY = 0,
	        onPress = onSwitchPress
	    }
	)
	radioGroup1:insert( radioButton5 )
	 
	radioButton6 = widget.newSwitch(
	    {
	         left = lebar/5 * 4.2,
	        top = y_now,
	        style = "radio",
	        id = "RadioButton1",
	        initialSwitchState = true,
	        width = 20,
	        height = 20,
	        anchorY = 0,
	        onPress = onSwitchPress
	    }
	)
	radioGroup1:insert( radioButton6 )
	--radioGroup1.y = y_now
    y_now = teks_latar.y + teks_latar.height + 20




     local options = {
		 text = composer.pertanyaan2_4,
         x = lebar * 0.05,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar - lebar/4*2
 	 }


 	 local teks_latar = display.newText(options)
     teks_latar.anchorX = 0
     teks_latar.anchorY = 0
     teks_latar:setFillColor(0.2);
     scrollView:insert(teks_latar);

 

    local radioGroup1 = display.newGroup()
    scrollView:insert(radioGroup1)
	radioButton7 = widget.newSwitch(
	    {
	        left = lebar/4*2.5,
	        top = y_now,
	        style = "radio",
	        id = "RadioButton1",
	        
	        width = 20,
	        height = 20,
	        anchorY = 0,
	        onPress = onSwitchPress
	    }
	)
	radioGroup1:insert( radioButton7 )
	 
	radioButton8 = widget.newSwitch(
	    {
	         left = lebar/5 * 4.2,
	        top = y_now,
	        style = "radio",
	        id = "RadioButton1",
	        initialSwitchState = true,
	        width = 20,
	        height = 20,
	        anchorY = 0,
	        onPress = onSwitchPress
	    }
	)
	radioGroup1:insert( radioButton8 )
	--radioGroup1.y = y_now
    y_now = teks_latar.y + teks_latar.height + 100

    --y_now = teks_kesimpulan.y + teks_kesimpulan.height + 10

    local options = {
		 text = "Diagnosis : ",
         x = lebar * 0.05,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar - 15
 	 }

 	 teks_pertanyaan8 = display.newText(options)
     teks_pertanyaan8.anchorX = 0
     teks_pertanyaan8.anchorY = 0
     teks_pertanyaan8:setFillColor(0.2);
     radioGroup3:insert(teks_pertanyaan8);

     y_now = teks_pertanyaan8.y + teks_pertanyaan8.height + 10



     local options = {
		 text = "Saran : ",
         x = lebar * 0.05,
         y = y_now,
         font = used_font,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = lebar - 15
 	 }

 	 teks_pertanyaan9 = display.newText(options)
     teks_pertanyaan9.anchorX = 0
     teks_pertanyaan9.anchorY = 0
     teks_pertanyaan9:setFillColor(0.2);
     radioGroup3:insert(teks_pertanyaan9);


     y_now = teks_pertanyaan9.y + teks_pertanyaan9.height + 100
     



     local function cek()
     	
     	print(composer.diagnosis)
     	print(composer.id)
     	local tablesetup = [[UPDATE t_user set diagnosa =' ]]..composer.diagnosis..[[' where id = ']]..composer.id..[[';]]
		db:exec( tablesetup )

		composer.gotoScene("page_list_user", {
			effect="fromRight", 
			time=200
		})
     end

     local button2 = widget.newButton(
    {
        label = "Simpan Data",
        onPress = cek,
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
	button2.y = y_now

	radioGroup3:insert(button2)

	local garis = display.newLine(0, y_now + lebar/2,lebar,y_now + lebar/2)
    scrollView:insert(garis)

end

function scene:show( event )
	
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then



		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		--composer.removeHidden()
		local function removeHide()
			composer.removeHidden()	
		end
		timer.performWithDelay(500, removeHide)
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then



		if(teksfield_nama~=nil)then
		teksfield_nama:removeSelf()
		teksfield_nama = nil
		end

		if(teksfield_umur~=nil)then
		teksfield_umur:removeSelf()
		teksfield_umur = nil
		end
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