module RemoveAt where

removeAt :: Int -> [a] -> (a, [a])
removeAt n xs =
  let g = head (drop (n - 1) xs)
      h = drop n xs
      j = take (n - 1) xs
  in  (g, j ++ h)
