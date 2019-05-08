module Pack where

-- pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
-- ["aaaa","b","cc","aa","d","eeee"]
import           Data.List

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack xs = group (foldr (:) [] xs)
