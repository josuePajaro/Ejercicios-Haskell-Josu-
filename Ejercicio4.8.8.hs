{-
El algoritmo de Luhn se utiliza para comprobar los números de tarjetas bancarias en busca de errores simples, como escribir mal
 un digito, y procede de la siguiente manera:
 
 considerar cada digito como un número separado.
 moviendose a la izquierda, duplicar cada dos números a partir del penúltimo.
restar 9 de cada número que ahora sea mayor que 9.
sumar todos los números resultantes.
si el total es divisible por 10, él número de la tarjeta es válido.

define una función luhnDouble :: Int -> Int que duplique un digito y reste 9 si el resultado es mayor que 9
-}
luhnDouble :: Int -> Int
luhnDouble x = if 2*x > 9 then (2*x)-9 else 2*x

{-
Usando luhnDouble y la función de resto entero mod, defina una función luhn :: Int -> Int -> Int -> Int -> Bool que decida
si un número de tarjeta bancaria de cuatro digitos es válido
-}
luhn ::Int -> Int -> Int -> Int -> Bool
luhn a b c d = if (luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0 then True else False