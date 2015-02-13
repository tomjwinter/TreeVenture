local t = {}

function t.open()
  
  local group = display.newGroup()
  
  --Creates the sound screen and 
  --sets its size and cordinates
  local sound = display.newImage( group, "Graphics/Tree Game Background.jpg" )
  sound.x = 512; sound.y = 384
  sound.width = 1024; sound.height = 768
  sound.alpha = 0
  transition.fadeIn( sound )
  
  --Creates the back button and
  --sets its size, color, and cordinates
  local backButton = display.newRect(group, 900, 60, 210, 100 )
  backButton : setFillColor( 0, 0, 0.2, 0.2 )
  
  -- This creates a function that
  --opens the options screen
  function backPress()
    optionsScreen.open()
    group:removeSelf()
  end
  
  --This adds and event listener that
  --when backButton is tapped it calls the function backPress
  backButton:addEventListener( "tap", backPress )
   local sownd = display.newImage(group, "Graphics/SoundScreen.png" )
  sownd.x = 512; sownd.y = 384
  sownd.width = 1200; sownd.height = 800
  end
  

return t