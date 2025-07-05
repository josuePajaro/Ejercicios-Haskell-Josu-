
{-
Sin consultar las definiciones del preludio estandar, defina las siguientes funciones de bibiloteca
en listas utilizando recursión
-}

-- a) Decida si todos los valores logicos de una lista son verdaderos
and' :: [Bool] -> Bool
and' [True] = True
and' (x:xs) = if  x == True then  and' xs  else False

-- b) concatene una lista de listas
concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ concat' xs

--c) Producir una lista con n elementos identicos
replicate' :: Int -> a -> [a]
replicate' 0 x = []
replicate' n x = [x] ++ replicate' (n-1) x

-- d) seleccionar el enesimo elemento de una lista
(#) :: [a] -> Int -> a
(x:_) # 1 = x
(_:xs) # n = xs # (n-1) 

-- e) decidir si un valor es un elemento de una lista
elem' :: Eq a => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs) | x == a = True
               | x /= a = elem' a (xs)
