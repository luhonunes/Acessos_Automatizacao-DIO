-- Gatilho de remoção
DELIMITER //
CREATE TRIGGER before_remove_usuario
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
  INSERT INTO usuarios_removidos (user_id, username, deleted_at)
  VALUES (OLD.user_id, OLD.username, NOW());
END;
//
DELIMITER ;

-- Gatilho de atualização
DELIMITER //
CREATE TRIGGER atualizacao_colaboradores
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
  INSERT INTO historico_salarios (employee_id, salario, data_atualizacao)
  VALUES (NEW.employee_id, NEW.salary, NOW());
END;
//
DELIMITER ;