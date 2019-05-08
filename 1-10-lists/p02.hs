module MyButLast where

myButLast :: [a] -> a
myButLast [x     ] = x
myButLast (x : xs) = head . tail . reverse $ xs
