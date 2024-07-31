
SELECT * FROM paciente WHERE apellido = 'Contreras' AND (nombre='Ariel' OR idPais='MEX')--Lo que esta afuera del partesis
--tiene prioridad, despues cumplira lo señalado dentro del parentesis
