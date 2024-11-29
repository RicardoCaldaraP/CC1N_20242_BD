SELECT a.Nome AS Aluno, a.Matricula, c.Nome AS Curso
FROM Alunos a
JOIN Cursos c ON a.CursoID = c.ID;

SELECT c.Nome AS Curso, d.Nome AS Disciplina
FROM Cursos c
JOIN Disciplinas d ON c.ID = d.CursoID
WHERE c.Nome = 'Ciência da Computação';

SELECT p.Nome AS Professor, d.Nome AS Disciplina
FROM Professores p
JOIN Disciplinas d ON p.ID = d.ProfessorID;

SELECT a.Nome AS Aluno, d.Nome AS Disciplina, h.Nota, h.Frequencia
FROM Alunos a
JOIN Historicos h ON a.ID = h.AlunoID
JOIN Disciplinas d ON h.DisciplinaID = d.ID
WHERE a.Matricula = 'XXXXXXXX';

SELECT a.Nome AS Aluno, d.Nome AS Disciplina, h.Frequencia
FROM Alunos a
JOIN Historicos h ON a.ID = h.AlunoID
JOIN Disciplinas d ON h.DisciplinaID = d.ID
WHERE d.Nome = 'Banco de Dados' AND h.Frequencia < 75;

