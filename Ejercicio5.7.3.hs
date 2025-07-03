{-
Usando una compresión de listas y la función cuadrícula anterior, defina una función square :: Int -> [(Int,Int)] que devuelva
un cuadrado de coordenadas de tamaño n, excluyendo la diagonal (0,0) a (n,n)
por ejemplo:
square 2:
[(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)]
-}
grid :: Int -> Int -> [(Int,Int)]
grid m n = [ (x,y) | x <- [0..m], y <- [0..n]]
square :: Int -> [(Int,Int)]
square n = [(x,y) | (x,y) <- grid n n, x /=y]