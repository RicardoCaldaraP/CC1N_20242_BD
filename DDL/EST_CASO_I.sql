CREATE SCHEMA CadeiaSuprimentos;

USE CadeiaSuprimentos;

CREATE TABLE IF NOT EXISTS CadeiaSuprimentos.Fornecedores (
    CodigoFornecedor INT PRIMARY KEY AUTO_INCREMENT,
    NomeEmpresa VARCHAR(100) NOT NULL,
    Endereco TEXT NOT NULL,
    PaisOrigem VARCHAR(50) NOT NULL,
    PessoaContato VARCHAR(100),
    Telefone VARCHAR(20),
    HistoricoFornecimento TEXT
);

CREATE TABLE IF NOT EXISTS CadeiaSuprimentos.Produtos (
    CodigoProduto INT PRIMARY KEY AUTO_INCREMENT,
    NomeProduto VARCHAR(100) NOT NULL,
    Descricao TEXT,
    EspecificacoesTecnicas TEXT,
    UnidadeMedida VARCHAR(20) NOT NULL,
    PrecoUnitario DECIMAL(10, 2) NOT NULL,
    EstoqueAtual INT NOT NULL DEFAULT 0,
    LocalizacaoArmazem TEXT,
    PontoRessuprimento INT NOT NULL
);

CREATE TABLE IF NOT EXISTS CadeiaSuprimentos.PedidosCompra (
    NumeroPedido INT PRIMARY KEY AUTO_INCREMENT,
    DataPedido DATE NOT NULL,
    DataEntregaEsperada DATE,
    StatusPedido VARCHAR(50) NOT NULL,
    CodigoFornecedor INT,
    FOREIGN KEY (CodigoFornecedor) REFERENCES CadeiaSuprimentos.Fornecedores(CodigoFornecedor)
);

CREATE TABLE IF NOT EXISTS CadeiaSuprimentos.Produtos_Pedidos (
    NumeroPedido INT,
    CodigoProduto INT,
    QuantidadeSolicitada INT NOT NULL,
    PRIMARY KEY (NumeroPedido, CodigoProduto),
    FOREIGN KEY (NumeroPedido) REFERENCES CadeiaSuprimentos.PedidosCompra(NumeroPedido),
    FOREIGN KEY (CodigoProduto) REFERENCES CadeiaSuprimentos.Produtos(CodigoProduto)
);

CREATE TABLE IF NOT EXISTS CadeiaSuprimentos.RecebimentosMateriais (
    IDRecebimento INT PRIMARY KEY AUTO_INCREMENT,
    NumeroPedido INT,
    DataRecebimento DATE NOT NULL,
    QuantidadeRecebida INT NOT NULL,
    CondicaoMateriais VARCHAR(50) NOT NULL,
    MotivoRejeicao TEXT,
    FOREIGN KEY (NumeroPedido) REFERENCES CadeiaSuprimentos.PedidosCompra(NumeroPedido)
);

CREATE TABLE IF NOT EXISTS CadeiaSuprimentos.Filiais (
    CodigoFilial INT PRIMARY KEY AUTO_INCREMENT,
    NomeFilial VARCHAR(100) NOT NULL,
    EnderecoFilial TEXT NOT NULL,
    CapacidadeArmazenamento INT NOT NULL
);

CREATE TABLE IF NOT EXISTS CadeiaSuprimentos.Distribuicao (
    CodigoFilial INT,
    CodigoProduto INT,
    QuantidadeTransferida INT NOT NULL,
    PRIMARY KEY (CodigoFilial, CodigoProduto),
    FOREIGN KEY (CodigoFilial) REFERENCES CadeiaSuprimentos.Filiais(CodigoFilial),
    FOREIGN KEY (CodigoProduto) REFERENCES CadeiaSuprimentos.Produtos(CodigoProduto)
);

ALTER TABLE CadeiaSuprimentos.Fornecedores ADD Email VARCHAR(100);

ALTER TABLE CadeiaSuprimentos.Produtos MODIFY PrecoUnitario DECIMAL(15, 2);

ALTER TABLE CadeiaSuprimentos.PedidosCompra CHANGE StatusPedido StatusAtual VARCHAR(50);

ALTER TABLE CadeiaSuprimentos.Filiais DROP CapacidadeArmazenamento;

DROP TABLE IF EXISTS CadeiaSuprimentos.Distribuicao;

