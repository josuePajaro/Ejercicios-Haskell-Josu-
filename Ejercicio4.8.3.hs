--Considere una función safetail :: [a] -> [a] que se comporte de la misma manera que tail, exepto que asigna la lista vacia
-- a si misma en lugar de producir un error, Usando tail y la función null :: [a] -> Bool que decide si una lista está vacia o no.
--Defina safetail usando:
-- a) expresión condicional
-- b) ecuaciones protegidas
-- c) coincidencia de patrones

safetail :: [a] -> [a]
safetail xs = if null xs then [] else tail xs
safetail xs | null xs = [] 
            | otherwise = tail xs
safetail(_:xs)	=	xs
safetail []=[]