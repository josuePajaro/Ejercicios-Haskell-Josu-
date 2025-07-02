-- Muestre como se puede formalizar el significado de la siguiente definición de función currificada en términos de expreciones lambda:
-- mult :: Int -> Int -> Int -> Int
-- mult x y z = x*y*z

mult :: Int -> Int -> Int -> Int
mult = \x -> \y -> \z -> x*y*z