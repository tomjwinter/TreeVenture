t = {}

quizNumber = 0
local currentImage = nil

-- create the list of quiz questions
local quiz = {
  { image = "Graphics/RedApple(Leaves).png", clickOn = "Leaves" },
  { image = "Graphics/RedApple(Bark).png", clickOn = "Bark" },
  { image = "Graphics/RedApple(Trunk).png", clickOn = "Trunk" },
  { image = "Graphics/RedApple(Branch).png", clickOn = "Branches" },
  { image = "Graphics/RedApple(Roots).png", clickOn = "Roots" },
  { image = "Graphics/RedAppleQRoots.png", clickOn = "Roots" },
  { image = "Graphics/RedAppleQLeaves.png", clickOn = "Leaves" },
  { image = "Graphics/RedAppleQBranches.png", clickOn = "Branches" },
  { image = "Graphics/RedAppleQTrunk.png", clickOn = "Trunk" },
  { image = "Graphics/RedAppleQRoots2.png", clickOn = "Roots" },
  { image = "Graphics/RedAppleQBark.png", clickOn = "Bark"},
  { image = "Graphics/RedAppleQLeaves2.png", clickOn = "Leaves" },
  { image = "Graphics/RedAppleQBranches2.png", clickOn = "Branches" },
  { image = "Graphics/RedAppleQBark2.png", clickOn = "Bark"},
  { image = "Graphics/RedAppleQTrunk2.png", clickOn = "Trunk" }
}

function nextQuiz()
  quizNumber = quizNumber + 1
  if quizNumber <= #quiz then
    -- if there are still more quiz questions, display the next one
    currentImage = display.newImage( quiz[quizNumber].image )
    currentImage.x = 150; currentImage.y = 360
    currentImage.width = 200; currentImage.height = 200
  else
    -- no more questions. done with quiz.
    wayToGo = display.newText( text.wayToGo, 250, 400, "Arial", 40)
    wayToGo:setFillColor( 0, 0, 0 )
  end
end

function correctTap( event )
  if quizNumber <= #quiz and
     quiz[quizNumber].clickOn == event.target.item then
    -- cause the apple to drop and then display the next quiz
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
  
  -- Add Bark image
  local Bark = display.newImage(group, "Graphics/IRLBark.png" )
  Bark.x = 950 Bark.y = 540
  Bark.width = 180 Bark.height = 190

  -- Add the tap rectangles for the tree
  -- Leaves
  local leaves1 = display.newRect ( 800, 180, 450, 180 )
  leaves1:setFillColor( 0, 0, 1, .2 )
  leaves1:addEventListener( "tap", correctTap )
  leaves1.item = "Leaves"
  
  local leaves2 = display.newRect ( 970, 360, 120, 180 )
  leaves2:setFillColor( 0, 0, 1, .2 )
  leaves2:addEventListener( "tap", correctTap )
  leaves2.item = "Leaves"

  local leaves3 = display.newRect ( 610, 380, 80, 220 )
  leaves3:setFillColor( 0, 0, 1, .2 )
  leaves3:addEventListener( "tap", correctTap )
  leaves3.item = "Leaves"

  -- Branches
  local branches = display.newRect ( 780, 340, 260, 140 )
  branches:setFillColor( 0, 0, 1, .2 )
  branches:addEventListener( "tap", correctTap )
  branches.item = "Branches"
  
  -- Trunk
  local trunk = display.newRect ( 800, 520, 170, 220 )
  trunk:setFillColor( 0, 0, 1, .2 )
  trunk:addEventListener( "tap", correctTap )
  trunk.item = "Trunk"
  
  -- Bark
  Bark:addEventListener( "tap", correctTap )
  Bark.item = "Bark"

  -- Roots
  local roots = display.newRect ( 800, 670, 300, 80 )
  roots:setFillColor( 0, 0, 1, .2 )
  roots:addEventListener( "tap", correctTap )
  roots.item = "Roots"

end

return t