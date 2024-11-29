SELECT Nome, CPF, Telefone
FROM Leitores;

SELECT l.Nome AS Leitor, e.Titulo AS Livro, e.Autor
FROM Emprestimos em
JOIN Leitores l ON em.LeitorID = l.ID
JOIN Exemplares e ON em.ExemplarID = e.ID
WHERE l.CPF = 'XXX.XXX.XXX-XX';

SELECT e.Titulo AS Livro, e.Autor, e.Edicao, e.Editora
FROM Exemplares e
JOIN Emprestimos em ON e.ID = em.ExemplarID
WHERE e.Titulo LIKE '%Python%';

SELECT l.Nome AS Leitor, e.Titulo AS Livro, em.DataEmprestimo, em.DataDevolucao
FROM Leitores l
JOIN Emprestimos em ON l.ID = em.LeitorID
JOIN Exemplares e ON em.ExemplarID = e.ID
WHERE em.DataDevolucao IS NULL;

SELECT e.Titulo AS Livro, e.Autor
FROM Exemplares e
JOIN Emprestimos em ON e.ID = em.ExemplarID
JOIN Leitores l ON em.LeitorID = l.ID
WHERE l.CPF = 'XXX.XXX.XXX-XX' AND em.DataDevolucao < '2024-12-01';

