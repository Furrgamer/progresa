DELIMITER $$

USE `colegio_practica`$$

DROP PROCEDURE IF EXISTS `InsertEstudent01`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEstudent01`()
BEGIN
	INSERT INTO estudiantes (Nombre_Estudiante, Apellido1_Estudiante, Apellido2_Estudiante, Curso_Estudiante, Telefono_Estudiante, Direccion_Estudiante, 
	CP_Estudiante, Poblacion_Estudiante, Edad_Estudiante, Beca_Estudiante, Nombre_Ordenador_Estudiante)
	VALUES ("Bruno", "Chocero", "Vivo", 7, 665890912, "C. Pepito el rápido", 46701, 8, 21, 0, 25);
    END$$

DELIMITER ;