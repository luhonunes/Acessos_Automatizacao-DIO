-- Criar o banco de dados
CREATE DATABASE desafio_dio;

-- Usar o banco de dados criado
USE desafio_dio;

-- Tabela employees
CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  department_id INT,
  location VARCHAR(100),
  salary DECIMAL(10, 2),
  manager_id INT
);

-- Tabela departments
CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(100),
  manager_id INT
);

-- Tabela projects
CREATE TABLE projects (
  project_id INT PRIMARY KEY,
  project_name VARCHAR(100),
  department_id INT
);

-- Tabela dependents
CREATE TABLE dependents (
  dependent_id INT PRIMARY KEY,
  employee_id INT,
  dependent_name VARCHAR(50),
  dependent_relation VARCHAR(50)
);

-- Tabela employees_projects (para relação entre empregados e projetos)
CREATE TABLE employees_projects (
  employee_id INT,
  project_id INT
);

-- Tabela users (para usuários com permissões no sistema)
CREATE TABLE users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(100)
);

-- Tabela usuarios_removidos (para armazenar usuários removidos)
CREATE TABLE usuarios_removidos (
  user_id INT,
  username VARCHAR(50),
  deleted_at DATETIME
);

-- Tabela historico_salarios (para armazenar histórico de atualizações de salários)
CREATE TABLE historico_salarios (
  employee_id INT,
  salario DECIMAL(10, 2),
  data_atualizacao DATETIME
);

-- Inserir dados de exemplo (opcional)
INSERT INTO employees (employee_id, first_name, last_name, department_id, location, salary, manager_id) VALUES
(1, 'João', 'Silva', 1, 'São Paulo', 5000.00, NULL),
(2, 'Maria', 'Santos', 1, 'São Paulo', 4500.00, 1),
(3, 'Pedro', 'Souza', 2, 'Rio de Janeiro', 4800.00, NULL);

INSERT INTO departments (department_id, department_name, manager_id) VALUES
(1, 'Vendas', 1),
(2, 'Marketing', 3);

INSERT INTO projects (project_id, project_name, department_id) VALUES
(1, 'Projeto A', 1),
(2, 'Projeto B', 1),
(3, 'Projeto C', 2);

INSERT INTO dependents (dependent_id, employee_id, dependent_name, dependent_relation) VALUES
(1, 1, 'Filho João', 'Filho'),
(2, 2, 'Filha Maria', 'Filha');

INSERT INTO employees_projects (employee_id, project_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 3);

INSERT INTO users (user_id, username, password) VALUES
(1, 'gerente', 'senha_gerente'),
(2, 'employee', 'senha_employee');
