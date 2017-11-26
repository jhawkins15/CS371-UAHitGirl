--Background--
local background = display.newImageRect( "map3.jpg", 1000, 1334 )
background.x = display.contentCenterX
background.y = display.contentCenterY
background.alpha = 0.9
background.rotation = -90

--Title--
local title = display.newText("UAHitGirl",275,125,450,0,100,100)
title:setFillColor(0,0,1)
title:toFront()
--Art Student--
local art = display.newImageRect("006-painting-palette.png",60,60)
art.x = 200
art.y = 300
art:toFront()


local function tapArtIcon( event )
    art.alpha = 0.5
    local question = display.newRect(display.contentCenterX,display.contentCenterY, 300, 500)
    question:setFillColor(0,0,0.5)
    local myText = display.newText( "Would you like to go to Wilson Hall?", display.contentCenterX, display.contentCenterY, native.systemFont, 25 )
    myText.rotation = 90
    local yes = display.newRect(300,550,50,150)
    yes:setFillColor(0,0.5,0)
    local yestext = display.newText("YES",300, 550, native.systemFont, 15)
    yestext.rotation = 90
    local cancel = display.newRect(300,780, 50,150)
    cancel:setFillColor(1,0,0)
    local canceltext = display.newText("CANCEL", 300, 780, native.systemFont, 15)
    canceltext.rotation = 90
    local function clickCancel(event)
    question.remove()
    myText.remove()
    yes.remove()
    yestext.remove()
    cancel.remove()
    canceltext.remove()
    end
end
art:addEventListener( "tap", tapArtIcon )


--Nursing Student--
local nurse = display.newImageRect("009-nurse.png",60,60)
nurse.x = 350
nurse.y = 360
nurse:toFront()


local function tapNurseIcon(event)
    nurse.alpha = 0.5
    question = display.newRect(display.contentCenterX,display.contentCenterY, 400, 600)
    question:setFillColor(0,0,0.5);
    myText = display.newText( "Would you like to go to the Nursing Building?", display.contentCenterX, display.contentCenterY, native.systemFont, 25 )
    myText.rotation = 90
    local yes = display.newRect(300,550,50,150)
    yes:setFillColor(0,0.5,0)
    local yestext = display.newText("YES",300, 550, native.systemFont, 15)
    yestext.rotation = 90
    local cancel = display.newRect(300,780, 50,150)
    cancel:setFillColor(1,0,0)
    local canceltext = display.newText("CANCEL", 300, 780, native.systemFont, 15)
    canceltext.rotation = 90
end
nurse:addEventListener( "tap", tapNurseIcon )


--Biology Student--
local biology = display.newImageRect("003-biology.png",60,60)
biology.x = 250
biology.y = 600
biology:toFront()


local function tapBiologyIcon(event)
    biology.alpha = 0.5
    question = display.newRect(display.contentCenterX,display.contentCenterY, 400, 600)
    question:setFillColor(0,0,0.5);
    myText = display.newText( "Would you like to go to Shelby Success Center?", display.contentCenterX, display.contentCenterY, native.systemFont, 25 )
    myText.rotation = 90
    local yes = display.newRect(300,550,50,150)
    yes:setFillColor(0,0.5,0)
    local yestext = display.newText("YES",300, 550, native.systemFont, 15)
    yestext.rotation = 90
    local cancel = display.newRect(300,780, 50,150)
    cancel:setFillColor(1,0,0)
    local canceltext = display.newText("CANCEL", 300, 780, native.systemFont, 15)
    canceltext.rotation = 90
end
biology:addEventListener( "tap", tapBiologyIcon )


--Computer Science Student--
local cs = display.newImageRect("005-student.png",60,60)
cs.x = 1200
cs.y = 100
cs:toFront()


local function tapCSIcon(event)
    cs.alpha = 0.5
    question = display.newRect(display.contentCenterX,display.contentCenterY, 400, 600)
    question:setFillColor(0,0,0.5);
    myText = display.newText( "Would you like to go to Tech Hall?", display.contentCenterX, display.contentCenterY, native.systemFont, 25 )
    myText.rotation = 90
    local yes = display.newRect(300,550,50,150)
    yes:setFillColor(0,0.5,0)
    local yestext = display.newText("YES",300, 550, native.systemFont, 15)
    yestext.rotation = 90
    local cancel = display.newRect(300,780, 50,150)
    cancel:setFillColor(1,0,0)
    local canceltext = display.newText("CANCEL", 300, 780, native.systemFont, 15)
    canceltext.rotation = 90
end
cs:addEventListener( "tap", tapCSIcon )

--Business Student--
local business = display.newImageRect("001-briefcase.png",60,60)
business.x = 200
business.y = 450
business:toFront()


local function tapBusinessIcon(event)
    business.alpha = 0.5
    question = display.newRect(display.contentCenterX,display.contentCenterY, 400, 700)
    question:setFillColor(0,0,0.5);
    myText = display.newText( "Would you like to go to the Business Administration Building?", display.contentCenterX, display.contentCenterY, native.systemFont, 25 )
    myText.rotation = 90
    local yes = display.newRect(300,550,50,150)
    yes:setFillColor(0,0.5,0)
    local yestext = display.newText("YES",300, 550, native.systemFont, 15)
    yestext.rotation = 90
    local cancel = display.newRect(300,780, 50,150)
    cancel:setFillColor(1,0,0)
    local canceltext = display.newText("CANCEL", 300, 780, native.systemFont, 15)
    canceltext.rotation = 90
end
business:addEventListener( "tap", tapBusinessIcon )
