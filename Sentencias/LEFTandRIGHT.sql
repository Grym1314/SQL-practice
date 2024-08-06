
DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
	SET @var1 = 'Ramiro'
	SET @var2 = 'Dominguez'
	PRINT LEFT (@var1,1)+'.'+LEFT(@var2,1)

SELECT LEFT(nombre,1) + LEFT(apellido,1) FROM paciente--Ejercicio sobre la tabla de Pacientes