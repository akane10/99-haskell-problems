module Rotate where

-- rotate xs n =
--   let x = take n xs
--       y = drop n xs
--   in  y ++ x

rotate :: [a] -> Int -> [a]
rotate xs n
  | n > 0
  = let x = take n xs
        y = drop n xs
    in  y ++ x
  | otherwise
  = let x = (n) + (length xs)
        y = drop x xs
        z = take x xs
    in  y ++ z
