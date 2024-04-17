DELIMITER $$

CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    PROCEDURE `colegio_practica`.`BorrarNotaAlumno04`()
    /*LANGUAGE SQL
    | [NOT] DETERMINISTIC
    | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
    | SQL SECURITY { DEFINER | INVOKER }
    | COMMENT 'string'*/
    BEGIN
	SET @nombre_estudiante = "Bruno";
SET @apellido1_estudiante = "Chocero";
SET @apellido2_estudiante = "Vivo";


SELECT e.`Id_Estudiante` INTO @id_estudiante
FROM estudiantes AS e
WHERE e.Nombre_Estudiante = @nombre_estudiante AND e.Apellido1_Estudiante = @apellido1_estudiante
AND e.Apellido2_Estudiante = @apellido2_estudiante;

DELETE 
FROM notas 
WHERE notas.Estudiante_Nota = @id_estudiante;
    END$$

DELIMITER ;