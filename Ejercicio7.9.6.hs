
{-
Una función de orden superior unfold que encapsula un patrón simple de recursión para producir una lista
 se puede definir de la siguiente manera:

unfold p h t x | p x = 0 
               | otherwise = h x : unfold p h t (t x)

Es decir, la función unfold pht produce la lista vacía si el predicado p es verdadero para el valor del argumento
y en caso contrario, produce una lista no vacía aplicando la función h a este valor para obtener la cabeza,
y la función t para generar otro argumento que se procesa recursivamente de la misma manera para producir la cola de la lista.
 Por ejemplo, la función int2bin se puede reescribir de forma más compacta usando unfold de la siguiente manera:

int2bin = unfold (== 0) ('mod' 2) ('div' 2)

Redefine las funciones chop8, map f y iterate usando unfold
-}
unfold :: (t -> Bool) -> (t -> a) -> (t -> t) -> t -> [a]
unfold p h t  x | p x = []
               | otherwise = h x : unfold p h t (t x)

chop8 :: [bit] -> [[bit]]
chop8 = unfold null (take 8) (drop 8)

map' :: (a -> b) -> [a] -> [b]
map' f = unfold null (f . head) tail

iterate' :: (a -> a) -> a -> [a]
iterate' f = unfold (const False) id f