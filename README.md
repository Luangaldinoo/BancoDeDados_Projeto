# 🏗️ Sistema de Gestão para Empresa de Engenharia

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?logo=postgresql&logoColor=white)](https://www.postgresql.org/)

> Banco de dados completo para gerenciamento de empresas de engenharia — incluindo controle de funcionários, projetos, clientes, fornecedores, serviços, alocações e materiais.

## 📋 Sobre o Projeto

Este projeto fornece uma **estrutura de banco de dados PostgreSQL completa e modular** para gerenciamento de empresas de engenharia.  
Ele abrange desde o **cadastro de clientes e funcionários** até **gestão de projetos, materiais, fornecedores e serviços**, com consultas analíticas e relatórios gerenciais prontos.

## ✨ Funcionalidades

- **Gestão de Funcionários**: Cadastro com cargos, salários e departamentos  
- **Gestão de Projetos**: Acompanhamento de projetos, prazos e responsáveis  
- **Controle de Clientes**: Registro de clientes e histórico de contratos  
- **Serviços e Custos**: Cadastro de serviços e valores aplicados  
- **Materiais e Estoque**: Controle de insumos e fornecedores  
- **Alocação de Equipes**: Relacionamento entre funcionários e projetos  
- **Relatórios Analíticos**: Consultas SQL avançadas para decisões estratégicas  

## 🗂️ Estrutura do Banco de Dados

### Tabelas Principais

- **FUNCIONARIO**: Informações de funcionários da empresa  
- **DEPARTAMENTO**: Setores internos e responsáveis  
- **CLIENTE**: Clientes e empresas contratantes  
- **PROJETO**: Projetos em andamento e concluídos  
- **SERVICO**: Serviços oferecidos e valores  
- **FORNECEDOR**: Cadastro de fornecedores  
- **MATERIAL**: Insumos e materiais utilizados  
- **ALOCACAO**: Relação entre funcionários e projetos  

### Diagrama de Relacionamentos
CLIENTE (1) ─── (N) PROJETO (1) ─── (N) SERVICO
│
├── (N) ALOCACAO (N) ─── (1) FUNCIONARIO (N) ─── (1) DEPARTAMENTO
│
└── (N) MATERIAL (N) ─── (1) FORNECEDOR

## 🚀 Como Usar

### Pré-requisitos

- PostgreSQL 12 ou superior  
- Cliente SQL (pgAdmin, DBeaver, psql, etc.)

### Instalação

1. **Crie o banco de dados**
   ```sql
   CREATE DATABASE engenharia_db;
   \c engenharia_db

# Scripts de criação das tabelas
psql -d engenharia_db -f database/schema/table_departamento.sql
psql -d engenharia_db -f database/schema/table_funcionario.sql
psql -d engenharia_db -f database/schema/table_cliente.sql
psql -d engenharia_db -f database/schema/table_projeto.sql
psql -d engenharia_db -f database/schema/table_servico.sql
psql -d engenharia_db -f database/schema/table_fornecedor.sql
psql -d engenharia_db -f database/schema/table_material.sql
psql -d engenharia_db -f database/schema/table_alocacao.sql

## 🔐 Segurança
- CPF e CNPJ têm constraints de unicidade
- Status de ordens validados via CHECK constraints
- Relacionamentos garantidos via Foreign Keys
- Timestamps automáticos em todas as tabelas


## 🤝 Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para:

1. Fazer fork do projeto
2. Criar uma branch para sua feature (`git checkout -b feature/NovaFuncionalidade`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/NovaFuncionalidade`)
5. Abrir um Pull Request
6. 
## 👤 Autor

**Luan Galdino**

- GitHub: [@Luangaldinoo](https://github.com/Luangaldinoo)

## 📞 Suporte

Se você tiver alguma dúvida ou sugestão, sinta-se à vontade para abrir uma issue no GitHub.

---

⭐ Se este projeto foi útil para você, considere dar uma estrela no repositório!
