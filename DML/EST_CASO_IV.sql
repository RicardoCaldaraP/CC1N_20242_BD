
INSERT INTO Alunos (CPF, Nome, DataNascimento, Endereco)
VALUES 
('12345678901', 'João Silva', '2000-05-12', 'Rua A, 123'),
('98765432100', 'Maria Oliveira', '1995-09-30', 'Av. B, 456');

INSERT INTO Instrutores (Nome, CPF, Especialidade)
VALUES 
('Carlos Santos', '11122233344', 'Musculação'),
('Ana Paula', '55566677788', 'Natação');

INSERT INTO Modalidades (Nome, Descricao)
VALUES 
('Musculação', 'Treinamento com pesos para ganho de massa muscular.'),
('Natação', 'Atividade física aquática para condicionamento.');

INSERT INTO AlunosModalidades (CPFAluno, IDModalidade)
VALUES 
('12345678901', 1),
('98765432100', 2);

INSERT INTO PlanosDeTreinamento (CPFAluno, IDInstrutor, DataInicio, DataFim, Descricao)
VALUES 
('12345678901', 1, '2024-01-01', '2024-03-31', 'Treinamento básico de musculação.'),
('98765432100', 2, '2024-01-15', NULL, 'Aulas intensivas de natação.');

INSERT INTO Aulas (IDModalidade, IDInstrutor, Horario, Capacidade)
VALUES 
(1, 1, '2024-03-01 08:00:00', 15),
(2, 2, '2024-03-01 10:00:00', 10);

INSERT INTO AulasAlunos (IDAula, CPFAluno)
VALUES 
(1, '12345678901'),
(2, '98765432100');

INSERT INTO Pagamentos (CPFAluno, DataPagamento, Valor, Status)
VALUES 
('12345678901', '2024-02-01', 150.00, 'Pago'),
('98765432100', '2024-02-05', 200.00, 'Pendente');

