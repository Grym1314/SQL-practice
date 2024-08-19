--Diferencia entre la clausula INNER con la clausula UNION
--UNION tienen que ser de los mismo tipos de datos 
SELECT * FROM Turno WHERE idEstado=3
UNION
SELECT * FROM Turno WHERE idEstado=1