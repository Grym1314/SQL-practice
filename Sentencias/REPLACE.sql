--REPLACE: Recibe tres parametros

DECLARE @var1 VARCHAR (20)
DECLARE @var2 VARCHAR (20)
	SET @var1 = 'Ra@miro'
	SET @var2 = 'Domingue3z'

SELECT REPLACE (@var1,'@','')
SELECT REPLACE (@var2,'3','')