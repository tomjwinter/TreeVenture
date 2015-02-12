t = {}

function t.open()
local group = display.newGroup()
  local background = display.newImage(group, "Graphics/Pause Screen.jpg" )
  background.x = 512; background.y = 384
  background.width = 1024; background.height = 768
  background.alpha = 0
  transition.fadeIn( background )
  local resumeButton = display.newRect( group, 550, 200, 400, 100 )
  resumeButton:setFillColor( 0, 0, 1, .5 )
  function resumePress()
    playingScreen.open()
    group:removeSelf()
end
resumeButton:addEventListener( "tap", resumePress )
local exitButton = display.newRect( group, 550, 370, 400, 100 )
  exitButton:setFillColor( 0, 0, 1, .5 )
  function exitPress()
    startScreen.open()
    group:removeSelf()
end
exitButton:addEventListener( "tap", exitPress )
end

return t