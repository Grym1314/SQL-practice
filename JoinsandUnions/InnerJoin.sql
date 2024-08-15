--Iner Join
--Se reduce la consulta a los campos de las tablas que tengan misma informacion
SELECT * FROM paciente
SELECT * FROM turnoPaciente

SELECT * FROM paciente P-- la P es un apodo al igual que la T 
INNER JOIN turnoPaciente T
ON T.idPaciente = P.idPaciente
