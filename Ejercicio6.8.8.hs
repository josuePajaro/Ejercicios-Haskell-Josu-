{- Usando merge, defina una función msort :: Ord a => [a] -> [a] que implemente la ordenación por fusión, en la que la lista vacia
y las listas singleton ya están ordenadas, y cualquier otra lista se ordena fusionando las dos listas que resultan de ordenar
las dos mitades por separado
Sugerencia: primero defina una función halve :: [a] -> ([a],[a]) que divida una lista en dos mitades cuyas longitudes
difieran como máximo en uno.
-}

halve :: [a] -> ([a],[a])
halve xs = splitAt (length xs `div` 2) xs

merge' :: Ord a => [a] -> [a] -> [a]
merge' [] [] = []
merge' [] ys = ys
merge' xs [] = xs
merge' (x:xs) (y:ys) | x <= y = x : merge' xs (y:ys)
                     | otherwise = y : merge' (x:xs) ys

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge' (msort (fst (halve xs))) (msort (snd (halve xs)))