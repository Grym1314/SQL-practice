
DECLARE @contador INT=0

WHILE @contador <= 10
BEGIN
	PRINT @contador
	SET @contador = @contador + 1
	IF @contador = 3
		BREAK
END
PRINT 'Sigue ejecutando'

--TRY CATCH
BEGIN TRY
	SET @contador ='Texto'
END TRY

BEGIN CATCH
	PRINT 'Contador es un INT no un VARCHAR por lo tanto no es posible designar un texto a la variable'
END CATCH