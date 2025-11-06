-- 7. Calcular o valor total dos serviços por projeto
SELECT p.nome_projeto, SUM(s.valor) AS total_servicos
FROM projeto p
JOIN servico s ON p.id_projeto = s.id_projeto
GROUP BY p.nome_projeto;