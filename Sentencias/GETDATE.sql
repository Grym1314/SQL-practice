--GETDATE y GETUTCFATE

SELECT GETDATE()
SELECT GETUTCDATE()

--DATEADD
SELECT DATEADD(Day,2,GETDATE())
SELECT DATEADD(Day,-2,GETDATE())

--DATEIFF saber la cantidad de fecha de distancia en este ejemplo es del 2017 al a�o presente
SELECT DATEDIFF(YEAR,GETDATE(),'20170210')

--DATEPART
SELECT DATEPART (dw,GETDATE())

--ISDATE-Saber si es una fecha o no
--Da boolean TRUE=1 FALSE=0
PRINT ISDATE('DFASFSD')