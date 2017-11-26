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

function scene:create( event )
 
   local sceneGroup = self.view
 
   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.
end
 
function scene:show(event)
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
		local background = display.newImage( "map3.jpg", display.contentCenterX, display.contentCenterY )
		background.alpha = 0.9
		background.rotation = -90
		background:scale(1,.89)
		self.view:insert(background);

		button = display.newRoundedRect(1170, 700, 300, 85,25)
		button:setFillColor(0,0,1)
		self.view:insert(button);
		text = display.newText("Charger Union", 1170, 700, native.systemFont, 40 )
		self.view:insert(text);
		function onPress(event)
			if (event.phase == "ended") then
				composer.gotoScene("chargerunion");
			end
		end
		button:addEventListener("touch", onPress)
	end
	
	--Nursing Student--
	local nurse = display.newImageRect("009-nurse.png",60,60)
	nurse.x = 325
	nurse.y = 360
	self.view:insert(nurse);
	nurse:toFront()
	local function tapNurseIcon(event)
	
		question = display.newRoundedRect(display.contentCenterX,display.contentCenterY, 100, 550,25)
		question:setFillColor(0,0,1);
		question.rotation = -90
		self.view:insert(question);
		question:toFront()
		myText = display.newText( "Would you like to go to the Nursing Building?", display.contentCenterX, display.contentCenterY, native.systemFont, 25 )
		self.view:insert(myText);
		myText:toFront()
		local yes = display.newRoundedRect(500,500,50,150,10)
		yes:setFillColor(0,1,0)
		yes.rotation = -90
		self.view:insert(yes);
		yes:toFront()
		function toNursing(event)
			if (event.phase == "ended") then
				composer.gotoScene("nursing");
			end
		end
		yes:addEventListener("touch", toNursing)
		local yestext = display.newText("YES",500, 500, native.systemFont, 15)
		self.view:insert(yestext);
		yestext:toFront()
		local cancel = display.newRoundedRect(835,500, 50,150,10)
		cancel.rotation = -90
		self.view:insert(cancel);
		cancel:toFront()
		cancel:setFillColor(1,0,0)
		function removeCancel(event)
			if (event.phase == "ended") then
				composer.gotoScene("map");
				
			end
		end
		cancel:addEventListener("touch", removeCancel)
		local canceltext = display.newText("CANCEL", 835, 500, native.systemFont, 15)
		self.view:insert(canceltext);
		canceltext:toFront()
	end
	nurse:addEventListener("touch", tapNurseIcon)





end

	

	  
	 
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
-----------------------------------------------------------------------


