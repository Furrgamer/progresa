DELIMITER $$

USE `colegio_practica`$$

DROP PROCEDURE IF EXISTS `InsertNotas02`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertNotas02`()
BEGIN
SET @nombre_estudiante = "Bruno";
SET @apellido1_estudiante = "Chocero";
SET @apellido2_estudiante = "Vivo";
SELECT e.`Id_Estudiante` INTO @id_estudiante
FROM estudiantes AS e
WHERE e.Nombre_Estudiante = @nombre_estudiante AND e.Apellido1_Estudiante = @apellido1_estudiante
AND e.Apellido2_Estudiante = @apellido2_estudiante;
SELECT na.`Id_Asignatura` INTO @id_asignatura
FROM nombre_asignaturas AS na
WHERE na.Nombre_Asignatura = "SOR";
SELECT ev.`Id_Evaluacion` INTO @id_evaluacion
FROM evaluaciones AS ev
WHERE ev.Numero_Evaluacion = 1;
INSERT INTO notas (notas.`Estudiante_Nota`, notas.`Evaluacion_Nota`, notas.`Asignatura_Nota`, notas.`Calificacion_Nota`, notas.`Recuperacion_Nota`)
VALUES (@id_estudiante, @id_evaluacion, @id_asignatura, 8, 0);
    END$$

DELIMITER ;