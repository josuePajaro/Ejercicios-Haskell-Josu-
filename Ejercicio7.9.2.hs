{-
Sin mirar las definiciones del preludio estándar, defina las siguientes funciones de biblioteca de orden superior en listas.

a. Decida si todos los elementos de una lista satisfacen un predicado:

all :: (a -> Bool) -> [a] -> Bool
all p = foldr (&&) True . map p

b. Decida si algún elemento de una lista satisface un predicado:

any :: (a -> Bool) -> [Bool] -> Bool


c. Seleccione elementos de una lista mientras satisfagan un predicado:

takewhile :: (a -> Bool) -> [a] -> [a]

d. Elimine elementos de una lista mientras satisfagan un predicado:

dropwhile :: (a -> Bool) -> [a] -> [a]
-}
all' :: (a -> Bool) -> [a] -> Bool
all' p = foldr (&&) True . map p

any' :: (a -> Bool) -> [a] -> Bool
any' p = foldr (||) False . map p 