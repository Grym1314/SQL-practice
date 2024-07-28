
SELECT * FROM paciente

UPDATE paciente SET observacion = 'Sin observacion'--Actualizaria todos los registro porque no usamos el comando WHERE

UPDATE paciente SET nombre = 'Silvia' WHERE idPaciente = 7--Con Where sabemos donde se debe de actualizar