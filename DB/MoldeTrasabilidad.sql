USE [master]
GO
/****** Object:  Database [MoldeTrasabilidad]    Script Date: 23/01/2018 17:54:59 ******/
CREATE DATABASE [MoldeTrasabilidad]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MoldeTrasabilidad', FILENAME = N'G:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Data\MoldeTrasabilidad.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MoldeTrasabilidad_log', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Data\MoldeTrasabilidad_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MoldeTrasabilidad] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MoldeTrasabilidad].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MoldeTrasabilidad] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET ARITHABORT OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MoldeTrasabilidad] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MoldeTrasabilidad] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MoldeTrasabilidad] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MoldeTrasabilidad] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET RECOVERY FULL 
GO
ALTER DATABASE [MoldeTrasabilidad] SET  MULTI_USER 
GO
ALTER DATABASE [MoldeTrasabilidad] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MoldeTrasabilidad] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MoldeTrasabilidad] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MoldeTrasabilidad] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MoldeTrasabilidad] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MoldeTrasabilidad', N'ON'
GO
USE [MoldeTrasabilidad]
GO
/****** Object:  User [aranda]    Script Date: 23/01/2018 17:54:59 ******/
CREATE USER [aranda] FOR LOGIN [aranda] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[AplicacionesWeb]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AplicacionesWeb](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[nombre] [varchar](1000) NOT NULL,
	[descripcion] [varchar](800) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barrios](
	[id] [int] NOT NULL,
	[municipioId] [int] NULL,
	[usuarioId] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamentos](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[codigoDane] [varchar](2) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentosIdentidad]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentosIdentidad](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[sigla] [varchar](10) NOT NULL,
	[descripcion] [varchar](200) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadosCivil]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadosCivil](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[sigla] [varchar](50) NULL,
	[descripcion] [varchar](100) NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formularios](
	[id] [int] NOT NULL,
	[menuId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[indexVisibilidad] [int] NOT NULL,
	[esVisible] [bit] NOT NULL,
	[nombreFormulario] [varchar](100) NOT NULL,
	[urlFormulario] [varchar](500) NOT NULL,
	[nombreMostrar] [varchar](800) NOT NULL,
	[estados] [varchar](50) NOT NULL,
	[iconOpcion] [varchar](100) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL DEFAULT (getdate()),
	[operacion] [varchar](100) NOT NULL DEFAULT ('')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GruposSanguineo]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GruposSanguineo](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[sigla] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaestroAnexos]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaestroAnexos](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[tabla] [varchar](1000) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL DEFAULT (getdate()),
	[operacion] [varchar](100) NOT NULL DEFAULT ('')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menus](
	[id] [int] NOT NULL,
	[aplicacionWebId] [int] NULL,
	[usuarioId] [int] NOT NULL,
	[indexVisibilidad] [int] NOT NULL,
	[nombreMenu] [varchar](100) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[icon] [varchar](100) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipios](
	[id] [int] NOT NULL,
	[departamentoId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[codigoDane] [varchar](3) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Operaciones]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Operaciones](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[nombreOperacion] [varchar](1000) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL DEFAULT (getdate()),
	[operacion] [varchar](100) NOT NULL DEFAULT ('')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OperacionesFormulario]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OperacionesFormulario](
	[id] [int] NOT NULL,
	[formularioId] [int] NULL,
	[operacionId] [int] NULL,
	[usuarioId] [int] NOT NULL,
	[descripcion] [varchar](8000) NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL DEFAULT (getdate()),
	[operacion] [varchar](100) NOT NULL DEFAULT ('')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfiles](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[nombrePerfil] [varchar](200) NOT NULL,
	[descripcion] [varchar](8000) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PerfilesOperacionesFormulario]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PerfilesOperacionesFormulario](
	[id] [int] NOT NULL,
	[operacionFormularioId] [int] NULL,
	[perfilId] [int] NULL,
	[usuarioId] [int] NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL DEFAULT (getdate()),
	[operacion] [varchar](100) NOT NULL DEFAULT ('')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personas](
	[id] [int] NOT NULL,
	[documentoIdentidadId] [int] NOT NULL,
	[municipioId] [int] NOT NULL,
	[grupoSanguineoId] [int] NOT NULL,
	[sexoId] [int] NOT NULL,
	[municipioExpedicionId] [int] NOT NULL,
	[barrioId] [int] NULL,
	[estadoCivilId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[estatura] [numeric](18, 2) NOT NULL,
	[peso] [numeric](18, 2) NOT NULL,
	[telefonoFijo] [bigint] NOT NULL,
	[telefonoCelular] [bigint] NOT NULL,
	[numeroDocumento] [varchar](100) NULL,
	[primerNombre] [varchar](50) NOT NULL,
	[segundoNombre] [varchar](50) NOT NULL,
	[primerApellido] [varchar](50) NOT NULL,
	[segundoApellido] [varchar](50) NOT NULL,
	[direcccion] [varchar](500) NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[fechaExpedicionCedula] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sexos]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sexos](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[sigla] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] NOT NULL,
	[idPersona] [int] NULL,
	[usuarioId] [int] NULL,
	[perfilId] [int] NOT NULL,
	[nombreUsuario] [varchar](100) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[estado] [varchar](50) NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL DEFAULT (getdate()),
	[operacion] [varchar](100) NOT NULL DEFAULT ('')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuariosOperacionesFormulario]    Script Date: 23/01/2018 17:54:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsuariosOperacionesFormulario](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[operacionFormularioId] [int] NOT NULL,
	[usuarioIdApl] [int] NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL DEFAULT (getdate()),
	[operacion] [varchar](100) NOT NULL DEFAULT ('')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AplicacionesWeb] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[AplicacionesWeb] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[Barrios] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[Barrios] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[Departamentos] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[Departamentos] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[DocumentosIdentidad] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[DocumentosIdentidad] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[EstadosCivil] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[EstadosCivil] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[GruposSanguineo] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[GruposSanguineo] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[Menus] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[Menus] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[Municipios] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[Municipios] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[Perfiles] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[Perfiles] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[Personas] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[Personas] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[Sexos] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[Sexos] ADD  DEFAULT ('') FOR [operacion]
GO
USE [master]
GO
ALTER DATABASE [MoldeTrasabilidad] SET  READ_WRITE 
GO
