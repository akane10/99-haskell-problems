module Slice where

slice :: [a] -> Int -> Int -> [a]
slice xs n1 n2 = take (n2 - n1 + 1) (drop (n1 - 1) xs)
