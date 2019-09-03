module InsertAt where

insertAt :: a -> [a] -> Int -> [a]
insertAt x xs n =
  let f = take (n - 1) xs
      g = drop n xs
  in  f ++ [x] ++ g
