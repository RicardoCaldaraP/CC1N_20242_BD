
INSERT INTO Passageiros (Nome, CPF, Telefone, Endereco)
VALUES 
('Carlos Silva', '12345678901', '21987654321', 'Rua 1, Centro, RJ'),
('Ana Souza', '23456789012', '31987654321', 'Avenida 2, BH, MG');

INSERT INTO Aeroportos (CodigoAeroporto, Nome, Cidade, Pais)
VALUES 
('GRU', 'Aeroporto Internacional de Guarulhos', 'São Paulo', 'Brasil'),
('JFK', 'John F. Kennedy International Airport', 'Nova York', 'EUA');

INSERT INTO Aeronaves (Modelo, Capacidade)
VALUES 
('Boeing 737', 160),
('Airbus A320', 180);

INSERT INTO Funcionarios (Nome, Cargo, CPF)
VALUES 
('João Almeida', 'Piloto', '34567890123'),
('Maria Santos', 'Comissária de Bordo', '45678901234');

INSERT INTO Voos (Origem, Destino, HorarioPartida, HorarioChegada, CodigoAeronave)
VALUES 
('GRU', 'JFK', '2024-12-01 08:00:00', '2024-12-01 16:00:00', 1),
('JFK', 'GRU', '2024-12-02 20:00:00', '2024-12-03 04:00:00', 2);

INSERT INTO Reservas (CodigoPassageiro, CodigoVoo)
VALUES 
(1, 1),
(2, 1);

INSERT INTO OperacoesVoo (CodigoVoo, CodigoFuncionario)
VALUES 
(1, 1),
(1, 2);

UPDATE Voos 
SET HorarioPartida = '2024-12-01 09:00:00'
WHERE CodigoVoo = 1;

UPDATE Funcionarios 
SET Cargo = 'Piloto Sênior'
WHERE CodigoFuncionario = 1;

DELETE FROM Reservas 
WHERE CodigoReserva = 1;

DELETE FROM Passageiros 
WHERE CodigoPassageiro = 2;
