
INSERT INTO CadeiaSuprimentos.Fornecedores (NomeEmpresa, Endereco, PaisOrigem, PessoaContato, Telefone, HistoricoFornecimento) 
VALUES ('Fornecedor A', 'Rua 1, Bairro Centro', 'Brasil', 'João Silva', '11987654321', 'Entrega em 01/11/2024: 100 unidades');

INSERT INTO CadeiaSuprimentos.Fornecedores (NomeEmpresa, Endereco, PaisOrigem, PessoaContato, Telefone, HistoricoFornecimento) 
VALUES ('Fornecedor B', 'Avenida 2, Bairro Industrial', 'EUA', 'Jane Doe', '123456789', 'Entrega em 10/10/2024: 200 unidades');

INSERT INTO CadeiaSuprimentos.Fornecedores (NomeEmpresa, Endereco, PaisOrigem, PessoaContato, Telefone, HistoricoFornecimento) 
VALUES ('Fornecedor C', 'Rua 3, Bairro Comercial', 'China', 'Li Wei', '987654321', 'Entrega em 15/09/2024: 150 unidades');

INSERT INTO CadeiaSuprimentos.Fornecedores (NomeEmpresa, Endereco, PaisOrigem, PessoaContato, Telefone, HistoricoFornecimento) 
VALUES ('Fornecedor D', 'Rua 4, Bairro Industrial', 'Alemanha', 'Hans Müller', '4455667788', 'Entrega em 20/08/2024: 120 unidades');

INSERT INTO CadeiaSuprimentos.Fornecedores (NomeEmpresa, Endereco, PaisOrigem, PessoaContato, Telefone, HistoricoFornecimento) 
VALUES ('Fornecedor E', 'Avenida 5, Bairro Tecnológico', 'Índia', 'Anil Kapoor', '9988776655', 'Entrega em 25/07/2024: 180 unidades');

INSERT INTO CadeiaSuprimentos.Produtos (NomeProduto, Descricao, EspecificacoesTecnicas, UnidadeMedida, PrecoUnitario, EstoqueAtual, LocalizacaoArmazem, PontoRessuprimento) 
VALUES ('Produto X', 'Descrição X', 'Especificações X', 'Unidade', 10.50, 50, 'Armazém A', 30);

INSERT INTO CadeiaSuprimentos.Produtos (NomeProduto, Descricao, EspecificacoesTecnicas, UnidadeMedida, PrecoUnitario, EstoqueAtual, LocalizacaoArmazem, PontoRessuprimento) 
VALUES ('Produto Y', 'Descrição Y', 'Especificações Y', 'Litros', 5.25, 100, 'Armazém B', 50);

INSERT INTO CadeiaSuprimentos.Produtos (NomeProduto, Descricao, EspecificacoesTecnicas, UnidadeMedida, PrecoUnitario, EstoqueAtual, LocalizacaoArmazem, PontoRessuprimento) 
VALUES ('Produto Z', 'Descrição Z', 'Especificações Z', 'Quilos', 20.00, 200, 'Armazém C', 100);

INSERT INTO CadeiaSuprimentos.Produtos (NomeProduto, Descricao, EspecificacoesTecnicas, UnidadeMedida, PrecoUnitario, EstoqueAtual, LocalizacaoArmazem, PontoRessuprimento) 
VALUES ('Produto W', 'Descrição W', 'Especificações W', 'Unidade', 15.75, 75, 'Armazém D', 25);

INSERT INTO CadeiaSuprimentos.Produtos (NomeProduto, Descricao, EspecificacoesTecnicas, UnidadeMedida, PrecoUnitario, EstoqueAtual, LocalizacaoArmazem, PontoRessuprimento) 
VALUES ('Produto V', 'Descrição V', 'Especificações V', 'Litros', 8.60, 40, 'Armazém E', 20);

INSERT INTO CadeiaSuprimentos.PedidosCompra (DataPedido, DataEntregaEsperada, StatusPedido, CodigoFornecedor)
VALUES ('2024-11-01', '2024-11-15', 'Em processamento', 1);

INSERT INTO CadeiaSuprimentos.PedidosCompra (DataPedido, DataEntregaEsperada, StatusPedido, CodigoFornecedor)
VALUES ('2024-10-20', '2024-11-05', 'Enviado', 2);

INSERT INTO CadeiaSuprimentos.PedidosCompra (DataPedido, DataEntregaEsperada, StatusPedido, CodigoFornecedor)
VALUES ('2024-10-10', '2024-10-25', 'Recebido', 3);

INSERT INTO CadeiaSuprimentos.PedidosCompra (DataPedido, DataEntregaEsperada, StatusPedido, CodigoFornecedor)
VALUES ('2024-09-30', '2024-10-15', 'Cancelado', 4);

INSERT INTO CadeiaSuprimentos.PedidosCompra (DataPedido, DataEntregaEsperada, StatusPedido, CodigoFornecedor)
VALUES ('2024-09-20', '2024-10-05', 'Recebido', 5);

INSERT INTO CadeiaSuprimentos.Produtos_Pedidos (NumeroPedido, CodigoProduto, QuantidadeSolicitada)
VALUES (1, 1, 10);

INSERT INTO CadeiaSuprimentos.Produtos_Pedidos (NumeroPedido, CodigoProduto, QuantidadeSolicitada)
VALUES (1, 2, 15);

INSERT INTO CadeiaSuprimentos.Produtos_Pedidos (NumeroPedido, CodigoProduto, QuantidadeSolicitada)
VALUES (2, 3, 20);

INSERT INTO CadeiaSuprimentos.Produtos_Pedidos (NumeroPedido, CodigoProduto, QuantidadeSolicitada)
VALUES (3, 4, 25);

INSERT INTO CadeiaSuprimentos.Produtos_Pedidos (NumeroPedido, CodigoProduto, QuantidadeSolicitada)
VALUES (4, 5, 30);

UPDATE CadeiaSuprimentos.Fornecedores 
SET Telefone = '1122334455' 
WHERE CodigoFornecedor = 1;

UPDATE CadeiaSuprimentos.Fornecedores 
SET PaisOrigem = 'México' 
WHERE CodigoFornecedor = 2;

UPDATE CadeiaSuprimentos.Produtos 
SET PrecoUnitario = 12.00 
WHERE CodigoProduto = 1;

UPDATE CadeiaSuprimentos.Produtos 
SET EstoqueAtual = EstoqueAtual + 20 
WHERE CodigoProduto = 2;

UPDATE CadeiaSuprimentos.PedidosCompra 
SET StatusPedido = 'Finalizado' 
WHERE NumeroPedido = 3;

UPDATE CadeiaSuprimentos.PedidosCompra 
SET DataEntregaEsperada = '2024-11-20' 
WHERE NumeroPedido = 1;

DELETE FROM CadeiaSuprimentos.Fornecedores 
WHERE CodigoFornecedor = 5;

DELETE FROM CadeiaSuprimentos.Produtos 
WHERE CodigoProduto = 5;

DELETE FROM CadeiaSuprimentos.PedidosCompra 
WHERE NumeroPedido = 4;

