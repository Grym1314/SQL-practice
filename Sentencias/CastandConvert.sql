--CAST: La funcion CAST es generica y se encarga de convertirnos un dato en otro

--COVERT: Convierte a un tipo de dato especifico el valor de un campo o variable


DECLARE @numero MONEY
SET @numero=500.40
PRINT @numero
--SELECT CAST (@numero AS INT) AS Numero 

SELECT CONVERT(int,@numero)