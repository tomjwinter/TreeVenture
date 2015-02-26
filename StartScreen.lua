--Create an empty table
local t = {}

--Define function to open the start screen
function t.open()
  --Creates a holding bin for graphical objects
  local group = display.newGroup()
  
  --Create an image from Start Screen.jpg,
  -- Display that image on the screen,
  -- Put it in the holding bin group,
  -- and assign it to a varible called backgroundImage
  local backgroundImage = display.newImage( group, "Graphics/Start Screen.png" )

  --Assign the location of the center of the image
  backgroundImage.x = 512; backgroundImage.y = 383
  
  --Assign the width and high so the background image fills the screen
  backgroundImage.width = 1024; backgroundImage.height = 768
  
  --Create a rectangle (to be used as a button),
  -- centers it at (475, 384),
  -- sets its size to (355, 100),
  -- Display that rectangle on the screen,
  -- Put it in the holding bin group,
  -- and assign it to a variable called startButton
  local startButton = display.newRect( group, 475, 384, 355, 100 )
  
  --Assign the button's fill color
  -- to be 0% red, 0% green, 20% blue
  -- and 20 % transparent (alpha)
  startButton : setFillColor( 0, 0, 0.2, 0.2 )
  
  function buttonPress()
    pickScreen.open()
    group:removeSelf()
  end
  startButton : addEventListener( "tap", buttonPress )
  local optButton = display.newRect( group, 475, 545, 355, 100 )
  optButton : setFillColor( 0, 0, 0.2, 0.2 )
  function optPress()
    optionsScreen.open()
    group:removeSelf()
  end
  optButton : addEventListener( "tap", optPress )

end
return t