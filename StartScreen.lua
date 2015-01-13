local t = {}

function t.open()
  local group = display.newGroup()
  local start = display.newImage( group, "Graphics/Start Screen.jpg" )
  start.x = 512; start.y = 384
  start.width = 1024; start.height = 768
  local startButton = display.newRect( group, 475, 384, 355, 100 )
  startButton : setFillColor( 0, 0, 0.2, 0.2 )
  function buttonPress()
    pickScreen.open()
    group:removeSelf()
  end
  startButton : addEventListener( "tap", buttonPress )
  local optButton = display.newRect( group, 475, 545, 355, 100 )
  optButton : setFillColor( 0, 0, 0.2, 0.2 )
  function optPress()
    optionsScreen.open()
    group:removeSelf()
  end
  optButton : addEventListener( "tap", optPress )

end
return t