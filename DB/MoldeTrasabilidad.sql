USE [master]
GO
/****** Object:  Database [MoldeTrasabilidad]    Script Date: 09/01/2018 21:55:40 ******/
CREATE DATABASE [MoldeTrasabilidad]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MoldeTrasabilidad', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2014\MSSQL\DATA\MoldeTrasabilidad.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MoldeTrasabilidad_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2014\MSSQL\DATA\MoldeTrasabilidad_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MoldeTrasabilidad] SET COMPATIBILITY_LEVEL = 140
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
ALTER DATABASE [MoldeTrasabilidad] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MoldeTrasabilidad] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MoldeTrasabilidad', N'ON'
GO
ALTER DATABASE [MoldeTrasabilidad] SET QUERY_STORE = OFF
GO
USE [MoldeTrasabilidad]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [MoldeTrasabilidad]
GO
/****** Object:  Table [dbo].[AplicacionesWeb]    Script Date: 09/01/2018 21:55:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Barrios]    Script Date: 09/01/2018 21:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Departamentos]    Script Date: 09/01/2018 21:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[DocumentosIdentidad]    Script Date: 09/01/2018 21:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[EstadosCivil]    Script Date: 09/01/2018 21:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[GruposSanguineo]    Script Date: 09/01/2018 21:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Municipios]    Script Date: 09/01/2018 21:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Operaciones]    Script Date: 09/01/2018 21:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operaciones](
	[id] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[nombreOperacion] [varchar](1000) NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperacionesFormulario]    Script Date: 09/01/2018 21:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperacionesFormulario](
	[id] [int] NOT NULL,
	[formularioId] [int] NULL,
	[operacionId] [int] NULL,
	[usuarioId] [int] NOT NULL,
	[descripcion] [varchar](8000) NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfilesOperacionesFormulario]    Script Date: 09/01/2018 21:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfilesOperacionesFormulario](
	[id] [int] NOT NULL,
	[operacionFormularioId] [int] NULL,
	[perfilId] [int] NULL,
	[usuarioId] [int] NOT NULL,
	[idTrasabilidad] [int] IDENTITY(1,1) NOT NULL,
	[userNameBd] [varchar](100) NOT NULL,
	[fechaHora] [datetime] NOT NULL,
	[operacion] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexos]    Script Date: 09/01/2018 21:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
ALTER TABLE [dbo].[Municipios] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[Municipios] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[Operaciones] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[Operaciones] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[OperacionesFormulario] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[OperacionesFormulario] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[PerfilesOperacionesFormulario] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[PerfilesOperacionesFormulario] ADD  DEFAULT ('') FOR [operacion]
GO
ALTER TABLE [dbo].[Sexos] ADD  DEFAULT (getdate()) FOR [fechaHora]
GO
ALTER TABLE [dbo].[Sexos] ADD  DEFAULT ('') FOR [operacion]
GO
USE [master]
GO
ALTER DATABASE [MoldeTrasabilidad] SET  READ_WRITE 
GO
