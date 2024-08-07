USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[alta_paciente]    Script Date: 05/08/2024 02:39:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[alta_paciente](
	@dni VARCHAR(20),
	@nombre VARCHAR(50),
	@apellido VARCHAR(50),
	@fnacimiento VARCHAR(10),
	@domicilio VARCHAR(50),
	@idPais CHAR (3),
	@tel VARCHAR(20),
	@email VARCHAR(50),
	@observacion VARCHAR(1000)=''-- lo de comillas sera un valor determinado en este caso un vacio
	)
AS

IF NOT EXISTS (SELECT * FROM paciente WHERE DNI=@dni)
	BEGIN
		INSERT INTO paciente (DNI,nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion)
		VALUES (@dni,@nombre,@apellido,@fnacimiento,@domicilio,@idPais,@tel,@email,@observacion)
		PRINT 'El paciente se agrego correctamente'
		RETURN
	END
ELSE
	BEGIN
		PRINT 'El paciente ya existe'
		RETURN
	END