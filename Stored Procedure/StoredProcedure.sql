--Store Procedure
--Conjunto de instrucciones, almacenado en SQL server y se ejecurata cuando lo llames
--Dentro del parentesis se coloca los parametros que se van a procesar
CREATE PROC S_PrimeroPaciente (
	@idpaciente int
) 
AS-- todos los scripts que queramos ejecutar dentro nuestro procedimientos

SELECT * FROM paciente WHERE idPaciente = @idpaciente --Parametro entrada

GO-- hace que continue corriendo otros parametros, si no lo pones y colocas otro SP saldria ERROR

5