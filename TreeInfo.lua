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
  
  --Adds a rectangle for the word bark
  -- and sets location and size
  local barkBox = display.newRect(group, 200, 485, 300, 75 )
 
 --Adds a rectangle for the word branches
 -- and sets the size and location
 local branchesBox = display.newRect(group, 200, 370, 300, 75 )
 
 --Adds a rectangle for the word leaves
 -- and sets the size and location
 local leavesBox = display.newRect(group, 200, 255, 300, 75 )
 
 --Adds blank rectangle for roots
 -- and sets location and size
 local blankRootsBox = display.newRect(group, 685, 700, 300, 75 )
 
 --Adds blank rectangle for the trunk
 -- and sets location and size
 local blankTrunkBox = display.newRect(group, 700, 550, 125, 200 )
 
 --Adds blank rectangle for bark
 -- and sets the location and size
 local blankBarkBox = display.newRect(group, 900, 550, 225, 75 )
 
 --Adds blank rectangle for branches
 -- and sets the location and size
 local blankBranchesBox = display.newRect(group, 675, 275, 200, 90 )
 
 --Adds a blank rectangle for leaves
 -- and sets the location and size
 local blankLeavesBox = display.newRect(group, 850, 150, 250, 75 )
 
 --Displays the word roots in the box
 -- and sets the size, font, and location
 local wordRoot = display.newText(group,"Roots" , 200, 600, "Arial", 60 )
 wordRoot:setFillColor( 0, 0, 0 )
 
 --Displays the word trunk
 -- and sets the size, font, and color
 local wordTrunk = display.newText(group,"Trunk" , 200, 255, "Arial", 60 )
 wordTrunk:setFillColor( 0, 0, 0 )
 
 --Displays the word bark
 -- and sets the size, font, and location
 local wordBark = display.newText(group,"Bark" , 200, 370, "Arial", 60 )
 wordBark:setFillColor( 0, 0, 0 )

--Displays the word branches
-- and sets the size, font, and color
local wordBranches = display.newText(group,"Branches" , 200, 715, "Arial", 60 )
wordBranches:setFillColor( 0, 0, 0 )

--Displays the word leaves
-- and sets the size, font, and color
local wordLeaves = display.newText(group,"Leaves" , 200, 485, "Arial", 60 )
wordLeaves:setFillColor( 0, 0, 0 )
   end

return t