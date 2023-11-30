CREATE DATABASE INFO104_PARCIAL2_WILTON
GO

USE INFO104_PARCIAL2_WILTON
GO

CREATE TABLE usuarios
(
    usuarioID int identity (1,1) PRIMARY KEY,
    nombre nvarchar(100) NOT NULL,
    correoElectronico nvarchar(100) NOT NULL,
    telefono nvarchar(50) NOT NULL
)
GO
CREATE TABLE tecnicos
(
    tecnicoID int identity (100,100) PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    especialidad varchar(100) NOT NULL
)
GO
CREATE TABLE equipos
(
    equipoID int identity (5,5) PRIMARY KEY,
    tipoEquipo nvarchar(100) NOT NULL,
    modelo nvarchar(100) NOT NULL,
    usuarioID int,
    CONSTRAINT fk_usuarioID FOREIGN KEY (usuarioID) REFERENCES usuarios(usuarioID)
)
GO
CREATE TABLE reparaciones
(
    reparacionID int identity (10,10) PRIMARY KEY,
    equipoID int,
    fechaSolicitud datetime NOT NULL CONSTRAINT df_fechaSolicitud DEFAULT GETDATE(),
    estado nvarchar(100) NOT NULL
    CONSTRAINT fk_equipoID FOREIGN KEY (equipoID) REFERENCES equipos(equipoID)
)
GO
CREATE TABLE detallesReparacion
(
    detalleID int identity (10,10) PRIMARY KEY,
    reparacionID int,
    descripcion varchar(100) NOT NULL,
    fechaInicio datetime NOT NULL CONSTRAINT df_fechaInicio DEFAULT GETDATE(),
    fechaFin datetime,
    CONSTRAINT fk_detalles_reparacionID FOREIGN KEY (reparacionID) REFERENCES reparaciones(reparacionID)
)
GO
CREATE TABLE asignaciones
(
    asignacionID int identity (1,1) PRIMARY KEY,
    reparacionID int,
    tecnicoID int,
    FechaAsignacion datetime NOT NULL CONSTRAINT df_fechaAsignacion DEFAULT GETDATE(),
    CONSTRAINT fk_asignaciones_reparacionID FOREIGN KEY (reparacionID) REFERENCES reparaciones(reparacionID),
    CONSTRAINT fk_tecnicoID FOREIGN KEY (tecnicoID) REFERENCES tecnicos(tecnicoID)
)
GO
/*               PROCEDIMIENTOS TABLA USUARIOS            */
CREATE PROCEDURE agregarusuario
@nombre nvarchar(100),
@correoElectronico nvarchar(100),
@telefono nvarchar(50)
    AS
        BEGIN
            INSERT INTO usuarios (nombre,correoElectronico,telefono) VALUES (@nombre,@correoElectronico,@telefono)
        END
GO
CREATE PROCEDURE borrarusuario
@usuarioID int
    AS 
        BEGIN
            DELETE usuarios WHERE usuarioID = @usuarioID
        END
GO
CREATE PROCEDURE consultarusuario
@usuarioID int
    AS 
        BEGIN
            SELECT * FROM usuarios WHERE usuarioID = @usuarioID
        END
GO
CREATE PROCEDURE modificarusuario
@usuarioID int,
@nombre nvarchar(100),
@correoElectronico nvarchar(100),
@telefono nvarchar(50)
    AS
        BEGIN
            UPDATE usuarios SET nombre = @nombre, correoElectronico = @correoElectronico, telefono = @telefono WHERE usuarioID = @usuarioID
        END
GO

/*               PROCEDIMIENTOS TABLA TECNICOS            */

CREATE PROCEDURE agregartecnico
@nombre nvarchar(100),
@especialidad nvarchar(100)
    AS
        BEGIN
            INSERT INTO tecnicos (nombre,especialidad) VALUES (@nombre,@especialidad)
        END
GO

CREATE PROCEDURE borrartecnico
@tecnicoID int
    AS 
        BEGIN
            DELETE tecnicos WHERE tecnicoID = @tecnicoID
        END
GO

CREATE PROCEDURE consultartecnico
@tecnicoID int
    AS 
        BEGIN
            SELECT * FROM tecnicos WHERE tecnicoID = @tecnicoID
        END
GO

CREATE PROCEDURE modificartecnico
@tecnicoID int,
@nombre nvarchar(100),
@especialidad nvarchar(100)
    AS
        BEGIN
            UPDATE tecnicos SET nombre = @nombre, especialidad = @especialidad WHERE tecnicoID = @tecnicoID
        END
GO

/*               PROCEDIMIENTOS TABLA EQUIPOS            */
CREATE PROCEDURE agregarequipo
@tipoEquipo nvarchar(100),
@modelo nvarchar(100),
@usuarioID int
    AS
        BEGIN
            INSERT INTO equipos (tipoEquipo,modelo, usuarioID) VALUES (@tipoEquipo,@modelo,@usuarioID)
        END
GO

CREATE PROCEDURE borrarequipo
@equipoID int
    AS 
        BEGIN
            DELETE equipos WHERE equipoID = @equipoID
        END
GO

CREATE PROCEDURE consultarequipo
@equipoID int
    AS 
        BEGIN
            SELECT * FROM equipos WHERE equipoID = @equipoID
        END
GO

CREATE PROCEDURE modificarequipo
@equipoID int,
@tipoEquipo nvarchar(100),
@modelo nvarchar(100),
@usuarioID int
    AS
        BEGIN
            UPDATE equipos SET tipoEquipo = @tipoEquipo, modelo = @modelo, usuarioID = @usuarioID WHERE equipoID = @equipoID
        END
GO

