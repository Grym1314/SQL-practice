
CREATE TABLE pagoPaciente(
	idPago int NOT NULL,
	idPaciente int NOT NULL,
	idTurno int NOT NULL,

	PRIMARY KEY (idPago, idPaciente, idTurno)

)