module Lfsort where

import           Data.List

lsort :: [[a]] -> [[a]]
lsort [] = []
lsort (x : xs) =
  let sm = lsort (filter (\y -> length y < length x) xs)
      bg = lsort (filter (\y -> length y >= length x) xs)
  in  sm ++ [x] ++ bg

lfsort :: [[a]] -> [[a]]
lfsort xs =
  let s   = lsort xs
      grp = groupBy (\x y -> length x == length y) s
  in  concat (lsort grp)
