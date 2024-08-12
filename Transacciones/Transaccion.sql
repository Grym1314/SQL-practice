--Transaccion
--Manipulacion de datos

SELECT * FROM paciente

BEGIN TRAN 
	UPDATE paciente	SET apellido='Flores' WHERE idPaciente=8
IF @@ROWCOUNT = 1 --Nos señala cuantos registros fueron editados, borrados o consulados
	BEGIN
		COMMIT TRAN
	END
ELSE
	BEGIN 
	ROLLBACK TRAN--Cancela el commit del transaction
	END