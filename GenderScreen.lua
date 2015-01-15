t = {}

function t.open()
  local group = display.newGroup()
  local gender = display.newImage(group, "Graphics/Character Screen.jpg" )
  gender.x = 512; gender.y = 384
  gender.width = 1024; gender.height = 768
  gender.alpha = 0
  transition.fadeIn( gender )
  
  local boyButton = display.newRect(group, 222, 440, 280, 335 )
  boyButton:setFillColor( 0, 0, 0.6, 0.2 )
  function boyPress()
    playingScreen.open()
    group:removeSelf()
  end
  boyButton:addEventListener( "tap", boyPress )
  
  local girlButton = display.newRect(group, 777, 440, 250, 300 )
  girlButton:setFillColor( 0, 0, 0.6, 0.2 )
  function girlPress()
    playingScreen.open()
    group:removeSelf()
  end
  girlButton:addEventListener( "tap", girlPress )
end
return t