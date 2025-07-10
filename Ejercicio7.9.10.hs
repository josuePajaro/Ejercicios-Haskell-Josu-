{-
Utilizando altMap, defina una función luhn :: [Int] -> Bool que implemente el algoritmo de Luhn de los ejecicios
del capitulo 4 para números de tarjetas bancarias de cualquier longitud

El algoritmo de Luhn se utiliza para comprobar los números de tarjetas bancarias en busca de errores simples, como escribir mal
un digito, y procede de la siguiente manera:
 
considerar cada digito como un número separado.
moviendose a la izquierda, duplicar cada dos números a partir del penúltimo.
restar 9 de cada número que ahora sea mayor que 9.
sumar todos los números resultantes.
si el total es divisible por 10, él número de la tarjeta es válido.
-}
luhnDouble :: Int -> Int
luhnDouble x = if 2*x > 9 then (2*x)-9 else 2*x

altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f g [] = []
altMap f g [x] = [f x]
altMap f g (x:y:xs) = f x : g y : altMap f g xs

luhn :: [Int] -> Bool
luhn xs | even (length xs) && (sum (altMap luhnDouble id xs)`mod`  10 == 0) = True
         | odd (length xs) && (sum (altMap id luhnDouble xs) `mod` 10 == 0) = True
         | otherwise = False