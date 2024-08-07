USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[S_PrimeroPaciente]    Script Date: 01/08/2024 11:31:31 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Store Procedure
--Conjunto de instrucciones, almacenado en SQL server y se ejecurata cuando lo llames
--Dentro del parentesis se coloca los parametros que se van a procesar
ALTER PROC [dbo].[S_PrimeroPaciente] (
	@idpaciente int
) 
AS
-- todos los scripts que queramos ejecutar dentro nuestro procedimientos

SELECT * FROM paciente WHERE idPaciente = @idpaciente --Parametro entrada
GO
SELECT apellido,nombre,idPais FROM paciente WHERE idPaciente = @idpaciente
