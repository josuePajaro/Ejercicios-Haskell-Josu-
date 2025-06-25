init' :: (Num a) => [a] -> [a]
init' xs = take (length xs -1) xs
init'' :: (Num a) => [a] -> [a]
init'' xs = reverse (tail (reverse xs))