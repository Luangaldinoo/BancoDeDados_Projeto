-- 3. Consultar serviços realizados em cada projeto
SELECT s.id_servico, s.nome_servico, s.valor, p.nome_projeto
FROM servico s
JOIN projeto p ON s.id_projeto = p.id_projeto;
