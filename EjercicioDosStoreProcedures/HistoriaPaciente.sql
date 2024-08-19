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