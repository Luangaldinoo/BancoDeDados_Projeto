-- ===============================================
-- BANCO DE DADOS: Engenharia_DB
-- SISTEMA DE GERENCIAMENTO DE EMPRESA DE ENGENHARIA
-- Autor: Luan Morais Galdino
-- ===============================================

CREATE DATABASE engenharia_db;
\c engenharia_db;

CREATE TABLE departamento (
    id_departamento SERIAL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    descricao VARCHAR(150)
);

INSERT INTO departamento (nome, descricao) VALUES
('Engenharia Civil', 'Projetos e execução de obras civis'),
('Elétrica', 'Instalações e manutenção elétrica'),
('Planejamento', 'Controle de cronogramas e custos'),
('Financeiro', 'Gestão financeira e contábil'),
('Recursos Humanos', 'Gestão de pessoas e benefícios'),
('TI', 'Suporte técnico e infraestrutura'),
('Segurança do Trabalho', 'Controle de segurança nas obras'),
('Compras', 'Gestão de materiais e fornecedores');

CREATE TABLE funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    cargo VARCHAR(50),
    salario NUMERIC(10,2),
    data_admissao DATE,
    id_departamento INT REFERENCES departamento(id_departamento)
);

INSERT INTO funcionario (nome, cargo, salario, data_admissao, id_departamento) VALUES
('Lucas Andrade', 'Engenheiro Civil', 8500.00, '2021-02-15', 1),
('Mariana Silva', 'Técnica em Elétrica', 4200.00, '2022-06-10', 2),
('João Pereira', 'Planejador de Obras', 6000.00, '2020-08-05', 3),
('Ana Costa', 'Analista Financeira', 5500.00, '2023-01-12', 4),
('Rafael Santos', 'Recrutador', 4000.00, '2022-03-20', 5),
('Camila Oliveira', 'Analista de TI', 5000.00, '2021-11-05', 6),
('Pedro Lima', 'Técnico de Segurança', 3800.00, '2020-09-18', 7),
('Fernanda Rocha', 'Compradora Sênior', 5200.00, '2023-05-02', 8);

CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    empresa VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO cliente (nome, empresa, telefone, email) VALUES
('Carlos Mendes', 'Construtora Alfa', '71991223354', 'carlos@alfa.com'),
('Juliana Prado', 'Imobiliária Sol', '71992547896', 'juliana@sol.com'),
('Bruno Nogueira', 'Prefeitura Municipal', '7133012299', 'bruno@prefeitura.gov'),
('Fernanda Dias', 'Hospital Vida', '71987002456', 'fernanda@vida.org'),
('Ricardo Matos', 'Condomínio Bela Vista', '71988994411', 'ricardo@bela.com'),
('Patrícia Souza', 'Shopping Camaçari', '71998221144', 'patricia@shopping.com'),
('Eduardo Freitas', 'Engenharia Delta', '71991111222', 'eduardo@delta.com'),
('Roberta Lima', 'Construtora Ponto Forte', '71992223344', 'roberta@pforte.com');

CREATE TABLE servico (
    id_servico SERIAL PRIMARY KEY,
    nome VARCHAR(80),
    descricao TEXT,
    valor NUMERIC(10,2)
);

INSERT INTO servico (nome, descricao, valor) VALUES
('Construção de Fundação', 'Execução de fundação em concreto armado', 20000.00),
('Instalação Elétrica', 'Projeto e instalação elétrica predial', 15000.00),
('Reforma Predial', 'Reforma completa de edifício comercial', 35000.00),
('Topografia', 'Levantamento topográfico de terreno', 8000.00),
('Pintura Industrial', 'Pintura de estruturas metálicas', 12000.00),
('Laudo Técnico', 'Emissão de laudo estrutural', 4000.00),
('Gerenciamento de Obras', 'Acompanhamento e controle de execução', 10000.00),
('Projeto Estrutural', 'Desenvolvimento de projeto estrutural', 18000.00);

CREATE TABLE projeto (
    id_projeto SERIAL PRIMARY KEY,
    nome VARCHAR(80),
    id_cliente INT REFERENCES cliente(id_cliente),
    id_responsavel INT REFERENCES funcionario(id_funcionario),
    data_inicio DATE,
    data_fim DATE,
    status VARCHAR(30)
);

INSERT INTO projeto (nome, id_cliente, id_responsavel, data_inicio, data_fim, status) VALUES
('Residencial Jardim das Flores', 1, 1, '2023-02-01', '2023-11-30', 'Concluído'),
('Reforma Hospital Vida', 4, 3, '2023-05-10', '2024-01-15', 'Em andamento'),
('Instalação Elétrica Shopping', 6, 2, '2024-03-20', '2024-09-05', 'Em andamento'),
('Nova Sede Prefeitura', 3, 1, '2022-08-01', '2023-06-30', 'Concluído'),
('Prédio Comercial Sol', 2, 3, '2024-01-10', '2024-10-25', 'Em andamento'),
('Reforma Condomínio Bela Vista', 5, 1, '2023-09-15', '2024-05-10', 'Em andamento'),
('Projeto Estrutural Delta', 7, 6, '2024-02-05', '2024-08-12', 'Concluído'),
('Obra Industrial Ponto Forte', 8, 1, '2023-07-01', '2024-04-01', 'Concluído');

CREATE TABLE projeto_servico (
    id_projeto INT REFERENCES projeto(id_projeto),
    id_servico INT REFERENCES servico(id_servico),
    PRIMARY KEY (id_projeto, id_servico)
);

INSERT INTO projeto_servico (id_projeto, id_servico) VALUES
(1, 1), (1, 7),
(2, 3), (2, 5),
(3, 2), (3, 4),
(4, 1), (4, 6),
(5, 8), (5, 7),
(6, 3), (6, 5),
(7, 8), (7, 6),
(8, 1), (8, 2);

CREATE TABLE material (
    id_material SERIAL PRIMARY KEY,
    nome VARCHAR(80),
    unidade VARCHAR(20),
    preco_unitario NUMERIC(10,2)
);

INSERT INTO material (nome, unidade, preco_unitario) VALUES
('Cimento CP-II', 'Saco 50kg', 40.00),
('Areia Média', 'm³', 120.00),
('Brita 1', 'm³', 150.00),
('Tubo PVC 50mm', 'Unidade', 25.00),
('Cabo 2,5mm', 'Metro', 3.50),
('Tinta Acrílica', 'Galão', 180.00),
('Vergalhão 10mm', 'Barra', 55.00),
('Conector Elétrico', 'Unidade', 2.50);

CREATE TABLE estoque (
    id_estoque SERIAL PRIMARY KEY,
    id_material INT REFERENCES material(id_material),
    quantidade NUMERIC(10,2),
    localizacao VARCHAR(60)
);

INSERT INTO estoque (id_material, quantidade, localizacao) VALUES
(1, 250, 'Galpão 1'),
(2, 120, 'Galpão 1'),
(3, 150, 'Galpão 1'),
(4, 300, 'Depósito 2'),
(5, 500, 'Depósito 2'),
(6, 80, 'Depósito 1'),
(7, 400, 'Galpão 3'),
(8, 600, 'Depósito 3');
