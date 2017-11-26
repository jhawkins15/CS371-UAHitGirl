local composer = require( "composer" )
local scene = composer.newScene()
 
---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------
 
-- local forward references should go here
 
---------------------------------------------------------------------------------


local function showNursing()

   local options = {
      effect = "fade",
      time = 500
   }
   composer.gotoScene("nursing", options)

end


function scene:create( event )
 
   local sceneGroup = self.view
 
   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.
end
 

function scene:show( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
	print("we made it234")
	local background = display.newImage("nursing.jpg", display.contentCenterX, display.contentCenterY)
	background:scale(1.27,1.15)
	local nurse = display.newImage("nursenormal.png",130, 585)
	local speechbubble = display.newImage("speechbubble.png", 675, 300)
	speechbubble:scale(1.3,.7)
	speechbubble.alpha = 0.85
	--local speechtext= display.newText("Do some fucking work, Hawkins", 492, 838, native.systemFont, 21 )
	--speechtext:setFillColor(0,0,0)
	
	local options = 
{
    text = "I’m sorry, I find it very hard to believe that you, a total stranger, legitimately give a s**t about what I’ve got going on right now, and also I’m picking up some serious Weinstein vibes from you right now… Ok look, that was kind of harsh. I tell you what if you can answer this question correctly, which based how big of a dunce you look like asking a random nursing student on her way to class “Do you wanna talk about it” I’d be pretty surprised if you did, MAYBE we can talk about it sometime later.",
    x = 675,
    y = 300,
    width = 500,
    font = native.systemFont,   
    fontSize = 20,
    --align = "right"  -- Alignment parameter
}
 
local myText = display.newText( options )
myText:setFillColor( 0, 0, 0 )
	--self.view:insert(nursingbg);
	--button1 = display.newRect(150,150, 200, 200)
	--button1:setFillColor(0,0,1)
	--self.view:insert(button1);
	--text1 = display.newText("Back to main menu?",150, 150, native.systemFont, 40 )
	--self.view:insert(text1);
	--function onPress(event)
	--if (event.phase == "ended") then
		--composer.gotoScene("mainmenu");
		--button:setFillColor(1,0,0)
	--elseif (event.phase =="ended") then
		--button:setFillColor(0,0,1)
	--end
--end
--button1:addEventListener("touch", onPress)
	--end
	--button = display.newRect(display.contentCenterX, display.contentCenterY, 200, 200)
	--button:setFillColor(0,0,1)
	--self.view:insert(button);
	--text = display.newText("map", display.contentCenterX, display.contentCenterY, native.systemFont, 40 )
	--self.view:insert(text);
	--function onPress(event)
	--if (event.phase == "ended") then
		composer.gotoScene("map");
		--button:setFillColor(1,0,0)
	--elseif (event.phase =="ended") then
		--button:setFillColor(0,0,1)
	--end
--end
--button:addEventListener("touch", onPress)
	end
end 

	  
	  -- "scene:hide()"
function scene:hide( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is on screen (but is about to go off screen).
      -- Insert code here to "pause" the scene.
      -- Example: stop timers, stop animation, stop audio, etc.
   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
   end
end
 
-- "scene:destroy()"
function scene:destroy( event )
 
   local sceneGroup = self.view
 
   -- Called prior to the removal of scene's view ("sceneGroup").
   -- Insert code here to clean up the scene.
   -- Example: remove display objects, save state, etc.
end
 
---------------------------------------------------------------------------------
 
-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
 
---------------------------------------------------------------------------------
 
return scene