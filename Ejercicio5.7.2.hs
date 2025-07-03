{-
Supongamos que una cuadrícula de coordenadas de tamaño m x n está dada por la lista de todos los pares (x,y) de enteros
tales que 0 <= x <= m y 0 <= y <= n. Utilizando una comprensión de listas, define una función grid :: int -> Int -> [(Int,Int)]
que devuelve una cuadrícula de coordenadas de un tamaño dado. por ejemplo:
grid 1 2
[(0,0),(0,1),(0,2),(1,0),(1,1),(1,2)] 
-}

grid :: Int -> Int -> [(Int,Int)]
grid m n = [ (x,y) | x <- [0..m], y <- [0..n]]