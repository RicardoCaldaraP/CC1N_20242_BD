SELECT Nome, CPF, DataNascimento, Telefone
FROM Pacientes;

SELECT c.Data, c.Horario, m.Nome AS Medico, c.Descricao
FROM Consultas c
JOIN Pacientes p ON c.PacienteID = p.ID
JOIN Medicos m ON c.MedicoID = m.ID
WHERE p.CPF = 'XXX.XXX.XXX-XX';

SELECT m.Nome AS Medico, e.Nome AS Especialidade
FROM Medicos m
JOIN Especialidades e ON m.EspecialidadeID = e.ID;

SELECT c.Data, c.Horario, p.Nome AS Paciente, m.Nome AS Medico
FROM Consultas c
JOIN Pacientes p ON c.PacienteID = p.ID
JOIN Medicos m ON c.MedicoID = m.ID
WHERE c.Data = '2024-12-01';

SELECT p.Nome AS Paciente, c.Data, c.Horario
FROM Consultas c
JOIN Pacientes p ON c.PacienteID = p.ID
JOIN Medicos m ON c.MedicoID = m.ID
WHERE m.Nome = 'Dra. Ana Maria';
