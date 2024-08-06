

ALTER PROC Alta_Medico( 
	@nombreMedico VARCHAR(30),
	@apellidoMedico VARCHAR(40),
	@idEspecialidad INT,
	@descripcion VARCHAR (100)
	)
AS
set nocount on

IF NOT EXISTS(SELECT TOP 1 idMedico FROM Medico WHERE nombre=@nombreMedico and apellido=@apellidoMedico)
	BEGIN
		INSERT INTO Medico(nombre,apellido)
		VALUES (@nombreMedico,@apellidoMedico)

		DECLARE @auxIdMedico int
		SET @auxIdMedico = @@IDENTITY

		INSERT INTO MedicoEspecialidad(idMedico,idEspecialidad,descripcion)
		VALUES (@auxIdMedico,@idEspecialidad,@descripcion)

		PRINT 'El Medico y sus especialidad han sido registrados'
		RETURN
	END
ELSE
	BEGIN
		PRINT 'El turno ya existe'
		RETURN
	END
