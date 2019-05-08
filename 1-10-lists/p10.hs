module Encode where

import           Data.List

encode :: Eq a => [a] -> [(Int, a)]
encode xs =
  let l = map (\x -> length x) (group xs)
      z = map (head) (group xs)
  in  zip l z
