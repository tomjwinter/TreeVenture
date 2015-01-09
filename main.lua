-- Nolan Luke M. Zach G. Kate
-- Start Screen
local Pick = require "Pickafilescreen"
local Option = require "OptionsScreen"

local start = display.newImage( "Graphics/Start Screen.jpg" )
start.x = 512; start.y = 384
start.width = 1024; start.height = 768
local startButton = display.newRect( 475, 384, 355, 100 )
startButton : setFillColor( 0.9, 0, 0.2, 0.2 )
function buttonPress( )
  Pick.open()
end
startButton : addEventListener( "tap", buttonPress )
local optButton = display.newRect( 475, 545, 355, 100 )
optButton : setFillColor( 0, 0, 0.2, 0.2 )
function optPress()
  Option.open()
end
optButton : addEventListener( "tap", optPress )