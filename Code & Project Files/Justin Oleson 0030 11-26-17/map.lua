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
	local background = display.newImageRect( "map3.jpg", display.actualContentWidth, display.actualContentHeight )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
	background.alpha = 0.9
	self.view:insert(background);
	button = display.newRect(575, 100, 400, 200)
	button:setFillColor(0,0,1)
	self.view:insert(button);
	text = display.newText("Charger Union?", 575, 100, native.systemFont, 40 )
	self.view:insert(text);
	function onPress(event)
	if (event.phase == "ended") then
		composer.gotoScene("chargerunion");
		--button:setFillColor(1,0,0)
	--elseif (event.phase =="ended") then
		--button:setFillColor(0,0,1)
	end
end
button:addEventListener("touch", onPress)
	end
	--Nursing Student--
	local nurse = display.newImageRect("009-nurse.png",120,120)
	nurse.x = 325
	nurse.y = 360
	self.view:insert(nurse);
	nurse:toFront()
	nurse.rotation = 90
	local function tapNurseIcon(event)
		--display.remove(nurse);
		--display.remove(button);
		--button:removeSelf()
		--object:remove(button);
		--button = nil
		--nurse.alpha = 0.5
		question = display.newRect(display.contentCenterX,display.contentCenterY, 400, 600)
		question:setFillColor(0,0,1);
		self.view:insert(question);
		question:toFront()
		myText = display.newText( "Would you like to go to the Nursing Building?", display.contentCenterX, display.contentCenterY, native.systemFont, 25 )
		self.view:insert(myText);
		myText:toFront()
		myText.rotation = 90
		local yes = display.newRect(300,550,50,150)
		yes:setFillColor(1,0,1)
		self.view:insert(yes);
		yes:toFront()
		function toNursing(event)
		if (event.phase == "ended") then
			composer.gotoScene("nursing");
			end
		end
		yes:addEventListener("touch", toNursing)
		local yestext = display.newText("YES",300, 550, native.systemFont, 15)
		self.view:insert(yestext);
		yestext:toFront()
		yestext.rotation = 90
		local cancel = display.newRect(300,780, 50,150)
		self.view:insert(cancel);
		cancel:toFront()
		cancel:setFillColor(0,0,1)
		function removeCancel(event)
		if (event.phase == "ended") then
			composer.gotoScene("map");
			--display.remove(question)
			--display.remove(cancel)
			--display.remove(myText)
			--display.remove(canceltext)
			--display.remove(yes)
			--display.remove(yestext)
		end
		end
		cancel:addEventListener("touch", removeCancel)
		local canceltext = display.newText("CANCEL", 300, 780, native.systemFont, 15)
		self.view:insert(canceltext);
		canceltext:toFront()
		canceltext.rotation = 90
	end
	nurse:addEventListener("touch", tapNurseIcon)
	--function onPress(event)
	--if (event.phase == "ended") then
		--composer.gotoScene("map");
		--button:setFillColor(1,0,0)
	--elseif (event.phase =="ended") then
		--button:setFillColor(0,0,1)
	--end
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
-----------------------------------------------------------------------


