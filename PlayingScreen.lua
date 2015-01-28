t = {}

function t.open()
  
  --Makes the Tree Game Backround appear on the screen
  -- and sets the location and size
  local group = display.newGroup()
  local play = display.newImage(group, "Graphics/Tree Game Background.jpg" )
  play.x = 512; play.y = 384
  play.width = 1024; play.height = 768
  play.alpha = 0
  transition.fadeIn( play )
  
  --Create an image of your character
  -- and set the location and size
  local boy = display.newImage(group, "Graphics/Boy.png" )
  boy.x = 210; boy.y = 350
  boy.width = 100; boy.height = 190
  
  --Create an image of the D-Pad
  -- and set the location and size
  local dPad = display.newImage(group, "Graphics/D-Pad.png" )
  dPad.x = 100; dPad.y = 675
  dPad.width = 225; dPad.height = 275
  
  --Create an image of the backpack
  -- and set the location and size
  local backpack = display.newImage(group, "Graphics/Backpack.png")
  backpack.x = 775; backpack.y = 670
  backpack.width = 200; backpack.height = 200
  
  --Create an image of the journal
  -- and set the location and size
  local journal = display.newImage(group, "Graphics/Journal.png")
  journal.x = 945; journal.y = 660
  journal.width = 170; journal.height = 170
  
  --Creates the image of the tree
  -- and sets location and size
  local tree = display.newImage(group, "Graphics/Transparent Tree.png" )
  tree.x = 750; tree.y = 350
  tree.width = 300; tree.height = 330
  
  --This creates a function
  -- this function tells the device to open the treeInfo screen
  function treePress()
    treeInfo.open()
    group:removeSelf()
  end
  
  --This tells the device to listen for a tap on the tree
  -- when it gets the tap it does the treePress function
  tree:addEventListener( "tap", treePress )
  
  --This displays a new rectangle for the journal
  -- and sets the size, color, and location
  local journalButton = display.newRect(group, 945, 660, 130, 160 )
  journalButton:setFillColor( 0, 0, 0.6, 0.2 )
  
  --This creates a function
  -- this function tells the device to open the journal screen
  function journalPress()
    journalScreen.open()
    --group:removeSelf()
  end
  
  --This tells the device to listen for a tap
  -- when it gets the tap it does the journalPress function
  journalButton:addEventListener( "tap", journalPress )
  
  --This displays a rectangle for the hunger bar
  local hungerBar = display.newRect(group, 280, 660, 150, 40 )
  local paint = { 0, 0, 0 }
  hungerBar.stroke = paint
  hungerBar.strokeWidth = 4
  hungerBar:setFillColor( 0, 0, 0, 0 )
  
  --This displays a rectangle for the building bar
  local buildingBar = display.newRect(group, 440, 730, 150, 40) 
  local paint = { 0, 0, 0 }
  buildingBar.stroke = paint
  buildingBar.strokeWidth = 4
  buildingBar:setFillColor( 0, 0, 0, 0 )
  
  --This displays a rectangle for the weight bar
  local weightBar = display.newRect(group, 600, 660, 150, 40)
  local paint = { 0, 0, 0 }
  weightBar.stroke = paint
  weightBar.strokeWidth = 4
  weightBar:setFillColor( 0, 0, 0, 0 )
  
end

return t