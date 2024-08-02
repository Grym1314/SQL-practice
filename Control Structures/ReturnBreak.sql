
DECLARE @contador INT=0

WHILE @contador <= 10
BEGIN
	PRINT @contador
	SET @contador = @contador + 1
	IF @contador = 3
		--'Return' sale de manera forzada
		BREAK--sale de las instruciones y sigue ejecutando
END
PRINT 'Sigue ejecutando'