module Compress where
-- Eliminate consecutive duplicates of list elements.
import           Data.List

compress :: (Eq a) => [a] -> [a]
compress []       = []
compress (x : xs) = x : (compress $ dropWhile (== x) xs)

compress' :: (Eq a) => [a] -> [a]
compress' [] = []
compress' xs = map (head) . group $ xs
