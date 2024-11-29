SELECT Nome, CPF, DataNascimento, Endereco
FROM Alunos;

SELECT a.Nome AS Aluno, m.Nome AS Modalidade
FROM Alunos a
JOIN Matriculas m ON a.ID = m.AlunoID
JOIN Modalidades mo ON m.ModalidadeID = mo.ID
WHERE mo.Nome = 'Musculação';

SELECT a.Nome AS Aluno, t.Descricao AS Plano, i.Nome AS Instrutor
FROM Alunos a
JOIN Treinos t ON a.ID = t.AlunoID
JOIN Instrutores i ON t.InstrutorID = i.ID;

SELECT h.Horario, m.Nome AS Modalidade, i.Nome AS Instrutor, COUNT(a.ID) AS Participantes
FROM Aulas h
JOIN Modalidades m ON h.ModalidadeID = m.ID
JOIN Instrutores i ON h.InstrutorID = i.ID
JOIN Matriculas mat ON m.ID = mat.ModalidadeID
JOIN Alunos a ON mat.AlunoID = a.ID
WHERE m.Nome = 'Pilates'
GROUP BY h.Horario, m.Nome, i.Nome;

SELECT a.Nome AS Aluno, p.DataPagamento, p.Valor, p.Status
FROM Alunos a
JOIN Pagamentos p ON a.ID = p.AlunoID
WHERE p.Status = 'Pendente';

