-- 11. Mostrar o estoque total de materiais por fornecedor
SELECT f.nome_fornecedor, SUM(m.quantidade_estoque) AS total_estoque
FROM fornecedor f
JOIN material m ON f.id_fornecedor = m.id_fornecedor
GROUP BY f.nome_fornecedor;