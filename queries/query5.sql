-- 5. Mostrar os projetos em andamento
SELECT id_projeto, nome_projeto, data_inicio, data_fim
FROM projeto
WHERE data_fim IS NULL OR data_fim > CURRENT_DATE;