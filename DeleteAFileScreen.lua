local t = {}

function t.open()
  local group = display.newGroup()
  local delete = display.newImage( group, "Graphics/Pick a File to Delete Screen - Copy.jpg" )
  delete.x = 512; delete.y = 384
  delete.width = 1024; delete.height = 768
  delete.alpha = 0
  transition.fadeIn( delete )
  local backButton = display.newRect(group, 940, 70, 150, 64 )
  backButton : setFillColor( 0, 0, 1, 0.2 )
  function backPress()
    optionsScreen.open()
    group:removeSelf()
  end
  backButton:addEventListener( "tap", backPress )
end
return t