t = {}

function t.open()
  print("HI")
  local group = display.newGroup()
  local play = display.newImage(group, "Graphics/Playing Screen.jpg" )
  play.x = 512; play.y = 384
  play.width = 1024; play.height = 768
  play.alpha = 0
  transition.fadeIn( play )
end

return t