{-
Define una función recursiva sumdown :: Int -> Int que devuelva la suma de los enteros no negativos desde un valor dado hasta cero
por ejemplo, sumdown e deberia devolver 3+2+1+0 = 6 
-}

sumdown :: Int -> Int
sumdown 0 = 0
sumdown n | n > 0 = n + sumdown (n-1)