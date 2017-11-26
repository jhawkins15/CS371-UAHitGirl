local composer = require( "composer" )
local scene = composer.newScene()
 
---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------
 
-- local forward references should go here
 
---------------------------------------------------------------------------------


local function showChargerUnion()

   local options = {
      effect = "fade",
      time = 500
   }
   composer.gotoScene("chargerunion", options)

end

-- "scene:create()"
function scene:create( event )
 
   local sceneGroup = self.view
 
   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.
end
 
-- "scene:show()"
function scene:show( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
	local background = display.newImage("chargerunion.jpg", display.contentCenterX/1.15, display.contentCenterY)
	self.view:insert(background);
	button1 = display.newRect(150,150, 200, 200)
	button1:setFillColor(0,0,1)
	self.view:insert(button1);
	text1 = display.newText("Back to main menu?",150, 150, native.systemFont, 40 )
	self.view:insert(text1);
	function onPress(event)
	if (event.phase == "ended") then
		composer.gotoScene("mainmenu");
		--button:setFillColor(1,0,0)
	--elseif (event.phase =="ended") then
		--button:setFillColor(0,0,1)
	end
end
button1:addEventListener("touch", onPress)
	end
	button = display.newRect(display.contentCenterX, display.contentCenterY, 200, 200)
	button:setFillColor(0,0,1)
	self.view:insert(button);
	text = display.newText("map", display.contentCenterX, display.contentCenterY, native.systemFont, 40 )
	self.view:insert(text);
	function onPress(event)
	if (event.phase == "ended") then
		composer.gotoScene("map");
		--button:setFillColor(1,0,0)
	--elseif (event.phase =="ended") then
		--button:setFillColor(0,0,1)
	end
end
button:addEventListener("touch", onPress)
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