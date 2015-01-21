t = {}

function t.open()
  print("HI")
  local group = display.newGroup()
  local play = display.newImage(group, "Graphics/Tree Game Background.jpg" )
  play.x = 512; play.y = 384
  play.width = 1024; play.height = 768
  play.alpha = 0
  transition.fadeIn( play )
  local boy = display.newImage(group, "Graphics/Boy.png" )
  boy.x = 210; boy.y = 350
  boy.width = 100; boy.height = 190
  local tree = display.newImage(group, "Graphics/Transparent Tree.png" )
  tree.x = 710; tree.y = 320
  tree.width = 200; tree.height = 300
  --local treebutton = display.newRect(group, 710, 320, 200, 300 )
  --treebutton:setFillColor( 0, 0, 0.6, 0.2 )
  function treePress()
    notDone.open()
    group:removeSelf()
  end
  tree:addEventListener( "tap", treePress )
  local journalButton = display.newRect(group, 945, 660, 130, 160 )
  journalButton:setFillColor( 0, 0, 0.6, 0.2 )
  function journalPress()
    journalScreen.open()
    --group:removeSelf()
  end
  journalButton:addEventListener( "tap", journalPress )
end

return t