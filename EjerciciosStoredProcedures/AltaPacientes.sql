alter PROC alta_paciente(--ALTER para editar y CREATE para crear
	@dni VARCHAR(20),
	@nombre VARCHAR(50),
	@apellido VARCHAR(50),
	@fNacimiento VARCHAR(8),
	@domicilio VARCHAR(50),
	@idPais CHAR (3),
	@tel VARCHAR(20),
	@email VARCHAR(50),
	@observacion VARCHAR(1000)=''-- lo de comillas sera un valor determinado en este caso un vacio
	)
AS

IF NOT EXISTS (SELECT * FROM paciente WHERE dni=@dni)
	BEGIN
		INSERT INTO paciente (dni,nombre, apellido,fNacimiento,domicilio,idPais,telefono,email,observacion)
		VALUES (@dni,@nombre,@apellido,@fNacimiento,@domicilio,@idPais,@tel,@email,@observacion)
		PRINT 'El paciente se agrego correctamente'
		RETURN--SALIR DEL PROCESO
	END
ELSE
	BEGIN 
		PRINT 'El paciente ya existe'
	END