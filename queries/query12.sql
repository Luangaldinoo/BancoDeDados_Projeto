-- 12. Listar funcionários e a quantidade total de projetos em que estão alocados
SELECT f.nome AS funcionario, COUNT(a.id_projeto) AS total_projetos
FROM funcionario f
LEFT JOIN alocacao a ON f.id_funcionario = a.id_funcionario
GROUP BY f.nome
ORDER BY total_projetos DESC;
