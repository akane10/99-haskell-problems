module ElementAt where

elementAt :: [a] -> Int -> a
elementAt (x : _ ) 0 = x
elementAt (x : _ ) 1 = x
elementAt (x : xs) n = elementAt xs (n - 1)
