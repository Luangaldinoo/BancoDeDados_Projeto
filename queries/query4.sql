-- 4. Listar materiais e seus respectivos fornecedores
SELECT m.id_material, m.nome_material, m.quantidade_estoque, f.nome_fornecedor
FROM material m
JOIN fornecedor f ON m.id_fornecedor = f.id_fornecedor;