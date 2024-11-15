
CREATE DATABASE IF NOT EXISTS FlyHigh;
USE FlyHigh;

CREATE TABLE IF NOT EXISTS Passageiros (
    CodigoPassageiro INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) UNIQUE NOT NULL,
    Telefone VARCHAR(15),
    Endereco TEXT
);

CREATE TABLE IF NOT EXISTS Aeroportos (
    CodigoAeroporto CHAR(3) PRIMARY KEY,
    Nome VARCHAR(100),
    Cidade VARCHAR(100),
    Pais VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Aeronaves (
    CodigoAeronave INT AUTO_INCREMENT PRIMARY KEY,
    Modelo VARCHAR(50) NOT NULL,
    Capacidade INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Funcionarios (
    CodigoFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    CPF CHAR(11) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Voos (
    CodigoVoo INT AUTO_INCREMENT PRIMARY KEY,
    Origem CHAR(3) NOT NULL,
    Destino CHAR(3) NOT NULL,
    HorarioPartida DATETIME,
    HorarioChegada DATETIME,
    CodigoAeronave INT NOT NULL,
    FOREIGN KEY (Origem) REFERENCES Aeroportos(CodigoAeroporto),
    FOREIGN KEY (Destino) REFERENCES Aeroportos(CodigoAeroporto),
    FOREIGN KEY (CodigoAeronave) REFERENCES Aeronaves(CodigoAeronave)
);

CREATE TABLE IF NOT EXISTS Reservas (
    CodigoReserva INT AUTO_INCREMENT PRIMARY KEY,
    CodigoPassageiro INT NOT NULL,
    CodigoVoo INT NOT NULL,
    DataReserva DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CodigoPassageiro) REFERENCES Passageiros(CodigoPassageiro),
    FOREIGN KEY (CodigoVoo) REFERENCES Voos(CodigoVoo)
);

CREATE TABLE IF NOT EXISTS OperacoesVoo (
    CodigoOperacao INT AUTO_INCREMENT PRIMARY KEY,
    CodigoVoo INT NOT NULL,
    CodigoFuncionario INT NOT NULL,
    FOREIGN KEY (CodigoVoo) REFERENCES Voos(CodigoVoo),
    FOREIGN KEY (CodigoFuncionario) REFERENCES Funcionarios(CodigoFuncionario)
);
