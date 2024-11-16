
CREATE TABLE Clientes (
    Codigo INT PRIMARY KEY,
    CNPJ VARCHAR(20) NOT NULL,
    RazaoSocial VARCHAR(255) NOT NULL,
    RamoDeAtividade VARCHAR(255),
    DataDeCadastramento DATE NOT NULL,
    PessoaDeContato VARCHAR(255)
);

CREATE TABLE TelefonesClientes (
    CodigoCliente INT,
    Telefone VARCHAR(15),
    PRIMARY KEY (CodigoCliente, Telefone),
    FOREIGN KEY (CodigoCliente) REFERENCES Clientes(Codigo)
);

CREATE TABLE EnderecosClientes (
    CodigoCliente INT,
    TipoDeEndereco INT,
    Numero INT,
    Logradouro VARCHAR(255),
    Complemento VARCHAR(255),
    CEP VARCHAR(10),
    Bairro VARCHAR(255),
    Cidade VARCHAR(255),
    Estado VARCHAR(2),
    PRIMARY KEY (CodigoCliente, TipoDeEndereco, CEP),
    FOREIGN KEY (CodigoCliente) REFERENCES Clientes(Codigo),
    FOREIGN KEY (TipoDeEndereco) REFERENCES TipoDeEndereco(Codigo)
);

CREATE TABLE Empregados (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(255),
    Salario DECIMAL(10, 2),
    DataDeAdmissao DATE NOT NULL,
    Endereco INT
);

CREATE TABLE TelefonesEmpregados (
    Matricula INT,
    Telefone VARCHAR(15),
    PRIMARY KEY (Matricula, Telefone),
    FOREIGN KEY (Matricula) REFERENCES Empregados(Matricula)
);

CREATE TABLE Empresas (
    CNPJ VARCHAR(20) PRIMARY KEY,
    RazaoSocial VARCHAR(255) NOT NULL,
    PessoaDeContato VARCHAR(255)
);

CREATE TABLE TelefonesEmpresas (
    CNPJ VARCHAR(20),
    Telefone VARCHAR(15),
    PRIMARY KEY (CNPJ, Telefone),
    FOREIGN KEY (CNPJ) REFERENCES Empresas(CNPJ)
);

CREATE TABLE Fornecedores (
    CNPJ VARCHAR(20) PRIMARY KEY,
    RazaoSocial VARCHAR(255) NOT NULL,
    PessoaDeContato VARCHAR(255)
);

CREATE TABLE TelefonesFornecedores (
    CNPJ VARCHAR(20),
    Telefone VARCHAR(15),
    PRIMARY KEY (CNPJ, Telefone),
    FOREIGN KEY (CNPJ) REFERENCES Fornecedores(CNPJ)
);

CREATE TABLE TipoDeEndereco (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Encomendas (
    Numero INT PRIMARY KEY,
    DataInclusao DATE NOT NULL,
    ValorTotal DECIMAL(10, 2),
    ValorDesconto DECIMAL(10, 2),
    ValorLiquido DECIMAL(10, 2),
    IDFormaPagamento INT,
    QuantidadeParcelas INT,
    CodigoCliente INT NOT NULL,
    FOREIGN KEY (CodigoCliente) REFERENCES Clientes(Codigo)
);

CREATE TABLE Produtos (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cor VARCHAR(50),
    Dimensoes VARCHAR(255),
    Peso DECIMAL(10, 2),
    Preco DECIMAL(10, 2),
    TempoDeFabricacao TIME,
    DesenhoProduto BLOB,
    HorasDeMaoDeObra DECIMAL(10, 2)
);

CREATE TABLE TiposDeComponentes (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Componentes (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    QuantidadeEmEstoque INT,
    PrecoUnitario DECIMAL(10, 2),
    Unidade VARCHAR(20),
    Tipo INT,
    FOREIGN KEY (Tipo) REFERENCES TiposDeComponentes(Codigo)
);

CREATE TABLE Maquinas (
    Codigo INT PRIMARY KEY,
    TempoDeVida INT,
    DataCompra DATE,
    DataFimGarantia DATE
);

CREATE TABLE RecursosEspecificos (
    Codigo INT PRIMARY KEY,
    QuantidadeNecessaria DECIMAL(10, 2),
    Unidade VARCHAR(20),
    TempoDeUso TIME,
    HorasDeMaoDeObra DECIMAL(10, 2)
);

CREATE TABLE RegistroDeManutencao (
    Codigo INT PRIMARY KEY,
    Data DATE NOT NULL,
    Descricao TEXT
);

CREATE TABLE RegistroDeSuprimentos (
    Codigo INT PRIMARY KEY,
    Quantidade DECIMAL(10, 2),
    DataDeNecessidade DATE
);

