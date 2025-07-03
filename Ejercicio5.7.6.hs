{-
Un entero positivo es perfecto si es igual a la suma de todos sus factores, excluyendo el número mismo.
utilizando una compresión de listas y la función de factores, defina una función perfects :: Int -> [Int]
que devuelva la lista de todos los números perfectos hasta un limite dado. por ejemplo:
perfects 500
[6,28,496]
-}

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]
perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (factors x) == 2*x]