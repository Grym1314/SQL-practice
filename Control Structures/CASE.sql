DECLARE @valor INT
DECLARE @resultado CHAR(10)=''

SET @valor = 10

SET @resultado = (CASE WHEN @valor = 10 THEN 'Rojo'
					   WHEN @valor = 20 THEN 'Verde'
					   WHEN @valor = 30 THEN 'Azul'
				END)
Print @resultado

SELECT *,(CASE WHEN idEstado=1 THEN'Verde'
			   WHEN idEstado=2 THEN'Rojo'
               WHEN idestado=3 THEN'Azul'
			   END) AS Codigo FROM Turno
