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
	

	

	

	local function toLatarBelakang()

		composer.gotoScene("page_latar_belakang", {
				effect="fromRight", 
				time=200
			})
     end

     local function toTuberkulosis()

		composer.gotoScene("page_tuberkulosis_paru", {
				effect="fromRight", 
				time=200
			})
     end


     local function toTuberkulosisKhusus()

		composer.gotoScene("page_khusus1", {
				effect="fromRight", 
				time=200
			})
     end


     local function toTuberkulosisEkstra()

		composer.gotoScene("page_ekstra", {
				effect="fromRight", 
				time=200
			})
     end


     local function toTuberkulosisAnak()

		composer.gotoScene("page_anak1", {
				effect="fromRight", 
				time=200
			})
     end


      local function toDisclaimer2()

		composer.gotoScene("disclaimer2", {
				effect="fromRight", 
				time=200
			})
     end

	local background = display.newRect(x_mid, y_mid, lebar, tinggi )
	background:setFillColor(1)
	sceneGroup:insert(background)


	local logo = display.newImageRect( composer.imgDir.. "logo.png", 2576, 3296 ); 
	logo.x = display.contentCenterX;
	logo.y =  display.contentCenterY - display.contentHeight/5
	logo.anchorY = 0.5
	logo.anchorX = 0.5
	--logo:scale(0.5,0.5)
	logo.xScale = (display.contentWidth* 0.4) / logo.width 
	logo.yScale = (display.contentWidth * 0.4) / logo.width 
	sceneGroup:insert(logo)

	local tinggi_next = logo.y + logo.height* logo.yScale/2
	 local button1 = widget.newButton(
    {
        label = "Latar Belakang",
        onEvent = toLatarBelakang,
        shape = "roundedRect",
        height = tinggi/15,
        cornerRadius = 5,
        fillColor = { default={155/255, 39/255, 21/255,0.8}, over={155/255, 39/255, 21/255,0.4} },
        labelColor = { default={ 1 }, over={ 0.4 } },
        width = lebar * 0.8,
        height = tinggi/20
	    }
	)
	button1.anchorY = 0
	button1.x = x_mid
	button1.y = tinggi_next + tinggi/10 * 0.5

	local button2 = widget.newButton(
    {
        label = "Tuberkulosis Paru",
        onEvent = toTuberkulosis,
        shape = "roundedRect",
        height = tinggi/15,
        cornerRadius = 5,
        fillColor = { default={155/255, 39/255, 21/255,0.85}, over={155/255, 39/255, 21/255,0.4} },
        labelColor = { default={ 1 }, over={ 0.4 } },
        width = lebar * 0.8,
        height = tinggi / 20
	    }
	)
	button2.anchorY = 0
	button2.x = x_mid
	button2.y = button1.y + button1.height + 5

	local button3 = widget.newButton(
    {
        label = "Tuberkulosis pada Kebutuhan Khusus",
        onEvent = toTuberkulosisKhusus,
        shape = "roundedRect",
        height = tinggi/15,
        cornerRadius = 5,
        fillColor = { default={155/255, 39/255, 21/255,0.9}, over={155/255, 39/255, 21/255,0.4} },
        labelColor = { default={ 1 }, over={ 0.4 } },
        width = lebar * 0.8,
        height = tinggi / 20
	    }
	)
	button3.anchorY = 0
	button3.x = x_mid
	button3.y = button2.y + button2.height + 5

	local button4 = widget.newButton(
    {
        label = "Tuberkulosis Ekstra Paru",
        onEvent = toTuberkulosisEkstra,
        shape = "roundedRect",
        height = tinggi/15,
        cornerRadius = 5,
        fillColor = { default={155/255, 39/255, 21/255,0.95}, over={155/255, 39/255, 21/255,0.4} },
        labelColor = { default={ 1 }, over={ 0.4 } },
        width = lebar * 0.8,
        height = tinggi / 20
	    
	    }
	)
	button4.anchorY = 0
	button4.x = x_mid
	button4.y = button3.y + button3.height + 5

	local button5 = widget.newButton(
    {
        label = "Tuberkulosis pada Anak",
        onEvent = toTuberkulosisAnak,
        shape = "roundedRect",
        height = tinggi/15,
        cornerRadius = 5,
        fillColor = { default={155/255, 39/255, 21/255,1}, over={155/255, 39/255, 21/255,0.4} },
        labelColor = { default={ 1 }, over={ 0.4 } },
        width = lebar * 0.8,
        height = tinggi / 20
	    
	    }
	)
	button5.anchorY = 0
	button5.x = x_mid
	button5.y = button4.y + button4.height + 5

	local button6 = widget.newButton(
    {
        label = "Simulasi",
        onEvent = toDisclaimer2,
        shape = "roundedRect",
        height = tinggi/15,
        cornerRadius = 5,
        fillColor = { default={58/255, 99/255, 165/255,1}, over={58/255, 99/255, 165/255,0.4} },
        labelColor = { default={ 1 }, over={ 0.4 } },
        width = lebar * 0.8,
        height = tinggi / 20
	    }
	)
	button6.anchorY = 0
	button6.x = x_mid
	button6.y = button5.y + button5.height + 5


	sceneGroup:insert(button1)
	sceneGroup:insert(button2)
	sceneGroup:insert(button3)
	sceneGroup:insert(button4)
	sceneGroup:insert(button5)
	sceneGroup:insert(button6)




end

function scene:show( event )
	
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then

		
	


		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then

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