module MyLength where

-- Find the number of elements of a list.

myLength :: [a] -> Int
myLength xs = sum [ 1 | _ <- xs ]

myLength' :: [a] -> Int
myLength' []       = 0
myLength' (_ : xs) = 1 + myLength' xs
