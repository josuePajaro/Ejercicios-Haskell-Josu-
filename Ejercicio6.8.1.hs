{-
¿Como se comporta la versión recursiva de la función factorial si se aplica a un argumento negativo, como (-1)?
La función entrará en un bucle infinito o se producirá un error ya que la condición n == 0 no se cumplirá.

Modifique la definición para prohibir los argumentos negativos añadiendo una protección al caso recursivo.
-}

fac :: Int -> Int
fac 0 = 1
fac n | n > 0 = n * fac (n-1)