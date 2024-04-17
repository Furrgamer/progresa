DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    PROCEDURE `colegio_practica`.`UpdateCurso03`()
    /*LANGUAGE SQL
    | [NOT] DETERMINISTIC
    | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
    | SQL SECURITY { DEFINER | INVOKER }
    | COMMENT 'string'*/
    BEGIN
	SET @nombre_estudiante = "Bruno";
	SET @apellido1_estudiante = "Chocero";
	SET @apellido2_estudiante = "Vivo";
	UPDATE estudiantes AS e
	SET Curso_Estudiante = 3
	WHERE e.Nombre_Estudiante = @nombre_estudiante AND e.Apellido1_Estudiante = @apellido1_estudiante
	AND e.Apellido2_Estudiante = @apellido2_estudiante;
    END$$

DELIMITER ;