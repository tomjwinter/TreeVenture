function t.open()
local group = display.newGroup()
local background = display.newImage(group, "Graphics/Saving Screen.jpg" )
background.x = 512; background.y = 384
background.width = 1024; background.height = 768
background.alpha = 0
transition.fadeIn( background )
function doneSaving()
  playingScreen.open()
  group:removeSelf()
end
local timer = timer.performWithDelay( 1000, doneSaving )

end

  return t