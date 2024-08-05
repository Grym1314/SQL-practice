DECLARE @num1 DECIMAL (9,2)=20 
DECLARE @num2 DECIMAL (9,2)=30
DECLARE @result DECIMAL (9,2)

--<Menor,> Mayor,=Igual,<>Distinto

IF @num2 < @num1

PRINT 'Si'

ELSE 
	PRINT 'No'