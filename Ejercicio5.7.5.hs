{-
una terna (x,y,z) es pitagórica si satisface la ecuación x^2 + y^2 = z^2. utilizando una comprensión de listas
 con 3 generadores, defina una función pyths :: Int -> [(Int,Int,Int)] que devuelva la lista de todas las ternas cuyos
 componentes sean como máximo un límite dado. Por ejemplo:
 pyths 10
 [(3,4,5),(4,3,5),(6,8,10),(8,6,10)]
-}

pyths :: Int -> [(Int,Int,Int)]
pyths n = [(x,y,z) | x  <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]