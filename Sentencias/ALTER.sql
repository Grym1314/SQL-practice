--SELECT * FROM Especialidad  
--SELECT * FROM MedicoEspecialidad

--Alter para modificar la estructura de una tabla

ALTER TABLE paciente ADD estado smallint--Agregar el campo a la tabla

ALTER TABLE paciente ALTER COLUMN estado BIT--Cambiar el tipo dato del campo 

ALTER TABLE paciente DROP COLUMN estado-- Eliminar un campo 

ALTER TABLE Especialidad DROP COLUMN EspecialidadD 

