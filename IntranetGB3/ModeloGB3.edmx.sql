
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/22/2023 22:18:45
-- Generated from EDMX file: C:\Users\Elias\source\repos\IntranetGB3\IntranetGB3\ModeloGB3.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BD_GB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ActividadesEvaluaciones]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EvaluacionesSet] DROP CONSTRAINT [FK_ActividadesEvaluaciones];
GO
IF OBJECT_ID(N'[dbo].[FK_AlumnoEvaluaciones]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EvaluacionesSet] DROP CONSTRAINT [FK_AlumnoEvaluaciones];
GO
IF OBJECT_ID(N'[dbo].[FK_Apoderado_inherits_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UsuarioSet_Apoderado] DROP CONSTRAINT [FK_Apoderado_inherits_Usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_ApoderadoAlumno]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AlumnoSet] DROP CONSTRAINT [FK_ApoderadoAlumno];
GO
IF OBJECT_ID(N'[dbo].[FK_CursoAlumno]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AlumnoSet] DROP CONSTRAINT [FK_CursoAlumno];
GO
IF OBJECT_ID(N'[dbo].[FK_CursoProgramas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CursoSet] DROP CONSTRAINT [FK_CursoProgramas];
GO
IF OBJECT_ID(N'[dbo].[FK_Educadora_inherits_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UsuarioSet_Educadora] DROP CONSTRAINT [FK_Educadora_inherits_Usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_FuncionarioCurso]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UsuarioSet_Educadora] DROP CONSTRAINT [FK_FuncionarioCurso];
GO
IF OBJECT_ID(N'[dbo].[FK_ProgramasActividades]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActividadesSet] DROP CONSTRAINT [FK_ProgramasActividades];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ActividadesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActividadesSet];
GO
IF OBJECT_ID(N'[dbo].[AdministradorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdministradorSet];
GO
IF OBJECT_ID(N'[dbo].[AlumnoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AlumnoSet];
GO
IF OBJECT_ID(N'[dbo].[CursoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CursoSet];
GO
IF OBJECT_ID(N'[dbo].[EvaluacionesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EvaluacionesSet];
GO
IF OBJECT_ID(N'[dbo].[ProgramasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProgramasSet];
GO
IF OBJECT_ID(N'[dbo].[UsuarioSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UsuarioSet];
GO
IF OBJECT_ID(N'[dbo].[UsuarioSet_Apoderado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UsuarioSet_Apoderado];
GO
IF OBJECT_ID(N'[dbo].[UsuarioSet_Educadora]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UsuarioSet_Educadora];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ActividadesSet'
CREATE TABLE [dbo].[ActividadesSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ProgramasID] int  NOT NULL,
    [Fecha] datetime  NOT NULL
);
GO

-- Creating table 'AdministradorSet'
CREATE TABLE [dbo].[AdministradorSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Rut] nvarchar(max)  NOT NULL,
    [Clave] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AlumnoSet'
CREATE TABLE [dbo].[AlumnoSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [CursoID] int  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Edad] nvarchar(max)  NOT NULL,
    [Genero] nvarchar(max)  NOT NULL,
    [Apoderado_ID] int  NOT NULL
);
GO

-- Creating table 'CursoSet'
CREATE TABLE [dbo].[CursoSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ProgramasID] int  NOT NULL,
    [Nivel] nvarchar(max)  NOT NULL,
    [Sala] nvarchar(max)  NOT NULL,
    [Periodo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EvaluacionesSet'
CREATE TABLE [dbo].[EvaluacionesSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ActividadesID] int  NOT NULL,
    [Calificaciones] int  NOT NULL,
    [AlumnoID] int  NOT NULL
);
GO

-- Creating table 'ProgramasSet'
CREATE TABLE [dbo].[ProgramasSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ambito] nvarchar(max)  NOT NULL,
    [Contenido] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UsuarioSet'
CREATE TABLE [dbo].[UsuarioSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Rut] nvarchar(max)  NOT NULL,
    [Clave] nvarchar(max)  NOT NULL,
    [Correo] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UsuarioSet_UsuarioSet_Apoderado'
CREATE TABLE [dbo].[UsuarioSet_UsuarioSet_Apoderado] (
    [Nombre] nvarchar(max)  NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL,
    [ID] int  NOT NULL
);
GO

-- Creating table 'UsuarioSet_UsuarioSet_Educadora'
CREATE TABLE [dbo].[UsuarioSet_UsuarioSet_Educadora] (
    [CursoID] int  NOT NULL,
    [Rol] nvarchar(max)  NOT NULL,
    [ID] int  NOT NULL
);
GO

-- Creating table 'ArchivosSet'
CREATE TABLE [dbo].[ArchivosSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Tipo_archivo] nvarchar(max)  NOT NULL,
    [Ruta] nvarchar(max)  NOT NULL,
    [ActividadesSetID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'ActividadesSet'
ALTER TABLE [dbo].[ActividadesSet]
ADD CONSTRAINT [PK_ActividadesSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'AdministradorSet'
ALTER TABLE [dbo].[AdministradorSet]
ADD CONSTRAINT [PK_AdministradorSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'AlumnoSet'
ALTER TABLE [dbo].[AlumnoSet]
ADD CONSTRAINT [PK_AlumnoSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CursoSet'
ALTER TABLE [dbo].[CursoSet]
ADD CONSTRAINT [PK_CursoSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EvaluacionesSet'
ALTER TABLE [dbo].[EvaluacionesSet]
ADD CONSTRAINT [PK_EvaluacionesSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ProgramasSet'
ALTER TABLE [dbo].[ProgramasSet]
ADD CONSTRAINT [PK_ProgramasSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'UsuarioSet'
ALTER TABLE [dbo].[UsuarioSet]
ADD CONSTRAINT [PK_UsuarioSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'UsuarioSet_UsuarioSet_Apoderado'
ALTER TABLE [dbo].[UsuarioSet_UsuarioSet_Apoderado]
ADD CONSTRAINT [PK_UsuarioSet_UsuarioSet_Apoderado]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'UsuarioSet_UsuarioSet_Educadora'
ALTER TABLE [dbo].[UsuarioSet_UsuarioSet_Educadora]
ADD CONSTRAINT [PK_UsuarioSet_UsuarioSet_Educadora]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ArchivosSet'
ALTER TABLE [dbo].[ArchivosSet]
ADD CONSTRAINT [PK_ArchivosSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ActividadesID] in table 'EvaluacionesSet'
ALTER TABLE [dbo].[EvaluacionesSet]
ADD CONSTRAINT [FK_ActividadesEvaluaciones]
    FOREIGN KEY ([ActividadesID])
    REFERENCES [dbo].[ActividadesSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActividadesEvaluaciones'
CREATE INDEX [IX_FK_ActividadesEvaluaciones]
ON [dbo].[EvaluacionesSet]
    ([ActividadesID]);
GO

-- Creating foreign key on [ProgramasID] in table 'ActividadesSet'
ALTER TABLE [dbo].[ActividadesSet]
ADD CONSTRAINT [FK_ProgramasActividades]
    FOREIGN KEY ([ProgramasID])
    REFERENCES [dbo].[ProgramasSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProgramasActividades'
CREATE INDEX [IX_FK_ProgramasActividades]
ON [dbo].[ActividadesSet]
    ([ProgramasID]);
GO

-- Creating foreign key on [AlumnoID] in table 'EvaluacionesSet'
ALTER TABLE [dbo].[EvaluacionesSet]
ADD CONSTRAINT [FK_AlumnoEvaluaciones]
    FOREIGN KEY ([AlumnoID])
    REFERENCES [dbo].[AlumnoSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AlumnoEvaluaciones'
CREATE INDEX [IX_FK_AlumnoEvaluaciones]
ON [dbo].[EvaluacionesSet]
    ([AlumnoID]);
GO

-- Creating foreign key on [Apoderado_ID] in table 'AlumnoSet'
ALTER TABLE [dbo].[AlumnoSet]
ADD CONSTRAINT [FK_ApoderadoAlumno]
    FOREIGN KEY ([Apoderado_ID])
    REFERENCES [dbo].[UsuarioSet_UsuarioSet_Apoderado]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ApoderadoAlumno'
CREATE INDEX [IX_FK_ApoderadoAlumno]
ON [dbo].[AlumnoSet]
    ([Apoderado_ID]);
GO

-- Creating foreign key on [CursoID] in table 'AlumnoSet'
ALTER TABLE [dbo].[AlumnoSet]
ADD CONSTRAINT [FK_CursoAlumno]
    FOREIGN KEY ([CursoID])
    REFERENCES [dbo].[CursoSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CursoAlumno'
CREATE INDEX [IX_FK_CursoAlumno]
ON [dbo].[AlumnoSet]
    ([CursoID]);
GO

-- Creating foreign key on [ProgramasID] in table 'CursoSet'
ALTER TABLE [dbo].[CursoSet]
ADD CONSTRAINT [FK_CursoProgramas]
    FOREIGN KEY ([ProgramasID])
    REFERENCES [dbo].[ProgramasSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CursoProgramas'
CREATE INDEX [IX_FK_CursoProgramas]
ON [dbo].[CursoSet]
    ([ProgramasID]);
GO

-- Creating foreign key on [CursoID] in table 'UsuarioSet_UsuarioSet_Educadora'
ALTER TABLE [dbo].[UsuarioSet_UsuarioSet_Educadora]
ADD CONSTRAINT [FK_FuncionarioCurso]
    FOREIGN KEY ([CursoID])
    REFERENCES [dbo].[CursoSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FuncionarioCurso'
CREATE INDEX [IX_FK_FuncionarioCurso]
ON [dbo].[UsuarioSet_UsuarioSet_Educadora]
    ([CursoID]);
GO

-- Creating foreign key on [ActividadesSetID] in table 'ArchivosSet'
ALTER TABLE [dbo].[ArchivosSet]
ADD CONSTRAINT [FK_ArchivosActividadesSet]
    FOREIGN KEY ([ActividadesSetID])
    REFERENCES [dbo].[ActividadesSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ArchivosActividadesSet'
CREATE INDEX [IX_FK_ArchivosActividadesSet]
ON [dbo].[ArchivosSet]
    ([ActividadesSetID]);
GO

-- Creating foreign key on [ID] in table 'UsuarioSet_UsuarioSet_Apoderado'
ALTER TABLE [dbo].[UsuarioSet_UsuarioSet_Apoderado]
ADD CONSTRAINT [FK_UsuarioSet_Apoderado_inherits_UsuarioSet]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[UsuarioSet]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID] in table 'UsuarioSet_UsuarioSet_Educadora'
ALTER TABLE [dbo].[UsuarioSet_UsuarioSet_Educadora]
ADD CONSTRAINT [FK_UsuarioSet_Educadora_inherits_UsuarioSet]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[UsuarioSet]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------