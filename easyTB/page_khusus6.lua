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
         text = "Tuberkulosis Paru dengan Kelainan Hati", 
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
         text = composer.khusus6_1,
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