
CREATE TABLE Clientes (
    CPF CHAR(11) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    DataNascimento DATE NOT NULL,
    Endereco VARCHAR(255),
    Fidelidade BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE Produtos (
    IDProduto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL,
    IDFornecedor INT NOT NULL,
    FOREIGN KEY (IDFornecedor) REFERENCES Fornecedores(IDFornecedor)
);

CREATE TABLE Fornecedores (
    IDFornecedor INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Telefone CHAR(11),
    Email VARCHAR(100),
    Endereco VARCHAR(255)
);

CREATE TABLE Vendas (
    IDVenda INT PRIMARY KEY AUTO_INCREMENT,
    CPFCliente CHAR(11) NOT NULL,
    DataVenda DATE NOT NULL,
    Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CPFCliente) REFERENCES Clientes(CPF)
);

CREATE TABLE ItensVenda (
    IDVenda INT,
    IDProduto INT,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (IDVenda, IDProduto),
    FOREIGN KEY (IDVenda) REFERENCES Vendas(IDVenda),
    FOREIGN KEY (IDProduto) REFERENCES Produtos(IDProduto)
);

CREATE TABLE Pagamentos (
    IDPagamento INT PRIMARY KEY AUTO_INCREMENT,
    IDVenda INT NOT NULL,
    DataPagamento DATE NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Pago', 'Pendente')),
    FOREIGN KEY (IDVenda) REFERENCES Vendas(IDVenda)
);

