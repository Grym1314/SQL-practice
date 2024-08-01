--El valor if nos ayudar a evaluar el valor de una variable o de una consulta y con ello ejecutar acciones
DECLARE @idpaciente int
DECLARE @idturno int 

set @idpaciente = 7

IF @idpaciente = 7
BEGIN--Inicio de lo que se debere ejecutar dentro del Begin y END siempre que tengan mas de una sola linea
	SET @idturno = 20
	SELECT * FROM paciente WHERE idpaciente=@idpaciente
	PRINT  @idturno
END
ELSE
BEGIN
	PRINT 'No se cumplio la funcion'
END