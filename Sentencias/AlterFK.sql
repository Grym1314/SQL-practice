ALTER TABLE paciente
ADD FOREIGN KEY (idPais) REFERENCES Pais(idPais)

ALTER TABLE HistoriaPaciente
ADD FOREIGN KEY (idPaciente) REFERENCES paciente(idPaciente)