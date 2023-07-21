-- Crie o usuário gerente
CREATE USER 'gerente'@'localhost' IDENTIFIED BY 'senha_gerente';

-- Conceda acesso às views para o usuário 'gerente'
GRANT SELECT ON desafio_dio.empregados_por_departamento_localidade TO 'gerente'@'localhost';
GRANT SELECT ON desafio_dio.departamentos_e_gerentes TO 'gerente'@'localhost';

-- Conceda acesso à tabela employees para o usuário 'gerente'
GRANT SELECT ON desafio_dio.employees TO 'gerente'@'localhost';

-- Crie o usuário employee
CREATE USER 'employee'@'localhost' IDENTIFIED BY 'senha_employee';

-- Conceda acesso à tabela employees para o usuário 'employee'
GRANT SELECT ON desafio_dio.employees TO 'employee'@'localhost';
