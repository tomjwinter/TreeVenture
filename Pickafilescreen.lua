local t = {}

function t.open()
  local group = display.newGroup()
  local file = display.newImage(group, "Graphics/Pick a File Screen.jpg" )
  file.x = 512; file.y = 384
  file.width = 1024; file.height = 768
  file.alpha = 0
  transition.fadeIn( file )
  local backButton = display.newRect(group, 940, 70, 150, 64 )
  backButton : setFillColor( 0, 0, 1, 0.2 )
  function backPress()
    startScreen.open()
    group:removeSelf()
  end
  backButton:addEventListener( "tap", backPress )
  local treeButton2 = display.newRect(group, 475, 465, 225, 500 )
  treeButton2 : setFillColor( 0, 0, 1, 0.2 )
  function treePress()
    genderScreen.open()
    group:removeSelf()
  end
  treeButton2:addEventListener( "tap", treePress )
end

return t