module DropEvery where

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery _  0 = []
dropEvery xs n =
  let x = take (n - 1) xs
      y = drop n xs
  in  x ++ dropEvery y n
