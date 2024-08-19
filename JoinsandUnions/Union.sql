--Diferencia entre la clausula INNER con la clausula UNION
--UNION tienen que ser de los mismo tipos de datos 
SELECT * FROM Turno WHERE idEstado=3
UNION-- Elimina las repiticiones/ UNION ALL devuelve todos hasta las repeticiones 
SELECT * FROM Turno WHERE idEstado=1