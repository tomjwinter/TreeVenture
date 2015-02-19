t = {}


quizNumber = 0
print( quizNumber )
local currentImage = nil
local quiz = {
  { image = "Graphics/RedApple(Leaves).png", clickOn = "Leaves" },
  { image = "Graphics/RedApple(Bark).png", clickOn = "Bark" },
  { image = "Graphics/RedApple(Trunk).png", clickOn = "Trunk" }
}
function nextQuiz()
  quizNumber = quizNumber + 1
  print( quizNumber )
  print( quiz[quizNumber].image )
  currentImage = display.newImage( quiz[quizNumber].image )
  currentImage.x = 150; currentImage.y = 360
  currentImage.width = 200; currentImage.height = 200
end
function correctTap( event )
  if quiz[quizNumber].clickOn == event.target.item then
    transition.to( currentImage, { time=500, alpha=0, y=(currentImage.y+200), onComplete=nextQuiz } )
  end
end
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
  local branch = display.newImage(group, "Graphics/Tap The BRANCH.png" )
  branch.x = 150; branch.y = 250
  branch.width = 350; branch.height = 375
  nextQuiz()
  local backpack = display.newImage(group, "Graphics/BackPack for collecting apple minigame.png" )
  backpack.x = 250; backpack.y = 600
  backpack.width = 800; backpack.height = 425
  local leaves1 = display.newRect ( 800, 180, 450, 175 )
  leaves1:setFillColor( 0, 0, 1, .2 )
  leaves1:addEventListener( "tap", correctTap )
  leaves1.item = "Leaves"
  
  --local a = branchapple
  --if a = branchapple then
    
end

  return t