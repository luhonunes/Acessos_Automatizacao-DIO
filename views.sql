-- Número de empregados por departamento e localidade
CREATE VIEW empregados_por_departamento_localidade AS
SELECT department_id, location, COUNT(*) AS num_empregados
FROM employees
GROUP BY department_id, location;

-- Lista de departamentos e seus gerentes
CREATE VIEW departamentos_e_gerentes AS
SELECT d.department_id, d.department_name, CONCAT(m.first_name, ' ', m.last_name) AS gerente
FROM departments d
LEFT JOIN employees m ON d.manager_id = m.employee_id;

-- Projetos com maior número de empregados
CREATE VIEW projetos_maior_num_empregados AS
SELECT project_id, COUNT(*) AS num_empregados
FROM employees_projects
GROUP BY project_id
ORDER BY num_empregados DESC;

-- Lista de projetos, departamentos e gerentes
CREATE VIEW projetos_departamentos_gerentes AS
SELECT p.project_name, d.department_name, CONCAT(m.first_name, ' ', m.last_name) AS gerente
FROM projects p
JOIN departments d ON p.department_id = d.department_id
LEFT JOIN employees m ON d.manager_id = m.employee_id;

-- Quais empregados possuem dependentes e se são gerentes
CREATE VIEW empregados_com_dependentes_gerentes AS
SELECT e.employee_id, e.first_name, e.last_name, 
       (CASE WHEN e.manager_id IS NOT NULL THEN 'Sim' ELSE 'Não' END) AS gerente,
       (CASE WHEN d.dependent_id IS NOT NULL THEN 'Sim' ELSE 'Não' END) AS possui_dependente
FROM employees e
LEFT JOIN dependents d ON e.employee_id = d.employee_id;
