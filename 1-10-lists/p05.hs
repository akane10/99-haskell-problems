module MyReverse where
-- Reverse a list

myReverse :: [a] -> [a]
myReverse = foldl (\acc x -> x : acc) []
