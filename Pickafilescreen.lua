local t = {}

function t.open()
  
  --Displays pick a file screen 
  -- and sets the location and size
  local group = display.newGroup()
  local file = display.newImage(group, "Graphics/Pick a File Screen.jpg" )
  file.x = 512; file.y = 384
  file.width = 1024; file.height = 768
  file.alpha = 0
  transition.fadeIn( file )
  
  --Displays back button
  -- and sets location and size
  local backButton = display.newRect(group, 940, 70, 150, 64 )
  backButton : setFillColor( 0, 0, 1, 0.2 )
  
  --This creates a function
  -- this function tells the device to go back to the startScreen
  function backPress()
    startScreen.open()
    group:removeSelf()
  end
  
  --This tells the device to listen for a tap on the backBbutton
  -- when it gets the tap it does the backPress function
  backButton:addEventListener( "tap", backPress )
  
  --This creates a rectangle for tree one
  -- and it sets the size, color, and location
  local treeButton1 = display.newRect(group, 150, 300, 225, 500 )
  treeButton1 : setFillColor( 0, 0, 1, 0.2 )
  
  --This creates a rectangle for tree two
  -- and sets the size, color, and location
  local treeButton2 = display.newRect(group, 475, 465, 225, 500 )
  treeButton2 : setFillColor( 0, 0, 1, 0.2 )
  
  --This creates a rectangle for tree three
  -- and sets the size, color, and location
  local treeButton3 = display.newRect(group, 825, 325, 225, 390 )
  treeButton3 : setFillColor( 0, 0, 1, 0.2 )
  
  --This creates a function
  -- this function tells the device to go to the genderScreen
  function treePress()
    genderScreen.open()
    group:removeSelf()
  end
  
  --This tells the device to listen for a tap on tree one
  -- when it gets the tap it does the treePress function
  treeButton1:addEventListener( "tap", treePress )
 
  --This tells the device to listen for a tap on tree two
  -- when it gets the tapit does the treePress function
  treeButton2:addEventListener( "tap", treePress )
  
  --This tells the device to listen for a tap on tree three
  -- when it gets the tap it does the treePress function
  treeButton3:addEventListener( "tap", treePress )
end

return t