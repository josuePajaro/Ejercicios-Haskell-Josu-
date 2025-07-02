-- Haga lo mismo para la siguiente definición alternativa y observe la diferencia en el número de expreciones condicionales necesarias:
-- True && b = b
-- False && _ = False
(&&) :: Bool -> Bool -> Bool
x && y = if x then y else False
-- Se reduce el número de condicionles, de dos a solo uno.