-- Consulta 01: Listar todos os funcionários com seus departamentos
SELECT f.nome AS nome_funcionario, f.cargo, f.salario, d.nome AS nome_departamento
FROM funcionario f
JOIN departamento d ON f.id_departamento = d.id_departamento
ORDER BY f.nome;