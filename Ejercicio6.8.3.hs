import Prelude hiding ((^))
{-
Define el operador de exponenciación ^ para enteros no negativos utilizando el mismo patrón de recursión que el operador
de multiplicación *, y muestre como se evalua la expresión 2 ^ 3 utilizando su definición.
-}

(^) :: Int -> Int -> Int
m ^ 0 = 1
m ^ n = m * (m ^ (n-1))

{-
Usando esta definición:
2 ^ 3
= {aplicando ^}
2 * (2 ^ 2)
= {aplicando ^}
2 * (2 * (2 ^ 1))
= {aplicando ^}
2 * (2 * (2 * (2 ^ 0)))
= {aplicando ^}
2 * (2 * (2 * 1))
= {aplicando *}
8
-}