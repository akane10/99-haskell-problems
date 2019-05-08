module Repli where

repli :: [a] -> Int -> [a]
repli xs n = let x = map (\y -> take n (repeat y)) xs in foldr (++) [] x
