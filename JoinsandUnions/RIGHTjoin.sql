--Left Join
--Regresa t los registros que coiciden con la tabla 

SELECT * FROM paciente P-- la P es un apodo al igual que la T 
RIGHT JOIN turnoPaciente T
ON T.idPaciente = P.idPaciente