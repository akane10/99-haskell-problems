module IsPrime' where

isPrime' :: Int -> Bool
isPrime' n
  | n <= 3 = n > 1
  | n `mod` 2 == 0 || n `mod` 3 == 0 = False
  | otherwise = lol
  where lol = (length $ filter (\x -> n `mod` x == 0 || n `mod` (x+2) == 0) [5,11..(n*n)]) >= 0
