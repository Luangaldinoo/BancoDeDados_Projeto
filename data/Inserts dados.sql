
-- INSERÇÕES DE DADOS - Banco Engenharia_DB

-- Tabela: departamentos
INSERT INTO departamentos (id_departamento, nome, localizacao) VALUES
(1, 'Engenharia Civil', 'Bloco A'),
(2, 'Elétrica', 'Bloco B'),
(3, 'Mecânica', 'Bloco C'),
(4, 'Arquitetura', 'Bloco D'),
(5, 'Financeiro', 'Bloco E'),
(6, 'Recursos Humanos', 'Bloco F'),
(7, 'Logística', 'Bloco G'),
(8, 'TI', 'Bloco H');

-- Tabela: funcionarios
INSERT INTO funcionarios (id_funcionario, nome, cargo, salario, id_departamento) VALUES
(1, 'Carlos Silva', 'Engenheiro Civil', 8500.00, 1),
(2, 'Mariana Souza', 'Arquiteta', 7800.00, 4),
(3, 'João Pereira', 'Técnico Elétrico', 4500.00, 2),
(4, 'Ana Costa', 'Gerente Financeiro', 9200.00, 5),
(5, 'Rafael Santos', 'Analista de TI', 6300.00, 8),
(6, 'Fernanda Lima', 'Engenheira Mecânica', 8700.00, 3),
(7, 'Lucas Almeida', 'Coordenador de Logística', 7100.00, 7),
(8, 'Patrícia Ramos', 'Analista de RH', 5400.00, 6);

-- Tabela: clientes
INSERT INTO clientes (id_cliente, nome, empresa, telefone, email) VALUES
(1, 'Construtora Alpha', 'Alpha Ltda', '(71) 3333-1001', 'contato@alpha.com'),
(2, 'Construtora Beta', 'Beta Engenharia', '(71) 3333-1002', 'contato@beta.com'),
(3, 'Construtora Gama', 'Gama Construtora', '(71) 3333-1003', 'contato@gama.com'),
(4, 'Construtora Delta', 'Delta Engenharia', '(71) 3333-1004', 'contato@delta.com'),
(5, 'Construtora Epsilon', 'Epsilon Obras', '(71) 3333-1005', 'contato@epsilon.com'),
(6, 'Construtora Zeta', 'Zeta Ltda', '(71) 3333-1006', 'contato@zeta.com'),
(7, 'Construtora Omega', 'Omega Projetos', '(71) 3333-1007', 'contato@omega.com'),
(8, 'Construtora Sigma', 'Sigma Engenharia', '(71) 3333-1008', 'contato@sigma.com');

-- Tabela: projetos
INSERT INTO projetos (id_projeto, nome, id_cliente, data_inicio, data_fim) VALUES
(1, 'Edifício Central', 1, '2025-01-10', '2025-06-30'),
(2, 'Ponte Leste', 2, '2025-02-05', '2025-08-15'),
(3, 'Shopping Costa Azul', 3, '2025-03-01', '2025-11-20'),
(4, 'Condomínio Bela Vista', 4, '2025-01-25', '2025-10-10'),
(5, 'Galpão Industrial', 5, '2025-04-12', '2025-12-01'),
(6, 'Residencial Jardim', 6, '2025-02-20', '2025-09-18'),
(7, 'Hospital São Lucas', 7, '2025-05-01', '2025-12-30'),
(8, 'Universidade Nova', 8, '2025-06-10', '2026-02-28');

-- Tabela: servicos
INSERT INTO servicos (id_servico, descricao, id_projeto, valor, status) VALUES
(1, 'Topografia', 1, 15000.00, 'Concluído'),
(2, 'Fundação', 2, 30000.00, 'Em andamento'),
(3, 'Estrutura', 3, 50000.00, 'Planejado'),
(4, 'Acabamento', 4, 20000.00, 'Planejado'),
(5, 'Instalações Elétricas', 5, 12000.00, 'Concluído'),
(6, 'Pintura', 6, 8000.00, 'Concluído'),
(7, 'Revestimento', 7, 9000.00, 'Em andamento'),
(8, 'Jardinagem', 8, 7000.00, 'Planejado');

-- Tabela: alocacoes
INSERT INTO alocacoes (id_alocacao, id_funcionario, id_projeto, data_inicio, data_fim) VALUES
(1, 1, 1, '2025-01-10', '2025-03-15'),
(2, 2, 4, '2025-02-01', '2025-04-20'),
(3, 3, 2, '2025-02-10', '2025-05-01'),
(4, 4, 5, '2025-03-15', '2025-06-30'),
(5, 5, 8, '2025-06-15', '2025-08-30'),
(6, 6, 3, '2025-03-10', '2025-07-10'),
(7, 7, 7, '2025-05-20', '2025-09-30'),
(8, 8, 6, '2025-02-25', '2025-04-25');

-- Tabela: fornecedores
INSERT INTO fornecedores (id_fornecedor, nome, cnpj, telefone, email) VALUES
(1, 'ConcreMix', '12.345.678/0001-01', '(71) 3222-2001', 'contato@concremix.com'),
(2, 'EletroBahia', '12.345.678/0001-02', '(71) 3222-2002', 'vendas@eletrobahia.com'),
(3, 'Mecânica Pro', '12.345.678/0001-03', '(71) 3222-2003', 'atendimento@mecpro.com'),
(4, 'ArquiDesign', '12.345.678/0001-04', '(71) 3222-2004', 'design@arquidesign.com'),
(5, 'FinanceCorp', '12.345.678/0001-05', '(71) 3222-2005', 'contato@financecorp.com'),
(6, 'RHGlobal', '12.345.678/0001-06', '(71) 3222-2006', 'rh@rhglobal.com'),
(7, 'LogiMax', '12.345.678/0001-07', '(71) 3222-2007', 'logi@logimax.com'),
(8, 'TechPlus', '12.345.678/0001-08', '(71) 3222-2008', 'suporte@techplus.com');

-- Tabela: materiais
INSERT INTO materiais (id_material, nome, quantidade, preco_unitario, id_fornecedor) VALUES
(1, 'Cimento CP-II', 100, 45.00, 1),
(2, 'Fio 4mm', 500, 2.50, 2),
(3, 'Tubo PVC 50mm', 200, 10.00, 3),
(4, 'Tinta acrílica branca', 80, 150.00, 4),
(5, 'Aço CA-50', 150, 35.00, 1),
(6, 'Parafusos galvanizados', 1000, 0.30, 3),
(7, 'Areia lavada', 200, 70.00, 1),
(8, 'Lâmpada LED 9W', 300, 15.00, 2);
