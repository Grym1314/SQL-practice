
--Declarar una variable
--Objeto memoria que nos permitira almacenar un valor 

DECLARE @ordenamiento CHAR(1) ='A'
--Tambien podemos designar una variable como SET @ordenamiento = 'A'
PRINT @ordenamiento 

DECLARE @ordenamientoDos CHAR(1)
DECLARE @valorOrdenamiento CHAR(1)

SET @valorOrdenamiento = ISNULL(@ordenamientoDos,'A')
PRINT @valorOrdenamiento