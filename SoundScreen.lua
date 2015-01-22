local t = {}

function t.open()
  local group = display.newGroup()
  local sound = display.newImage( group, "Graphics/soundscreenlolprototype.png" )
  sound.x = 512; sound.y = 384
  sound.width = 1024; sound.height = 768
  sound.alpha = 0
  transition.fadeIn( sound )
end
return t