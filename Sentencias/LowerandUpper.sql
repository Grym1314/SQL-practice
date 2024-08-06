--LOWER AND UPPER nos ayudara hacer minusculas o mayusculas las caracteristicas de los valores

DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
	SET @var1 = 'RAMIRO'
	SET @var2 = 'Dominguez'
	PRINT UPPER(LEFT(@var1,2))+LOWER(RIGHT(@var1,LEN(@var1)-2))

print LOWER(@var1)+ UPPER(@var2)

