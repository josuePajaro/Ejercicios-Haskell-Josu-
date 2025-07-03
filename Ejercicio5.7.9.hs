{-
El producto escalar de dos listas de enteros xs y ys de longitud n se da por la suma de los productos
de los enteros correspondientes. De manera similar a chisqr, muestre como se puede usar una comprensión de lista para definir
una función scalarproduct :: [Int] -> [Int] -> Int que devuelve el producto escalar de dos listas. por ejemplo:
scalarproduct [1,2,3] [4,5,6]
32
-}

scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x*y | (x,y) <- zip xs ys]