DECLARE @contador INT=0
WHILE @contador <= 10
BEGIN
	PRINT @contador
	SET @contador = @contador + 1
END