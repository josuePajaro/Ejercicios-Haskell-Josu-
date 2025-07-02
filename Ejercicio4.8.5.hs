-- Sin utilizar ninguna otra función u operador de biblioteca, muestre como se puede formalizar el significado
-- de la siguiente definicición de coincidencia de patrones para la conjunción lógica && utilizando expresiones condicionales:
-- Verdadero && Verdadero = Verdadero
-- _ && _ = Falso
-- Sugerencia: utilice dos expreciones condicionales anidadas

(&&) :: Bool -> Bool -> Bool
x && y = if x then (if y then True else False) else False