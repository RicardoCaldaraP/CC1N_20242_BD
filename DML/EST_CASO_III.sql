
INSERT INTO Clientes (Codigo, CNPJ, RazaoSocial, RamoDeAtividade, DataDeCadastramento, PessoaDeContato)
VALUES 
(1, '12.345.678/0001-99', 'Cliente A', 'Tecnologia', '2024-01-01', 'João Silva'),
(2, '98.765.432/0002-11', 'Cliente B', 'Logística', '2024-02-15', 'Maria Oliveira');

INSERT INTO TelefonesClientes (CodigoCliente, Telefone)
VALUES 
(1, '(11) 1234-5678'),
(1, '(11) 8765-4321'),
(2, '(21) 1234-5678');

INSERT INTO EnderecosClientes (CodigoCliente, TipoDeEndereco, Numero, Logradouro, Complemento, CEP, Bairro, Cidade, Estado)
VALUES 
(1, 1, 123, 'Rua A', 'Apt 1', '12345-678', 'Centro', 'São Paulo', 'SP'),
(2, 2, 456, 'Rua B', 'Casa', '87654-321', 'Zona Sul', 'Rio de Janeiro', 'RJ');

INSERT INTO Empregados (Matricula, Nome, Cargo, Salario, DataDeAdmissao, Endereco)
VALUES 
(1001, 'Maria Santos', 'Desenvolvedora', 5000.00, '2023-06-01', NULL),
(1002, 'Carlos Almeida', 'Analista de Dados', 4500.00, '2024-01-20', NULL);

INSERT INTO TelefonesEmpregados (Matricula, Telefone)
VALUES 
(1001, '(11) 9876-5432'),
(1002, '(21) 9988-7766');

INSERT INTO Empresas (CNPJ, RazaoSocial, PessoaDeContato)
VALUES 
('98.765.432/0001-11', 'Empresa X', 'Carlos Costa'),
('33.444.555/0001-22', 'Empresa Y', 'Ana Souza');

INSERT INTO TelefonesEmpresas (CNPJ, Telefone)
VALUES 
('98.765.432/0001-11', '(21) 1234-5678'),
('33.444.555/0001-22', '(31) 9876-5432');

INSERT INTO Fornecedores (CNPJ, RazaoSocial, PessoaDeContato)
VALUES 
('11.222.333/0001-44', 'Fornecedor Y', 'Ana Paula'),
('22.333.444/0001-55', 'Fornecedor Z', 'Roberto Silva');

INSERT INTO TelefonesFornecedores (CNPJ, Telefone)
VALUES 
('11.222.333/0001-44', '(31) 9876-5432'),
('22.333.444/0001-55', '(41) 8765-4321');

INSERT INTO Encomendas (Numero, DataInclusao, ValorTotal, ValorDesconto, ValorLiquido, IDFormaPagamento, QuantidadeParcelas, CodigoCliente)
VALUES 
(1, '2024-02-01', 10000.00, 500.00, 9500.00, 1, 10, 1),
(2, '2024-03-01', 2000.00, 100.00, 1900.00, 2, 5, 2);

INSERT INTO Produtos (Codigo, Nome, Cor, Dimensoes, Peso, Preco, TempoDeFabricacao, HorasDeMaoDeObra)
VALUES 
(101, 'Produto 1', 'Azul', '30x30x30', 2.5, 300.00, '01:30:00', 5),
(102, 'Produto 2', 'Vermelho', '50x50x50', 5.0, 500.00, '02:00:00', 8);

INSERT INTO TiposDeComponentes (Codigo, Nome)
VALUES 
(1, 'Eletrônico'),
(2, 'Mecânico');

INSERT INTO Componentes (Codigo, Nome, QuantidadeEmEstoque, PrecoUnitario, Unidade, Tipo)
VALUES 
(201, 'Componente A', 100, 10.00, 'Unidade', 1),
(202, 'Componente B', 50, 20.00, 'Unidade', 2);

INSERT INTO Maquinas (Codigo, TempoDeVida, DataCompra, DataFimGarantia)
VALUES 
(301, 10, '2020-01-01', '2025-01-01'),
(302, 8, '2018-06-15', '2023-06-15');

INSERT INTO RecursosEspecificos (Codigo, QuantidadeNecessaria, Unidade, TempoDeUso, HorasDeMaoDeObra)
VALUES 
(401, 10, 'Unidades', '00:30:00', 1),
(402, 5, 'Litros', '01:00:00', 2);

INSERT INTO RegistroDeManutencao (Codigo, Data, Descricao)
VALUES 
(501, '2024-01-10', 'Troca de peças principais'),
(502, '2024-02-20', 'Manutenção preventiva geral');

INSERT INTO RegistroDeSuprimentos (Codigo, Quantidade, DataDeNecessidade)
VALUES 
(601, 50, '2024-03-15'),
(602, 100, '2024-04-10');

