{-
Sin mirar las definiciones del preludio estándar, defina la función de biblioteca de orden superior curry
que convierte una función en pares en una función currificada y, a la inversa,
la función uncurry que convierte una función currificada con dos argumentos en una función en pares.

Sugerencia: primero escriba los tipos de las dos funciones.
-}

curry :: ((a,b) -> c) -> a -> b -> c
curry f x y = f (x,y)

uncurry :: (a -> b -> c) -> (a,b) -> c
uncurry f (x,y) = f x y

