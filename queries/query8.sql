-- 8. Mostrar todos os clientes e quantos projetos cada um possui
SELECT c.nome AS cliente, COUNT(p.id_projeto) AS total_projetos
FROM cliente c
LEFT JOIN projeto p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;