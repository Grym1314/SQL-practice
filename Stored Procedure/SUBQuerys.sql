--Una consulta es una sentencia SELECT adentro de otro SELECT
--Para señalar que vas a abrir un SunQuery tenemos que abrir y cerrar parentesis

alter PROC S_Paciente (
@idpaciente int 
)
AS
SELECT apellido, nombre, idpais,
	(SELECT Pais FROM Pais ps WHERE ps.idPais = pa.idPais)DelPais--Debe de regresar solo un valor y lo que esta afuera de los parentesis es el Alias del campo del valor


FROM paciente pa WHERE idPaciente=@idpaciente --Creamos un Alias, en estos casos pa=ListaPacientes y ps=ListaPaises