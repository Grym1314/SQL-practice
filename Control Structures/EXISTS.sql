--EXISTS
DECLARE @idpaciente int
DECLARE @idturno int 

set @idpaciente = 7

IF @idpaciente = 7
	BEGIN
		SET @idturno = 20
		SELECT * FROM paciente WHERE idpaciente=@idpaciente
		PRINT  @idturno

		IF EXISTS(SELECT * FROM paciente WHERE idPaciente=3 )--Consulta de seleccion, es un IF anidado
			print 'Existe'

	END

