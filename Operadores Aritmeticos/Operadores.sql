
DECLARE @num1 DECIMAL (9,2)=20 --Parte entero es una cantidad maxima de 9 y el decimal es el 2
DECLARE @num2 DECIMAL (9,2)=30
DECLARE @result DECIMAL (9,2)

--SUMA
SET @result = @num1 + @num2
PRINT @result

--RESTA
SET @result = @num1 - @num2
PRINT @result

--MULTIPLICACION
SET @result = @num1 * @num2
PRINT @result

--DIVISION
SET @result = @num1 / @num2
PRINT @result

--CALCULO DE MODULO
SET @result = @num1 % @num2
PRINT @result
