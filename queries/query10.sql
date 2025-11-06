-- 10. Exibir os serviços com valor acima da média
SELECT nome_servico, valor
FROM servico
WHERE valor > (SELECT AVG(valor) FROM servico);
