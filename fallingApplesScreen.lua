t = {}

function t.open()
  
local group = display.newGroup()
  local background = display.newImage(group, "Graphics/Tree Game Background.jpg" )
  background.x = 512; background.y = 384
  background.width = 1024; background.height = 768
  background.alpha = 0
  transition.fadeIn( background )
  end

return t