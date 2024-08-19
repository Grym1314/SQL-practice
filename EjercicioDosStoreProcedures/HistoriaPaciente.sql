CREATE PROC SEL_HistoriaPaciente(
		@idpaciente paciente)

AS
SET NOCOUNT ON

	SELECT * FROM paciente P
	INNER JOIN HistoriaPaciente HP
	ON HP.idPaciente = P.idPaciente
	INNER JOIN historia H
	ON H.idHistoria = HP.idHistoria
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = HP.idMedico
	INNER JOIN Medico M
	ON M.idMedico = ME.idMedico
	WHERE P.idPaciente = @idpaciente

--Pruebas y ejecuciones
EXEC SEL_HistoriaPaciente 6

SELECT * FROM historia
SELECT * FROM HistoriaPaciente
SELECT * FROM Medico
SELECT * FROM MedicoEspecialidad
SELECT * FROM Especialidad

INSERT INTO historia VALUES ('20241020','Observaciones Prueba Dos')
INSERT INTO HistoriaPaciente VALUES (1,6,2),(2,4,4)
INSERT INTO MedicoEspecialidad VALUES (2,4,'Jeda de especialidad'),(4,3,'Medico Residente')