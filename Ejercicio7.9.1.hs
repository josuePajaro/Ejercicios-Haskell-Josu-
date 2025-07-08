{-
Muestra como la comprensión de listas [f x | x <- xs, p x] se puede expresar utilizando las funciones
de orden superior map y filter
Respuesta map f (filter p xs)
-}