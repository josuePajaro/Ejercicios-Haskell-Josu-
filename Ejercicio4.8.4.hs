-- De manera similar a && en la sección 4.4, Demuestre como el operador de disyunción || se puede definir de cuatro maneras
-- distintas usando la coincidencia de patrones.

(||) :: Bool -> Bool -> Bool
True || True = True
True || False = True
False || True = True
False || False = False

False || False = False
_ || _ = True

True || _ = True
False || b = b

b || c | b == False && c == False = False | otherwise = True