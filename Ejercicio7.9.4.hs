{- Usando foldl, defina una función dec2int :: [Int] -> Int que convierta un número decimal en un entero. 
Por ejemplo:
> dec2int[2,3,4,5]
2345 -}

dec2int :: [Int] -> Int
dec2int = foldl (\x y -> 10 * x + y ) 0