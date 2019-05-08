module MyLast where

myLast :: [a] -> a
myLast []       = error "No end for empty lists!"
myLast [x     ] = x
myLast (_ : xs) = myLast xs

myLast' :: [a] -> a
myLast' xs = head (reverse xs)

myLast'' :: [a] -> a
myLast'' = head . reverse
