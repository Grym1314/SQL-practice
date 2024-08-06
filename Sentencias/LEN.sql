--LEN cuenta el numero de caractares de una variable

DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
	SET @var1 = 'Ramiro'
	SET @var2 = 'Dominguez'

	PRINT LEN(@var1)

SELECT * FROM paciente
SELECT LEN(domicilio) AS Cantidad_Caracteres FROM paciente--Respuesta al ejercicio 153