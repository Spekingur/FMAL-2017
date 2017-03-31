binaryTree(nil).
binaryTree(t(_,LeftT,RightT)) :- binaryTree(LeftT), binaryTree(RightT).