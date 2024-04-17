DELIMITER $$

USE `colegio_practica`$$

DROP PROCEDURE IF EXISTS `BorrarAlumno05`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarAlumno05`()
BEGIN
	SET @nombre_estudiante = "Bruno";
	SET @apellido1_estudiante = "Chocero";
	SET @apellido2_estudiante = "Vivo";
	SELECT e.`Id_Estudiante` INTO @id_estudiante
	FROM estudiantes AS e
	WHERE e.Nombre_Estudiante = @nombre_estudiante AND e.Apellido1_Estudiante = @apellido1_estudiante
	AND e.Apellido2_Estudiante = @apellido2_estudiante;
	DELETE 
	FROM estudiantes
	WHERE estudiantes.`Id_Estudiante` = @id_estudiante;
    END$$

DELIMITER ;