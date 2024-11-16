
INSERT INTO Clientes (CPF, Nome, DataNascimento, Endereco, Fidelidade)
VALUES 
('12345678901', 'Carlos Almeida', '1985-04-22', 'Rua Principal, 100', TRUE),
('98765432100', 'Ana Souza', '1990-07-15', 'Av. Central, 450', FALSE);

INSERT INTO Fornecedores (Nome, Telefone, Email, Endereco)
VALUES 
('Tech Distribuidora', '1234567890', 'contato@techdistribuidora.com', 'Rua dos Fornecedores, 200'),
('Soft Supplies', '0987654321', 'vendas@softsupplies.com', 'Av. Empresarial, 300');

INSERT INTO Produtos (Nome, Categoria, Preco, Estoque, IDFornecedor)
VALUES 
('Notebook XYZ', 'Computadores', 3500.00, 10, 1),
('Mouse Gamer', 'Acessórios', 150.00, 50, 1),
('Antivírus Pro', 'Software', 100.00, 20, 2);

INSERT INTO Vendas (CPFCliente, DataVenda, Total)
VALUES 
('12345678901', '2024-03-10', 3650.00),
('98765432100', '2024-03-11', 150.00);

INSERT INTO ItensVenda (IDVenda, IDProduto, Quantidade, PrecoUnitario)
VALUES 
(1, 1, 1, 3500.00),
(1, 2, 1, 150.00),
(2, 2, 1, 150.00);

INSERT INTO Pagamentos (IDVenda, DataPagamento, Valor, Status)
VALUES 
(1, '2024-03-12', 3650.00, 'Pago'),
(2, '2024-03-13', 150.00, 'Pendente');

