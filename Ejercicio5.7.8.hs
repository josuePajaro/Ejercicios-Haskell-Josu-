-- Redefine la función positions usando la función find.

find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k',v) <- t, k ==k']
positions :: Eq a => a -> [a] -> [Int]
positions n xs = find n [(x,i) | (x,i) <- zip xs [0..]]