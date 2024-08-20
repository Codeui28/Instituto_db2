--Procedimiento alta 

CREATE PROCEDURE sp_alta_tipo_examen
    @nombre NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO tbl_tipo_examen (nombre)
    VALUES (@nombre);
END
GO
--Procedimiento Modificar
CREATE PROCEDURE sp_modificar_tipo_examen
    @id INT,
    @nombre NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE tbl_tipo_examen
    SET nombre = @nombre
    WHERE id = @id;
END
GO
--Procedimiento Borrar
CREATE PROCEDURE sp_borrar_tipo_examen
    @id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM tbl_tipo_examen
    WHERE id = @id;
END
GO
--Procedimiento listar
CREATE PROCEDURE sp_listar_tipo_examen
AS
BEGIN
    SET NOCOUNT ON;
    SELECT id, nombre
    FROM tbl_tipo_examen;
END
GO

--Procedimiento_mostrar_notas_cargadas
CREATE PROCEDURE [dbo].[sp_mostrar_notas_cargadas]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT 
        pcn.id,
        p.nombre AS nombre_profesor,
        a.nombre AS nombre_alumno,
        m.nombre AS nombre_materia,
        te.nombre AS nombre_tipo_examen,
        pcn.nota
    FROM dbo.tbl_profesor_carga_notas pcn
    JOIN dbo.tbl_profesores p ON pcn.profesor = p.id
    JOIN dbo.tbl_alumnos a ON pcn.alumno = a.id
    JOIN dbo.tbl_materias m ON pcn.materia = m.id
    JOIN dbo.tbl_tipo_examen te ON pcn.tipo_examen = te.id;
END
