local t = {}

function t.open()
  local group = display.newGroup()
  local opt = display.newImage( group, "Graphics/Options Screen.jpg" )
  opt.x = 512; opt.y = 384
  opt.width = 1024; opt.height = 768
  opt.alpha = 0
  transition.fadeIn( opt )
  local backButton = display.newRect(group, 100, 53, 160, 65 )
  backButton : setFillColor( 0, 0, 0.2, 0.2 )
  function backPress()
    startScreen.open()
    group:removeSelf()
  end
  backButton:addEventListener( "tap", backPress )
  local deleteButton = display.newRect(group, 470, 300, 370, 100 )
  deleteButton : setFillColor( 0, 0, 0.2, 0.2 )
  function deleteButton()
  end
end
return t