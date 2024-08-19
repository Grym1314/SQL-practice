--Store Procedure Turno Paciente

CREATE PROC SELECT_TurnoPaciente(
	@idpaciente paciente
	)

AS
SET NOCOUNT ON

SELECT * FROM Turno T
INNER JOIN turnoPaciente TP--Podemos utilizar tanto necesitemos
ON TP.idTurno = T.idTurno
AND TP.idPaciente = @idpaciente
INNER JOIN paciente P
ON P.idPaciente=TP.idpaciente
