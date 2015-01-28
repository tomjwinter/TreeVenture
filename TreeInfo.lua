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
  -- and sets the size and location
  local tree = display.newImage(group, "Graphics/Transparent Tree.png" )
  tree.x = 612; tree.y = 384
  tree.width = 800; tree.height = 750
  
  --Adds a rectangle
  -- and sets the size and location
  local rootsBox = display.newRect(group, 635, 715, 315, 60 )
end

return t