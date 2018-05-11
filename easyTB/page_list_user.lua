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
                                          
local y_now = 40
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

function scene:create( event )
    --local sceneGroup = nil
    local sceneGroup = self.view
    

    y_now = 20

    

    
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
         text = "List User", 
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

    for row in db:nrows("SELECT * FROM t_user order by id DESC") do
    
    local id_user = row.id

    local background_label = display.newRect( display.contentCenterX, y_now + 20, display.contentWidth * 0.95, display.contentHeight/7)
    background_label.anchorY = 0
    background_label:setFillColor( 0.9)
    background_label:setStrokeColor( 127/255,171/255,74/255 )
    background_label.strokeWidth = 0
    scrollView:insert(background_label)


    local function onBackground()

        composer.id = row.id
        composer.status = row.status

        if nil~= composer.getScene("page_input3") then composer.removeScene("page_input3", true) end 
        composer.gotoScene("page_input3")
    end
    background_label:addEventListener("tap", onBackground)

    local options = {
         text = "Nama : "..row.nama,
         x = background_label.x - background_label.width/2 + 10,
         y = background_label.y + 5,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = background_label.width - display.contentWidth/10
     }

    local nama_produk = display.newText(options)
    nama_produk.anchorX = 0
    nama_produk.anchorY = 0
    nama_produk:setFillColor(0)
    scrollView:insert(nama_produk)


    local options = {
         text = "Umur : "..row.umur,
         x = background_label.x - background_label.width/2 + 10,
         y = nama_produk.y + nama_produk.height + 10,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = background_label.width - display.contentWidth/10
     }

    local nama_produk = display.newText(options)
    nama_produk.anchorX = 0
    nama_produk.anchorY = 0
    nama_produk:setFillColor(0)
    scrollView:insert(nama_produk)


    local options = {
         text = "Diagnosis : "..row.diagnosa,
         x = background_label.x - background_label.width/2 + 10,
         y = nama_produk.y + nama_produk.height + 10,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = background_label.width - display.contentWidth/10
     }

    local nama_produk = display.newText(options)
    nama_produk.anchorX = 0
    nama_produk.anchorY = 0
    nama_produk:setFillColor(0)
    scrollView:insert(nama_produk)

    local options = {
         text = "Saran : "..row.saran,
         x = background_label.x - background_label.width/2 + 10,
         y = nama_produk.y + nama_produk.height + 10,
         font = used_font_bold,
         fontSize = 12  * (display.contentWidth / 320),
         align = "left",
         width = background_label.width - display.contentWidth/10
     }

    local nama_produk = display.newText(options)
    nama_produk.anchorX = 0
    nama_produk.anchorY = 0
    nama_produk:setFillColor(0)
    scrollView:insert(nama_produk)

    background_label.height = background_label.height + nama_produk.height + 10




    local button_x = display.newText( "X", background_label.x + background_label.width/2 - 10, background_label.y + 5, used_font_bold, 15  * (display.contentWidth / 320))
    button_x.anchorX = 1
    button_x.anchorY = 0
    button_x:setFillColor(1,0,0)
    scrollView:insert(button_x)
    local function onButtonX()

        local tablesetup = [[DELETE FROM t_user WHERE id=]]..row.id..[[;]]
        db:exec(tablesetup)

        if nil~= composer.getScene("page_list_user") then composer.removeScene("page_list_user", true) end 
        composer.gotoScene("page_list_user")
    end
    button_x:addEventListener("tap", onButtonX)


    
    y_now = y_now + background_label.height + 20
    end
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