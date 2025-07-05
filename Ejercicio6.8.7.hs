{-
Defina una función recursiva merge :: ord a => [a] -> [a] que fusione dos listas ordenadas para obtener una única lista ordenada
Por ejemplo:
merge [2,5,6] [1,3,4]
[1,2,3,4,5,6]
Nota: su definición no debe usar otras funciones en listas ordenadas como insert o insort, sino que debe definirse usando
recursión explicita
-}

merge' :: Ord a => [a] -> [a] -> [a]
merge' [] [] = []
merge' [] ys = ys
merge' xs [] = xs
merge' (x:xs) (y:ys) | x <= y = x : merge' xs (y:ys)
                     | otherwise = y : merge' (x:xs) ys