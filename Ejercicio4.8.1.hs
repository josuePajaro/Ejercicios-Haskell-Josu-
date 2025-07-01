-- Usando funciones de biblioteca, defina una función halve :: [a] -> ([a],[a]), que divide una lista de longitud par en dos mitades.
-- por ejemplo: 
-- >	halve	[1,2,3,4,5,6]
--          ([1,2,3],[4,5,6])

halve' :: [a] -> ([a],[a])
halve' xs = splitAt (length xs `div` 2) xs