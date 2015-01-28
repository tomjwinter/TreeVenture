t = {}

function t.open()
  --displays the gender screen
  --and sets its size and cordinates
  local group = display.newGroup()
  local gender = display.newImage(group, "Graphics/Character Screen.jpg" )
  gender.x = 512; gender.y = 384
  gender.width = 1024; gender.height = 768
  gender.alpha = 0
  transition.fadeIn( gender )
  
  --this displays the boy button
  --and sets its size, color, and cordinates
  local boyButton = display.newRect(group, 222, 440, 280, 335 )
  boyButton:setFillColor( 0, 0, 0.6, 0.2 )
  
  --creates a function that opens the playing screen
  function boyPress()
    playingScreen.open()
    group:removeSelf()
  end
  
  --adds a eventlistener that when you tap boyButton
  --it calls the function boyPress
  boyButton:addEventListener( "tap", boyPress )
  
  --this displays the girl button
  --and sets its size, color, and cordinates
  local girlButton = display.newRect(group, 777, 440, 250, 300 )
  girlButton:setFillColor( 0, 0, 0.6, 0.2 )
  
  --this creates a function that opensthe playing screen
  function girlPress()
    playingScreen.open()
    group:removeSelf()
  end
  
  --adds an eventlistener that when you tap girlButton
  --it calls the function girlPress
  girlButton:addEventListener( "tap", girlPress )
end
return t