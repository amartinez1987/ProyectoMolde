Create DataBase [MoldeTrasabilidad]
go
USE [MoldeTrasabilidad]
GO
/****** Object:  Table [dbo].[AplicacionesWeb]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[AplicacionesWeb](
	[id] [int]  NOT NULL,
	[nombre] [varchar](1000) NOT NULL,
	[descripcion] [varchar](800) NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('') 
) 
GO
CREATE TABLE [dbo].[Barrios]
(
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[municipioId] [int] NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('') 
) 
GO
/****** Object:  Table [dbo].[ControlAplicacion]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[ControlAplicacion]
(
	[id] [int] NOT NULL,
	[version] [varchar](800) NOT NULL,
	[fechaInicio] [varchar](800) NOT NULL,
	[fechaFin] [varchar](800) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('')
) 
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[Departamentos]
(
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('')
) 
GO
/****** Object:  Table [dbo].[DocumentosIdentidad]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[DocumentosIdentidad]
(
	[id] [int] NOT NULL,
	[sigla] [varchar](10) NOT NULL,
	[descripcion] [varchar](200) NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('')
) 
GO
/****** Object:  Table [dbo].[EstadosCivil]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[EstadosCivil]
(
	[id] [int] NOT NULL,
	[sigla] [varchar](50) NULL,
	[descripcion] [varchar](100) NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('')
) 
GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[Formularios]
(
	[id] [int] NOT NULL,
	[nombreFormulario] [varchar](100) NOT NULL,
	[urlFormulario] [varchar](500) NOT NULL,
	[nombreMostrar] [varchar](800) NOT NULL,
	[menuId] [int] NOT NULL,
	[esVisible] [bit] NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('')
) 
GO
/****** Object:  Table [dbo].[GruposSanguineo]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[GruposSanguineo]
(
	[id] [int] NOT NULL,
	[sigla] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('') 
) 
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[Menus]
(
	[id] [int] NOT NULL,
	[nombreMenu] [varchar](100) NOT NULL,
	[aplicacionWebId] [int] NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('') 
) 
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[Municipios]
(
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[departamentoId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('') 
) 
GO
/****** Object:  Table [dbo].[Operaciones]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[Operaciones]
(
	[id] [int] NOT NULL,
	[nombreOperacion] [varchar](1000) NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('')
) 
GO
/****** Object:  Table [dbo].[OperacionesFormulario]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[OperacionesFormulario]
(
	[id] [int] NOT NULL,
	[formularioId] [int] NULL,
	[operacionId] [int] NULL,
	[descripcion] [varchar](8000) NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('') 
) 
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[Perfiles]
(
	[id] [int] NOT NULL,
	[nombrePerfil] [varchar](200) NOT NULL,
	[descripcion] [varchar](8000) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('') 
) 
GO
/****** Object:  Table [dbo].[PerfilesOperacionesFormulario]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[PerfilesOperacionesFormulario]
(
	[id] [int] NOT NULL,
	[operacionFormularioId] [int] NULL,
	[perfilId] [int] NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('')
) 
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[Personas]
(
	[id] [int] NOT NULL,
	[numeroDocumento] [varchar](100) NULL,
	[documentoIdentidadId] [int] NOT NULL,
	[primerNombre] [varchar](50) NOT NULL,
	[segundoNombre] [varchar](50) NOT NULL,
	[primerApellido] [varchar](50) NOT NULL,
	[segundoApellido] [varchar](50) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[municipioId] [int] NOT NULL,
	[grupoSanguineoId] [int] NOT NULL,
	[sexoId] [int] NOT NULL,
	[fechaExpedicionCedula] [date] NOT NULL,
	[municipioExpedicionId] [int] NOT NULL,
	[barrioId] [int] NULL,
	[direcccion] [varchar](500) NOT NULL,
	[estatura] [int] NOT NULL,
	[peso] [int] NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[estadoCivilId] [int] NOT NULL,
	[telefonoFijo] [int] NOT NULL,
	[telefonoCelular] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('')
) 
GO
/****** Object:  Table [dbo].[sexos]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[sexos]
(
	[id] [int] NOT NULL,
	[sigla] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('') 
) 
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[Usuarios]
(
	[id] [int] NOT NULL,
	[nombreUsuario] [varchar](100) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[idPersona] [int] NULL,
	[estado] [varchar](50) NULL,
	[usuarioId] [int] NULL,
	[perfilId] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('')
) 
GO
/****** Object:  Table [dbo].[UsuariosOperacionesFormulario]    Script Date: 11/12/2017 9:44:19 ******/
CREATE TABLE [dbo].[UsuariosOperacionesFormulario]
(
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[operacionFormularioId] [int] NOT NULL,
	[usuarioIdApl] [int] NOT NULL,
  [idTrasabilidad] IDENTITY(1,1) not null,
  [userNameBd] [varchar](100) not null,
  [fechaHora] [datetime] not null default(getdate()),
  [operacion] [varchar](100) not null default('')
) 
GO
ALTER TABLE [dbo].[DocumentosIdentidad] ADD  CONSTRAINT [DF_DocumentosIdentidad_descripcion]  DEFAULT ('') FOR [descripcion]
GO
ALTER TABLE [dbo].[Formularios] ADD  CONSTRAINT [DF_Formularios_esVisible]  DEFAULT ((0)) FOR [esVisible]
GO
ALTER TABLE [dbo].[Personas] ADD  CONSTRAINT [DF_Personas_estatura]  DEFAULT ((0)) FOR [estatura]
GO
ALTER TABLE [dbo].[Personas] ADD  CONSTRAINT [DF_Personas_peso]  DEFAULT ((0)) FOR [peso]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_estado]  DEFAULT ('Pendiente') FOR [estado]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo para indicar si en el menu se debe visualizar o no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formularios', @level2type=N'COLUMN',@level2name=N'esVisible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'El nombre de Usuario debe ser el correo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuarios', @level2type=N'COLUMN',@level2name=N'nombreUsuario'
GO
