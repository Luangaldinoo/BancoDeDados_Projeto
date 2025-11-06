-- 6. Listar funcionários com salário acima de R$ 5.000
SELECT nome, cargo, salario
FROM funcionario
WHERE salario > 5000
ORDER BY salario DESC;
