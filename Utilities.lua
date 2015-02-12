local t = {}

function bar( percent, Rcolor, Gcolor, Bcolor, name, x, y )
  local size = ( percent * 147 / 100 )
  name = display.newRect( x, y, size, 37 )
  name:setFillColor( Rcolor, Gcolor, Bcolor )
end

function overlap(object1, object2)
  return (object2.x - object2.width/2 < object1.x + object1.width/2 and object2.x + object2.width/2 > object1.x - object1.width/2 and object2.y - object2.height/2 < object1.y + object1.height/2 and object2.y + object2.height/2 > object1.y - object1.height/2 );
end
return t