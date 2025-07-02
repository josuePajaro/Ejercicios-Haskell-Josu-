-- Defina una función third :: [a] -> a que devuelva el tercer elemento de una lista que contenga al menos esta cantidad de elementos usando:
-- a) head y tail
-- b) indexacion de listas !!
-- c) coincidencia de patrones
third :: [a] -> a
third xs = head (tail (tail xs))
third xs = xs !! 2
third (_:_:x:_) = x