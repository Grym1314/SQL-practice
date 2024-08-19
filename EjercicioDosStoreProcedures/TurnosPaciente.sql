--Store Procedure Turno Paciente



CREATE PROC SELECT_TurnoPaciente(
	@idpaciente paciente
	)

AS
SET NOCOUNT ON

SELECT * FROM paciente P
INNER JOIN turnoPaciente TP
ON TP.idPaciente = P.idPaciente
INNER JOIN Turno T
ON T.idTurno = TP.idTurno
INNER JOIN MedicoEspecialidad M
ON M.idMedico = TP.idMedico
WHERE P.idPaciente = @idpaciente




/*INNER JOIN turnoPaciente TP--Podemos utilizar tanto necesitemos
ON TP.idTurno = T.idTurno
AND TP.idPaciente = @idpaciente
INNER JOIN paciente P
ON P.idPaciente=TP.idpaciente
INSERT INTO MedicoEspecialidad VALUES (1,2,'Medico Clinico')
INSERT INTO turnoPaciente VALUES (9,1,6)
INSERT INTO Turno VALUES ('20240818',6,'El medico esta de vacaciones')
*/

EXEC SELECT_TurnoPaciente 1
SELECT * FROM paciente
SELECT * FROM turnoPaciente
SELECT * FROM Turno
SELECT * FROM TurnoEstado
SELECT * FROM Medico
SELECT * FROM MedicoEspecialidad