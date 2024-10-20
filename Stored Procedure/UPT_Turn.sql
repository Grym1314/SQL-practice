--Update turn

/*
	SELECT * FROM Turno
	SELECT * FROM turnoPaciente
*/

EXEC  UPD_Turno 4,1,'El paciente cancelo'

ALTER PROC UPD_Turno(
	@idTurno turno,
	@estado tinyint,
	@observacion observacion
	)

AS
SET NOCOUNT ON

IF exists(SELECT * FROM Turno 
	WHERE idTurno = @idTurno)
		UPDATE Turno SET idEstado = @estado,
						observacion = @observacion
		WHERE idTurno = @idTurno--Es importante poner el WHERE porque podemos actualizar y perder todos los datos
ELSE
	SELECT 0 AS resultado
