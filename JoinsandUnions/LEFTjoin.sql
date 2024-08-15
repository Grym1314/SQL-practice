--Left Join
--Regresa todos los registros, y aparecera NULL aquellos los cuales no tenga registros

SELECT * FROM paciente
SELECT * FROM turnoPaciente

SELECT * FROM paciente P-- la P es un apodo al igual que la T 
LEFT JOIN turnoPaciente T
ON T.idPaciente = P.idPaciente