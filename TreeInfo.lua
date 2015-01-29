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
  tree.x = 675; tree.y = 384
  tree.width = 700; tree.height = 700
  
  --Adds a rectangle for the word roots
  -- and sets the size and location
  local rootsBox = display.newRect(group, 200, 715, 300, 75 )
  
  --Adds a rectangle for the word trunk
  -- and sets the size and location
  local trunkBox = display.newRect(group, 200, 600, 300, 75 )
  
  --Adds a rectangle for the bark word
  -- and sets location and size
  local barkBox = display.newRect(group, 200, 485, 300, 75 )
 
 --Adds a rectangle for the word branches
 -- and sets the size and location
 local branchesBox = display.newRect(group, 200, 370, 300, 75 )
 
 --Adds a rectangle for the word leaves
 -- and sets the size and location
 local leavesBox = display.newRect(group, 200, 255, 300, 75 )
    end

return t