-- 2. Mostrar todos os projetos com nome do cliente e responsável
SELECT p.id_projeto, p.nome_projeto, c.nome AS cliente, f.nome AS responsavel, p.data_inicio, p.data_fim
FROM projeto p
JOIN cliente c ON p.id_cliente = c.id_cliente
JOIN funcionario f ON p.id_funcionario_responsavel = f.id_funcionario;
