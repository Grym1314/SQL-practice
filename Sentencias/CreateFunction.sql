
CREATE FUNCTION nombrefun (@var int )
RETURNS INT

AS
BEGIN 
 SET @var = @var * 5
 RETURN @var
END

SELECT dbo.nombrefun (256)