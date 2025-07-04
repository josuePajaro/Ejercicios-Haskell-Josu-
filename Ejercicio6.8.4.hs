{-
Define una función recursiva euclid :: Int -> Int que implementa el algoritmo de euclides para calcular el máximo común divisor
de dos enteros no negativos: si los dos números son iguales, este número es el resultado, de lo contrario, el número menor
se resta del mayor y luego se repite el mismo proceso, por ejemplo:
euclid 6 27
3
-}
euclid :: Int -> Int -> Int
euclid n m = if n == m then n else (if n < m then euclid n (m-n) else euclid (n-m) m)