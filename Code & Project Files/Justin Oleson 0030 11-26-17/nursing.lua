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

nursetextarray = {}
nursetextarray[1] = "Why? Why did I ever think that I wanted to become a nurse?! Who said this would be a good idea? My friends tell me that you have to be pretty smart and with it to get through nursing school but I feel more like a moron each day that goes by that I don’t drop out and major in accounting. Or there’s always the Pony…"
nursetextarray[2] = "Oh, excuse me please… why aren’t you moving… (he’s LOOKING AT ME)…I really need to get going to my next class, can I help you?"
nursetextarray[3] = "I’m sorry, I find it very hard to believe that you, a total stranger, legitimately give a s**t about what I’ve got going on right now, and also I’m picking up some serious Weinstein vibes from you right now… Ok look, that was kind of harsh. I tell you what if you can answer this question correctly, which based how big of a dunce you look like asking a random nursing student on her way to class “Do you wanna talk about it” I’d be pretty surprised if you did, MAYBE we can talk about it sometime later."
nursetextarray[4] = "You want to know what it’s like? I’ve got 4 tests next week, clinicals are coming up, I’m trying to find a job, the realization that if I don’t learn this material correctly PEOPLE COULD DIE is absolutely ever present in my mind, and my social life is completely non-existent. Does that about cover it? Oh and I have to constantly remind myself not to drink bleach."
nursetextarray[5] = "Ok that was harsh… I can tell you this, right now I’m going over quiz questions in my mind. You want a sample of what nursing school is like? See if you can answer this correctly. 3. Seriously? Like, for real? On what planet did you think something like that would ever work? Anatomy and French… subtle, real subtle. How about we study spelling instead—I’ll go first: G-O P-L-A-Y I-N T-R-A-F-F-I-C"
nursetextarray[6] = "Well, seeing as how you're interested in the mind of a nursing student, I'll ask you a question from the quiz I'm studying for. If you get it right, I'll be seriously impressed, but also attribute it to blind luck. Anyway, here it is:An infant is being prepared for surgical repair of a ventricular septal defect (VSD). Which of the following problems will be prevented by closing the defect?"
nursetextarray[7] = "Wrong! Better luck next time you strange, poor soul. I’ve got to go to class. See you around maybe, that is if you aren’t too busy stopping random girls outside of the nursing building… "
nursetextarray[8] = "Holy f***, you got it right! Look I have to get to class but if you want maybe we can meet up again sometime to talk more about trying to have a life while in nursing school? Or maybe we can you know, talk about not-school, because that would be nice too. I’ll see you around!"

function scene:create( event )
 
   local sceneGroup = self.view
   nurseMusic = audio.loadStream("titleMusic.wav");
   audio.play(titleMusic, { channel = 2, loops =- 1, fadein = 500 });
 
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
	
	--local speechtext= display.newText("Do some fucking work, Hawkins", 492, 838, native.systemFont, 21 )
	--speechtext:setFillColor(0,0,0)
	
	local options = 
{
    text = "Why? Why did I ever think that I wanted to become a nurse?! Who said this would be a good idea? My friends tell me that you have to be pretty smart and with it to get through nursing school but I feel more like a moron each day that goes by that I don’t drop out and major in accounting. Or there’s always the Pony…",
    x = 675,
    y = 300,
    width = 500,
    font = native.systemFont,   
    fontSize = 20,
    --align = "right"  -- Alignment parameter
}




local myText = display.newText( options )
myText:setFillColor( 0, 0, 0 )

local speechbubble = display.newImage("speechbubble.png", 675, 300)
	speechbubble:scale(1.3,.7)
	speechbubble.alpha = 0.85
	
myText:toFront()
function onPress(event)
	if (event.phase == "ended") then
		--display.remove(speechbubble)
		display.remove(myText)
		
		
		
		--moreText()
		
	end
end
speechbubble:addEventListener("touch", onPress)







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