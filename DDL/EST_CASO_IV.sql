
CREATE TABLE Alunos (
    CPF CHAR(11) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    DataNascimento DATE NOT NULL,
    Endereco VARCHAR(255) NOT NULL
);

CREATE TABLE Instrutores (
    IDInstrutor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) UNIQUE NOT NULL,
    Especialidade VARCHAR(100)
);

CREATE TABLE Modalidades (
    IDModalidade INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT
);

CREATE TABLE AlunosModalidades (
    CPFAluno CHAR(11),
    IDModalidade INT,
    PRIMARY KEY (CPFAluno, IDModalidade),
    FOREIGN KEY (CPFAluno) REFERENCES Alunos(CPF),
    FOREIGN KEY (IDModalidade) REFERENCES Modalidades(IDModalidade)
);

CREATE TABLE PlanosDeTreinamento (
    IDPlano INT PRIMARY KEY AUTO_INCREMENT,
    CPFAluno CHAR(11) NOT NULL,
    IDInstrutor INT NOT NULL,
    DataInicio DATE NOT NULL,
    DataFim DATE,
    Descricao TEXT,
    FOREIGN KEY (CPFAluno) REFERENCES Alunos(CPF),
    FOREIGN KEY (IDInstrutor) REFERENCES Instrutores(IDInstrutor)
);

CREATE TABLE Aulas (
    IDAula INT PRIMARY KEY AUTO_INCREMENT,
    IDModalidade INT NOT NULL,
    IDInstrutor INT NOT NULL,
    Horario DATETIME NOT NULL,
    Capacidade INT NOT NULL,
    FOREIGN KEY (IDModalidade) REFERENCES Modalidades(IDModalidade),
    FOREIGN KEY (IDInstrutor) REFERENCES Instrutores(IDInstrutor)
);

CREATE TABLE AulasAlunos (
    IDAula INT,
    CPFAluno CHAR(11),
    PRIMARY KEY (IDAula, CPFAluno),
    FOREIGN KEY (IDAula) REFERENCES Aulas(IDAula),
    FOREIGN KEY (CPFAluno) REFERENCES Alunos(CPF)
);

CREATE TABLE Pagamentos (
    IDPagamento INT PRIMARY KEY AUTO_INCREMENT,
    CPFAluno CHAR(11) NOT NULL,
    DataPagamento DATE NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Pago', 'Pendente')),
    FOREIGN KEY (CPFAluno) REFERENCES Alunos(CPF)
);

