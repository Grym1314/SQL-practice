--CONCAT

DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
	SET @var1 = 'Ramiro'
	SET @var2 = 'Dominguez'

SELECT CONCAT (@var1,' ',@var2)