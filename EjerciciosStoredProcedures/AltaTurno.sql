
ALTER PROC Alta_Turnos( 
	@fechaturno CHAR(14),--20190215 12:
	@idPaciente paciente,
	@idMedico medico,
	@observacion observacion=' '
	)
AS
IF NOT EXISTS(SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno=@fechaturno)
	BEGIN
		INSERT INTO Turno(fechaTurno,idEstado,observacion)
		VALUES (@fechaturno,2,@observacion)

		DECLARE @auxIdTurno turno
		SET @auxIdTurno = @@IDENTITY--Ultimo valor insertado dentro de un campo con el valor IDENTITY ON

		INSERT INTO turnoPaciente(idTurno,idPaciente,idMedico)
		VALUES (@auxIdTurno,@idPaciente,@idMedico)

		PRINT 'El turno ha sido registrado'
		RETURN
	END
ELSE
	BEGIN
		PRINT 'El turno ya existe'
		RETURN
	END

