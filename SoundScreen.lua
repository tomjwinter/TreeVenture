local t = {}

function t.open()
  local group = display.newGroup()
  local sound = display.newImage( group, "Graphics/soundscreenlolprototype.png" )
  sound.x = 512; sound.y = 384
  sound.width = 1024; sound.height = 768
  sound.alpha = 0
  transition.fadeIn( sound )
  local backButton = display.newRect(group, 900, 60, 210, 100 )
  backButton : setFillColor( 0, 0, 0.2, 0.2 )
  function backPress()
    optionsScreen.open()
    group:removeSelf()
  end
  backButton:addEventListener( "tap", backPress )
end

return t