t = {}

function t.open()
local group = display.newGroup()
  local play = display.newImage(group, "Graphics/Tree Game Background.jpg" )
  play.x = 512; play.y = 384
  play.width = 1024; play.height = 768
  play.alpha = 0
  transition.fadeIn( play )
   local tree = display.newImage(group, "Graphics/Transparent Tree.png" )
  tree.x = 800; tree.y = 400
  tree.width = 520; tree.height = 620
  local branch = display.newImage(group, "Graphics/Tap The Blank.png" )
  branch.x = 150; branch.y = 250
  branch.width = 350; branch.height = 375
  local backpack = display.newImage(group, "Graphics/BackPack for collecting apple minigame.png" )
  backpack.x = 250; backpack.y = 600
  backpack.width = 800; backpack.height = 425
  local branchapple = display.newText(group,"Branch" , 176, 300, "Arial", 40 )
  branchapple:setFillColor( 0, 0, 0 )
  local leaves = display.newRect ( 800, 200, 450, 200 )
  leaves:setFillColor( 0, 0, 1, .2 )
  
  --local a = branchapple
  --if a = branchapple then
    
end

  return t