SELECT * FROM paciente
SELECT * FROM turnoPaciente

SELECT * FROM paciente P
INNER JOIN turnoPaciente T
ON T.idPaciente = P.idPaciente-- Conexiones con las Primary Key, es mejor manera de hacer buena practica (Primera tabla)
--De lado izquierdo como buena practica ponerlo siempre la primera tabla de lado izquierdo
--Utilizar alias de tablas, si no marcas alias saldra error 
