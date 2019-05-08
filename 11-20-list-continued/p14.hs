module Dupli where

dupli :: [a] -> [a]
dupli xs = concat (map (\x -> x : x : []) xs)
