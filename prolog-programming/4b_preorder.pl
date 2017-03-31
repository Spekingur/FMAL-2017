preorder(nil,[]).
preorder(t(X,LeftT,RightT),[X|Lis]):- preorder(LeftT,LeftLis), preorder(RightT,RightLis), append(LeftLis,RightLis,Lis).