t = {}

function t.open()
  --Creates a group
  local group = display.newGroup()
  
  --Displays the background
  local background = display.newImage(group, "Graphics/Tree Game Background.jpg" )
  
  --Centers the background and resizes it
  background.x = 512; background.y = 384
  background.width = 1024; background.height = 768
  
  --Adds a transition to the screen
  background.alpha = 0
  transition.fadeIn( background )
  
  --Adds Tree
  local tree = display.newImage(group, "Graphics/Transparent Tree.png" )
  tree.x = 512; tree.y = 384
  tree.width = 950; tree.height = 750
end

return t