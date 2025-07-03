{-
Muestra como la comprensión de lista [(x,y) | x <- [1,2], y <- [3,4]] con dos generadores se puede re-expresar usando
dos comprensiones con generadores individuales. Sugerencia: anida una comprensión dentro de la otra
 y usa la función concat :: [[a]] -> [a]. 
-}
xs :: [(Int, Int)]
xs = concat [[(x,y) | y <- [3,4]] | x <- [1,2]]