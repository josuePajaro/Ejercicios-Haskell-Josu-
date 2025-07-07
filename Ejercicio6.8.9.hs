--Utilizando el proceso de cinco pasos, construya las funciones de biblioteca que:

-- a) calcule la suma de una lista de números

{-
Paso 1: Definir el tipo
sum :: [Int] -> Int

paso 2: Enumerar los casos
sum [] =
sum (x:y:xs) =

paso 3: Definir los casos simples
sum [] = 0
sum (x:xs) =

paso 4: definir los otros casos
sum [] = 0
sum (x:xs) = x + sum xs

paso 5: generalizar y simplificar
sum :: Num a => [a] -> a
sum = foldl (+) 0
-}

-- b) tomar un número dado de elementos del principio de una lista
{-
paso 1: Definir el tipo
take :: Int -> [a] -> [a]

paso 2: Enumerar los casos
take 0 [] =
take 0 (x:xs) =
take n [] =
take n (x:xs) =

paso 3: Definir los casos simples

take 0 [] = []
take 0 (x:xs) = []
take n [] = []
take n (x:xs) = 

paso 4: definir los otros casos

take 0 [] = []
take 0 (x:xs) = []
take n [] = []
take n (x:xs) = x : take (n-1) xs

paso 5: generalizar y simplificar
take :: Integral b => b -> [a] -> [a]
take 0 [] = []
take' 0 (x:xs) = []
take n [] = []
take' n (x:xs) = x : take' (n-1) xs
-}
--c) seleccionar el último elemento de una lista no vacia
{-
Paso 1: Definir el tipo
last :: [Int] -> Int

Paso 2: Enumerar los casos
last [x] =
last (x:xs) =

Paso 3: Definir los casos simples
last [x] = x
last (x:xs) =

Paso 4: Definir los otros casos
last [x] = x
last (x:xs) = last xs

paso 5: generalizar y simplificar
last :: [a] -> a
last [x] = x
last (x:xs) = last xs
-}