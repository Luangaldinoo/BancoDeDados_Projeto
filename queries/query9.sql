-- 9. Listar as alocações de funcionários por projeto
SELECT a.id_alocacao, f.nome AS funcionario, p.nome_projeto, a.data_alocacao
FROM alocacao a
JOIN funcionario f ON a.id_funcionario = f.id_funcionario
JOIN projeto p ON a.id_projeto = p.id_projeto;
