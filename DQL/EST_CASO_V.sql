SELECT Nome, CPF, DataNascimento, Endereco
FROM Clientes;

SELECT c.Nome AS Cliente, p.Nome AS Produto, v.ValorTotal, v.DataVenda
FROM Vendas v
JOIN Clientes c ON v.ClienteID = c.ID
JOIN Produtos p ON v.ProdutoID = p.ID
WHERE c.CPF = 'XXX.XXX.XXX-XX';

SELECT Nome, Preco, Estoque
FROM Produtos
WHERE Estoque > 0;

SELECT f.Nome AS Fornecedor, p.Nome AS Produto, p.Preco
FROM Fornecedores f
JOIN Produtos p ON f.ID = p.FornecedorID;

SELECT c.Nome AS Cliente, v.DataVenda, p.Status
FROM Pagamentos p
JOIN Vendas v ON p.VendaID = v.ID
JOIN Clientes c ON v.ClienteID = c.ID
WHERE p.Status = 'Pendente';

