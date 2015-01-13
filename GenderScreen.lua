t = {}

function t.open()
  local group = display.newGroup()
  local gender = display.newImage(group, "Graphics/Character Screen.jpg" )
   gender.x = 512; gender.y = 384
  gender.width = 1024; gender.height = 768
  gender.alpha = 0
  transition.fadeIn( gender )
end

return t