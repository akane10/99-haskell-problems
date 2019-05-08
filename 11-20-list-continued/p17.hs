module Split where

split :: [a] -> Int -> ([a], [a])
split xs n =
  let x = take n xs
      y = drop n xs
  in  (x, y)
