t = {}

function t.open()
  local a = 0
  --Creates a group
  local group = display.newGroup()
  local check = display.newGroup()
  
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
  local rootsBox = display.newRect(group, 200, 600, 300, 75 )
  
  --Adds a rectangle for the word trunk
  -- and sets the size and location
  local trunkBox = display.newRect(group, 200, 255, 300, 75 )
  
  --Adds a rectangle for the word bark
  -- and sets location and size
  local barkBox = display.newRect(group, 200, 370, 300, 75 )
 
 --Adds a rectangle for the word branches
 -- and sets the size and location
 local branchesBox = display.newRect(group, 200, 715, 300, 75 )
 
 --Adds a rectangle for the word leaves
 -- and sets the size and location
 local leavesBox = display.newRect(group, 200, 485, 300, 75 )
 
 --Adds blank rectangle for roots
 -- and sets location and size
 local blankRootsBox = display.newRect(group, 685, 700, 300, 75 )
 
 --Adds blank rectangle for the trunk
 -- and sets location and size
 local blankTrunkBox = display.newRect(group, 500, 550, 275, 75 )
 
 --Adds blank rectangle for bark
 -- and sets the location and size
 local blankBarkBox = display.newRect(group, 875, 500, 275, 75 )
 
 --Adds blank rectangle for branches
 -- and sets the location and size
 local blankBranchesBox = display.newRect(group, 850, 275, 300, 75 )
 
 --Adds a blank rectangle for leaves
 -- and sets the location and size
 local blankLeavesBox = display.newRect(group, 850, 150, 300, 75 )
 
 --Displays the word roots in the box
 -- and sets the size, font, and location
 local wordRoot = display.newText(group,"Roots" , 200, 600, "Arial", 60 )
 wordRoot:setFillColor( 0, 0, 0 )
 wordRoot.destination = blankRootsBox
 wordRoot.origin = rootsBox
 
 --Displays the word trunk
 -- and sets the size, font, and color
 local wordTrunk = display.newText(group,"Trunk" , 200, 255, "Arial", 60 )
 wordTrunk:setFillColor( 0, 0, 0 )
 wordTrunk.destination = blankTrunkBox
 wordTrunk.origin = trunkBox
 
 --Displays the word bark
 -- and sets the size, font, and location
 local wordBark = display.newText(group,"Bark" , 200, 370, "Arial", 60 )
 wordBark:setFillColor( 0, 0, 0 )
 wordBark.destination = blankBarkBox
 wordBark.origin = barkBox

--Displays the word branches
-- and sets the size, font, and color
local wordBranches = display.newText(group,"Branches" , 200, 715, "Arial", 60 )
wordBranches:setFillColor( 0, 0, 0 )
wordBranches.destination = blankBranchesBox
wordBranches.origin = branchesBox

--Displays the word leaves
-- and sets the size, font, and color
local wordLeaves = display.newText(group,"Leaves" , 200, 485, "Arial", 60 )
wordLeaves:setFillColor( 0, 0, 0 )
wordLeaves.destination = blankLeavesBox
wordLeaves.origin = leavesBox

function wordDrag( event )
  local target = event.target
  local destination = event.target.destination
  local origin = event.target.origin
  if event.phase == "moved" then
    target.x = event.x
    target.y = event.y
  end
  if event.phase == "ended" then
   if overlap( target.destination, target ) then
    target.x = destination.x; target.y = destination.y
    target:removeEventListener( "touch", wordDrag )
    local checkbox = display.newImage( check, "Graphics/Checkmark.png" )
    checkbox.x = origin.x; checkbox.y = origin.y
    checkbox.width = 100; checkbox.height = 100
    target.alpha = 0
    origin:removeSelf()
    a = a + 1
    else
      target.x = origin.x; target.y = origin.y
   end
   if a == 5 then
    check:removeSelf()
    wordLeaves.alpha = 1
    wordBark.alpha = 1
    wordBranches.alpha = 1
    wordRoot.alpha = 1
    wordTrunk.alpha = 1
    info()
   end
   function info2( event )
    event.target.info = display.newText( text.roots, 300, 584, 500, 700, "Arial", 60 )
    event.target.info:setFillColor( 0, 0, 0 )
    end
   function info()
     local directions = display.newText( "Click on each word part to learn about it.", 512, 34, "Arial", 50 )
     directions:setFillColor( 0, 0, 0 )
      --wordLeaves:addEventListener( "tap", info2 )
      --wordBranches:addEventListener( "tap", info2 )
      --wordBark:addEventListener( "tap", info2 )
      wordRoot:addEventListener( "tap", info2 )
      --wordTrunk:addEventListener( "tap", info2 )
    end
  end
 end
 wordLeaves:addEventListener( "touch", wordDrag )
 wordBranches:addEventListener( "touch", wordDrag )
 wordBark:addEventListener( "touch", wordDrag )
 wordRoot:addEventListener( "touch", wordDrag )
 wordTrunk:addEventListener( "touch", wordDrag )
end

return t