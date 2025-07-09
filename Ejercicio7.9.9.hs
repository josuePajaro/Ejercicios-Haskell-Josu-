{-
Defina una función altMap :: (a -> b) -> (a -> b) -> [a] -> [b] que aplique alternativamente sus dos funciones de argumento
a elementos sucesivos de una lista en orden. Por ejemplo:
altMap (+10) (+100) [0,1,2,3,4]
[10,101,12,103,14]
-}

altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f g [] = []
altMap f g [x] = [f x]
altMap f g (x:y:xs) = f x : g y : altMap f g xs