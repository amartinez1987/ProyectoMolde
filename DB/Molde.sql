USE [master]
GO
/****** Object:  Database [molde]    Script Date: 23/01/2018 21:39:19 ******/
CREATE DATABASE [molde]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'molde', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2014\MSSQL\DATA\molde.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'molde_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2014\MSSQL\DATA\molde_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [molde] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [molde].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [molde] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [molde] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [molde] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [molde] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [molde] SET ARITHABORT OFF 
GO
ALTER DATABASE [molde] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [molde] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [molde] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [molde] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [molde] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [molde] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [molde] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [molde] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [molde] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [molde] SET  ENABLE_BROKER 
GO
ALTER DATABASE [molde] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [molde] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [molde] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [molde] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [molde] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [molde] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [molde] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [molde] SET RECOVERY FULL 
GO
ALTER DATABASE [molde] SET  MULTI_USER 
GO
ALTER DATABASE [molde] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [molde] SET DB_CHAINING OFF 
GO
ALTER DATABASE [molde] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [molde] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [molde] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'molde', N'ON'
GO
ALTER DATABASE [molde] SET QUERY_STORE = OFF
GO
USE [molde]
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
USE [molde]
GO
/****** Object:  Table [dbo].[Anexos]    Script Date: 23/01/2018 21:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Anexos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[opcionMaestroAnexoId] [int] NOT NULL,
	[registroTablaId] [int] NULL,
	[usuarioId] [int] NOT NULL,
	[anexo] [image] NOT NULL,
	[consecutivosTemporal] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Anexos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AplicacionesWeb]    Script Date: 23/01/2018 21:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AplicacionesWeb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](1000) NOT NULL,
	[descripcion] [varchar](800) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_AplicacionesWeb] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 23/01/2018 21:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barrios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[municipioId] [int] NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_Barrios_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConsecutivosTemporales]    Script Date: 23/01/2018 21:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConsecutivosTemporales](
	[id] [int] NOT NULL,
	[tabla] [varchar](100) NOT NULL,
	[consecutivo] [bigint] NOT NULL,
 CONSTRAINT [PK_ConsecutivosTemporales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ControlAplicacion]    Script Date: 23/01/2018 21:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ControlAplicacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[version] [varchar](800) NOT NULL,
	[fechaInicio] [varchar](800) NOT NULL,
	[fechaFin] [varchar](800) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_ControlAplicacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 23/01/2018 21:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamentos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
	[codigoDane] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Departamentos_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentosIdentidad]    Script Date: 23/01/2018 21:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentosIdentidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sigla] [varchar](10) NOT NULL,
	[descripcion] [varchar](200) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_DocumentosIdentidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadosCivil]    Script Date: 23/01/2018 21:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadosCivil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sigla] [varchar](50) NULL,
	[descripcion] [varchar](100) NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_EstadosCivil_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formularios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreFormulario] [varchar](100) NOT NULL,
	[urlFormulario] [varchar](500) NOT NULL,
	[nombreMostrar] [varchar](800) NOT NULL,
	[menuId] [int] NOT NULL,
	[esVisible] [bit] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[estados] [varchar](50) NOT NULL,
	[iconOpcion] [varchar](100) NOT NULL,
	[indexVisibilidad] [int] NOT NULL,
 CONSTRAINT [PK_Formularios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GruposSanguineo]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GruposSanguineo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sigla] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_GruposSanguineo_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaestroAnexos]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaestroAnexos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tabla] [varchar](1000) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_MaestroAnexos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreMenu] [varchar](100) NOT NULL,
	[aplicacionWebId] [int] NULL,
	[usuarioId] [int] NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[icon] [varchar](100) NOT NULL,
	[indexVisibilidad] [int] NOT NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[departamentoId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[codigoDane] [varchar](3) NOT NULL,
 CONSTRAINT [PK_Municipios_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OpcionesMaestroAnexos]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OpcionesMaestroAnexos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreOpcion] [varchar](1000) NOT NULL,
	[maestroAnexosId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_OpcionesMaestroAnexos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Operaciones]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Operaciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreOperacion] [varchar](1000) NOT NULL,
	[usuarioId] [int] NOT NULL,
	[visualizaFormularioMenu] [bit] NOT NULL,
 CONSTRAINT [PK_Operaciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OperacionesFormulario]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OperacionesFormulario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[formularioId] [int] NULL,
	[operacionId] [int] NULL,
	[descripcion] [varchar](8000) NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_OperacionesFormulario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombrePerfil] [varchar](200) NOT NULL,
	[descripcion] [varchar](8000) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PerfilesOperacionesFormulario]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfilesOperacionesFormulario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[operacionFormularioId] [int] NULL,
	[perfilId] [int] NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_PerfilesOperacionesFormulario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personas](
	[id] [int] IDENTITY(1,1) NOT NULL,
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
	[estatura] [numeric](18, 2) NOT NULL,
	[peso] [numeric](18, 2) NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[estadoCivilId] [int] NOT NULL,
	[telefonoFijo] [bigint] NOT NULL,
	[telefonoCelular] [bigint] NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sexos]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sexos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sigla] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_sexos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 23/01/2018 21:39:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](100) NOT NULL,
	[clave] [varchar](100) NOT NULL,
	[idPersona] [int] NULL,
	[estado] [varchar](50) NULL,
	[usuarioId] [int] NULL,
	[perfilId] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuariosOperacionesFormulario]    Script Date: 23/01/2018 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosOperacionesFormulario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuarioId] [int] NOT NULL,
	[operacionFormularioId] [int] NOT NULL,
	[usuarioIdApl] [int] NOT NULL,
 CONSTRAINT [PK_UsuariosOperacionesFormulario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AplicacionesWeb] ON 

INSERT [dbo].[AplicacionesWeb] ([id], [nombre], [descripcion], [usuarioId]) VALUES (1, N'Molde', N'Nombre Base de Ejemplo , solo debe colocar el nombre de la aplicacion a desarrollar, recuerde cambiar el webmethod para que traiga las opciones de esta configuracion', 1)
SET IDENTITY_INSERT [dbo].[AplicacionesWeb] OFF
SET IDENTITY_INSERT [dbo].[Barrios] ON 

INSERT [dbo].[Barrios] ([id], [nombre], [municipioId], [usuarioId]) VALUES (1, N'Villas de la Candelaria', 150, 1)
SET IDENTITY_INSERT [dbo].[Barrios] OFF
SET IDENTITY_INSERT [dbo].[Departamentos] ON 

INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (1, N'ANTIOQUIA', 1, N'05')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (2, N'ATLANTICO', 1, N'08')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (3, N'BOGOTA', 1, N'11')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (4, N'BOLIVAR', 1, N'13')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (5, N'BOYACA', 1, N'15')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (6, N'CALDAS', 1, N'17')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (7, N'CAQUETA', 1, N'18')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (8, N'CAUCA', 1, N'19')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (9, N'CESAR', 1, N'20')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (10, N'CORDOBA', 1, N'23')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (11, N'CUNDINAMARCA', 1, N'25')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (12, N'CHOCO', 1, N'27')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (13, N'HUILA', 1, N'41')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (14, N'LA GUAJIRA', 1, N'44')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (15, N'MAGDALENA', 1, N'47')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (16, N'META', 1, N'50')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (17, N'NARIÑO', 1, N'52')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (18, N'N. DE SANTANDER', 1, N'54')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (19, N'QUINDIO', 1, N'63')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (20, N'RISARALDA', 1, N'66')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (21, N'SANTANDER', 1, N'68')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (22, N'SUCRE', 1, N'70')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (23, N'TOLIMA', 1, N'73')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (24, N'VALLE DEL CAUCA', 1, N'76')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (25, N'ARAUCA', 1, N'81')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (26, N'CASANARE', 1, N'85')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (27, N'PUTUMAYO', 1, N'86')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (28, N'SAN ANDRES', 1, N'88')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (29, N'AMAZONAS', 1, N'91')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (30, N'GUAINIA', 1, N'94')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (31, N'GUAVIARE', 1, N'95')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (32, N'VAUPES', 1, N'97')
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId], [codigoDane]) VALUES (33, N'VICHADA', 1, N'99')
SET IDENTITY_INSERT [dbo].[Departamentos] OFF
SET IDENTITY_INSERT [dbo].[DocumentosIdentidad] ON 

INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (1, N'RC', N'Registro Civil', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (2, N'TI', N'Tarjeta de identidad', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (3, N'CC', N'Cédula de Ciudadanía', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (4, N'CE', N'Cédula de Extranjería', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (5, N'SC', N'Salvoconducto', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (6, N'PA', N'Pasaporte', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (7, N'CD', N'Carné diplomático', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (8, N'NI', N'Nit', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (9, N'MS', N'Menor sin identificar', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (10, N'CN', N'Certificado de nacido vivo', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (11, N'AS', N'Adulto sin identificar', 1)
INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (13, N'NV', N'Certificado de nacido vivo', 1)
SET IDENTITY_INSERT [dbo].[DocumentosIdentidad] OFF
SET IDENTITY_INSERT [dbo].[EstadosCivil] ON 

INSERT [dbo].[EstadosCivil] ([id], [sigla], [descripcion], [usuarioId]) VALUES (1, N'S', N'Soltero/a', 1)
INSERT [dbo].[EstadosCivil] ([id], [sigla], [descripcion], [usuarioId]) VALUES (2, N'C', N'Casado/a', 1)
INSERT [dbo].[EstadosCivil] ([id], [sigla], [descripcion], [usuarioId]) VALUES (4, N'V', N'Viudo/a', 1)
INSERT [dbo].[EstadosCivil] ([id], [sigla], [descripcion], [usuarioId]) VALUES (5, N'D', N'Divorciado/a', 1)
INSERT [dbo].[EstadosCivil] ([id], [sigla], [descripcion], [usuarioId]) VALUES (6, N'U', N'Unión Libre', 1)
SET IDENTITY_INSERT [dbo].[EstadosCivil] OFF
SET IDENTITY_INSERT [dbo].[Formularios] ON 

INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (1, N'AplicacionesWeb', N'frmListaAplicacionesWeb.aspx', N' Lista AplicacionesWeb', 1, 1, 1, N'Activo', N'fa fa-wpforms ', 1)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (2, N'Barrios', N'frmListaBarrios.aspx', N' Lista Barrios', 2, 1, 1, N'Activo', N'fa fa-street-view', 1)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (3, N'Departamentos', N'frmListaDepartamentos.aspx', N' Lista Departamentos', 2, 1, 1, N'Activo', N'fa fa-map', 2)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (4, N'DocumentosIdentidad', N'frmListaDocumentosIdentidad.aspx', N' Lista Documentos Identidad', 2, 1, 1, N'Activo', N'fa fa-cc', 3)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (5, N'EstadosCivil', N'frmListaEstadosCivil.aspx', N' Lista EstadosCivil', 2, 1, 1, N'Activo', N'fa fa-info', 4)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (6, N'Formularios', N'frmListaFormularios.aspx', N' Lista Formularios', 1, 1, 1, N'Activo', N'fa fa-windows', 2)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (7, N'GruposSanguineo', N'frmListaGruposSanguineo.aspx', N' Lista GruposSanguineo', 2, 1, 1, N'Activo', N'fa fa-square-o', 5)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (8, N'Menus', N'frmListaMenus.aspx', N' Lista Menus', 1, 1, 1, N'Activo', N'fa fa-th-list', 3)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (9, N'Municipios', N'frmListaMunicipios.aspx', N' Lista Municipios', 2, 1, 1, N'Activo', N'fa fa-map-signs', 6)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (10, N'Operaciones', N'frmListaOperaciones.aspx', N' Lista Operaciones', 1, 1, 1, N'Activo', N'fa fa-gear', 4)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (11, N'OperacionesFormulario', N'GestionOperacionesFormulario.aspx', N' Administracion Operaciones Formulario', 1, 0, 1, N'Activo', N'', 5)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (12, N'Perfiles', N'frmListaPerfiles.aspx', N' Lista Perfiles', 1, 1, 1, N'Activo', N'fa fa-user-plus', 6)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (13, N'PerfilesOperacionesFormulario', N'GestionOperacionesFormulario.aspx', N' Administracion Perfiles Operaciones Formulario', 1, 0, 1, N'Activo', N'', 7)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (14, N'Personas', N'GestionPersonas.aspx', N' Administracion Personas', 1, 0, 1, N'Activo', N'', 8)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (15, N'Sexos', N'frmListaSexos.aspx', N' Lista Sexos', 2, 1, 1, N'Activo', N'fa fa-venus-mars', 7)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (16, N'Usuarios', N'frmListaUsuarios.aspx', N' Lista Usuarios', 1, 1, 1, N'Activo', N'fa fa-user', 9)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (17, N'UsuariosOperacionesFormulario', N'GestionUsuariosOperacionesFormulario', N' Aministracion Usuario Operaciones', 1, 0, 1, N'Activo', N'', 10)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (18, N'MaestroAnexos', N'frmListaMaestroAnexos.aspx', N' Lista Maestro Anexos', 1, 1, 1, N'Activo', N'glyphicon glyphicon-upload  ', 11)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (19, N'OpcionesMaestroAnexos', N'frmListaOpcionesMaestroAnexo', N'Opciones Maestro Anexos', 1, 0, 1, N'Activo', N'', 12)
SET IDENTITY_INSERT [dbo].[Formularios] OFF
SET IDENTITY_INSERT [dbo].[GruposSanguineo] ON 

INSERT [dbo].[GruposSanguineo] ([id], [sigla], [descripcion], [usuarioId]) VALUES (1, N'O -', N'O negativo', 1)
INSERT [dbo].[GruposSanguineo] ([id], [sigla], [descripcion], [usuarioId]) VALUES (2, N'O +', N'O positivo', 1)
INSERT [dbo].[GruposSanguineo] ([id], [sigla], [descripcion], [usuarioId]) VALUES (3, N'A -', N'A negativo', 1)
INSERT [dbo].[GruposSanguineo] ([id], [sigla], [descripcion], [usuarioId]) VALUES (5, N'A +', N'A Positivo', 1)
INSERT [dbo].[GruposSanguineo] ([id], [sigla], [descripcion], [usuarioId]) VALUES (6, N'B -', N'B negativo', 1)
INSERT [dbo].[GruposSanguineo] ([id], [sigla], [descripcion], [usuarioId]) VALUES (8, N'B +', N'B positivo', 1)
INSERT [dbo].[GruposSanguineo] ([id], [sigla], [descripcion], [usuarioId]) VALUES (9, N'AB -', N'AB negativo', 1)
INSERT [dbo].[GruposSanguineo] ([id], [sigla], [descripcion], [usuarioId]) VALUES (10, N'AB +', N'AB positivo', 1)
SET IDENTITY_INSERT [dbo].[GruposSanguineo] OFF
SET IDENTITY_INSERT [dbo].[MaestroAnexos] ON 

INSERT [dbo].[MaestroAnexos] ([id], [tabla], [usuarioId]) VALUES (2, N'AplicacionesWeb', 1)
SET IDENTITY_INSERT [dbo].[MaestroAnexos] OFF
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([id], [nombreMenu], [aplicacionWebId], [usuarioId], [estado], [icon], [indexVisibilidad]) VALUES (1, N' Configuración ', 1, 1, N'Activo', N'fa fa-gear', 1)
INSERT [dbo].[Menus] ([id], [nombreMenu], [aplicacionWebId], [usuarioId], [estado], [icon], [indexVisibilidad]) VALUES (2, N' Diccionarios Datos ', 1, 1, N'Activo', N'fa fa-book', 1)
SET IDENTITY_INSERT [dbo].[Menus] OFF
SET IDENTITY_INSERT [dbo].[Municipios] ON 

INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1, N'MEDELLIN', 1, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (2, N'ABEJORRAL', 1, 1, N'002')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (3, N'ABRIAQUI', 1, 1, N'004')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (4, N'ALEJANDRIA', 1, 1, N'021')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (5, N'AMAGA', 1, 1, N'030')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (6, N'AMALFI', 1, 1, N'031')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (7, N'ANDES', 1, 1, N'034')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (8, N'ANGELOPOLIS', 1, 1, N'036')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (9, N'ANGOSTURA', 1, 1, N'038')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (10, N'ANORI', 1, 1, N'040')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (11, N'SANTAFE DE ANTIOQUIA', 1, 1, N'042')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (12, N'ANZA', 1, 1, N'044')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (13, N'APARTADO', 1, 1, N'045')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (14, N'ARBOLETES', 1, 1, N'051')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (15, N'ARGELIA', 1, 1, N'055')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (16, N'ARMENIA', 1, 1, N'059')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (17, N'BARBOSA', 1, 1, N'079')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (18, N'BELMIRA', 1, 1, N'086')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (19, N'BELLO', 1, 1, N'088')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (20, N'BETANIA', 1, 1, N'091')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (21, N'BETULIA', 1, 1, N'093')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (22, N'CIUDAD BOLIVAR', 1, 1, N'101')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (23, N'BRICEÑO', 1, 1, N'107')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (24, N'BURITICA', 1, 1, N'113')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (25, N'CACERES', 1, 1, N'120')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (26, N'CAICEDO', 1, 1, N'125')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (27, N'CALDAS', 1, 1, N'129')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (28, N'CAMPAMENTO', 1, 1, N'134')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (29, N'CAÑASGORDAS', 1, 1, N'138')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (30, N'CARACOLI', 1, 1, N'142')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (31, N'CARAMANTA', 1, 1, N'145')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (32, N'CAREPA', 1, 1, N'147')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (33, N'EL CARMEN DE VIBORAL', 1, 1, N'148')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (34, N'CAROLINA', 1, 1, N'150')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (35, N'CAUCASIA', 1, 1, N'154')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (36, N'CHIGORODO', 1, 1, N'172')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (37, N'CISNEROS', 1, 1, N'190')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (38, N'COCORNA', 1, 1, N'197')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (39, N'CONCEPCION', 1, 1, N'206')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (40, N'CONCORDIA', 1, 1, N'209')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (41, N'COPACABANA', 1, 1, N'212')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (42, N'DABEIBA', 1, 1, N'234')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (43, N'DON MATIAS', 1, 1, N'237')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (44, N'EBEJICO', 1, 1, N'240')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (45, N'EL BAGRE', 1, 1, N'250')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (46, N'ENTRERRIOS', 1, 1, N'264')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (47, N'ENVIGADO', 1, 1, N'266')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (48, N'FREDONIA', 1, 1, N'282')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (49, N'FRONTINO', 1, 1, N'284')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (50, N'GIRALDO', 1, 1, N'306')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (51, N'GIRARDOTA', 1, 1, N'308')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (52, N'GOMEZ PLATA', 1, 1, N'310')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (53, N'GRANADA', 1, 1, N'313')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (54, N'GUADALUPE', 1, 1, N'315')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (55, N'GUARNE', 1, 1, N'318')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (56, N'GUATAPE', 1, 1, N'321')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (57, N'HELICONIA', 1, 1, N'347')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (58, N'HISPANIA', 1, 1, N'353')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (59, N'ITAGUI', 1, 1, N'360')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (60, N'ITUANGO', 1, 1, N'361')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (61, N'JARDIN', 1, 1, N'364')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (62, N'JERICO', 1, 1, N'368')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (63, N'LA CEJA', 1, 1, N'376')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (64, N'LA ESTRELLA', 1, 1, N'380')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (65, N'LA PINTADA', 1, 1, N'390')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (66, N'LA UNION', 1, 1, N'400')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (67, N'LIBORINA', 1, 1, N'411')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (68, N'MACEO', 1, 1, N'425')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (69, N'MARINILLA', 1, 1, N'440')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (70, N'MONTEBELLO', 1, 1, N'467')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (71, N'MURINDO', 1, 1, N'475')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (72, N'MUTATA', 1, 1, N'480')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (73, N'NARIÑO', 1, 1, N'483')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (74, N'NECOCLI', 1, 1, N'490')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (75, N'NECHI', 1, 1, N'495')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (76, N'OLAYA', 1, 1, N'501')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (77, N'PEÐOL', 1, 1, N'541')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (78, N'PEQUE', 1, 1, N'543')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (79, N'PUEBLORRICO', 1, 1, N'576')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (80, N'PUERTO BERRIO', 1, 1, N'579')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (81, N'PUERTO NARE', 1, 1, N'585')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (82, N'PUERTO TRIUNFO', 1, 1, N'591')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (83, N'REMEDIOS', 1, 1, N'604')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (84, N'RETIRO', 1, 1, N'607')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (85, N'RIONEGRO', 1, 1, N'615')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (86, N'SABANALARGA', 1, 1, N'628')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (87, N'SABANETA', 1, 1, N'631')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (88, N'SALGAR', 1, 1, N'642')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (89, N'SAN ANDRES DE CUERQUIA', 1, 1, N'647')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (90, N'SAN CARLOS', 1, 1, N'649')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (91, N'SAN FRANCISCO', 1, 1, N'652')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (92, N'SAN JERONIMO', 1, 1, N'656')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (93, N'SAN JOSE DE LA MONTAÑA', 1, 1, N'658')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (94, N'SAN JUAN DE URABA', 1, 1, N'659')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (95, N'SAN LUIS', 1, 1, N'660')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (96, N'SAN PEDRO', 1, 1, N'664')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (97, N'SAN PEDRO DE URABA', 1, 1, N'665')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (98, N'SAN RAFAEL', 1, 1, N'667')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (99, N'SAN ROQUE', 1, 1, N'670')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (100, N'SAN VICENTE', 1, 1, N'674')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (101, N'SANTA BARBARA', 1, 1, N'679')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (102, N'SANTA ROSA DE OSOS', 1, 1, N'686')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (103, N'SANTO DOMINGO', 1, 1, N'690')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (104, N'EL SANTUARIO', 1, 1, N'697')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (105, N'SEGOVIA', 1, 1, N'736')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (106, N'SONSON', 1, 1, N'756')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (107, N'SOPETRAN', 1, 1, N'761')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (108, N'TAMESIS', 1, 1, N'789')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (109, N'TARAZA', 1, 1, N'790')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (110, N'TARSO', 1, 1, N'792')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (111, N'TITIRIBI', 1, 1, N'809')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (112, N'TOLEDO', 1, 1, N'819')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (113, N'TURBO', 1, 1, N'837')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (114, N'URAMITA', 1, 1, N'842')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (115, N'URRAO', 1, 1, N'847')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (116, N'VALDIVIA', 1, 1, N'854')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (117, N'VALPARAISO', 1, 1, N'856')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (118, N'VEGACHI', 1, 1, N'858')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (119, N'VENECIA', 1, 1, N'861')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (120, N'VIGIA DEL FUERTE', 1, 1, N'873')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (121, N'YALI', 1, 1, N'885')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (122, N'YARUMAL', 1, 1, N'887')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (123, N'YOLOMBO', 1, 1, N'890')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (124, N'YONDO', 1, 1, N'893')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (125, N'ZARAGOZA', 1, 1, N'895')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (126, N'BARRANQUILLA', 2, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (127, N'BARANOA', 2, 1, N'078')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (128, N'CAMPO DE LA CRUZ', 2, 1, N'137')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (129, N'CANDELARIA', 2, 1, N'141')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (130, N'GALAPA', 2, 1, N'296')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (131, N'JUAN DE ACOSTA', 2, 1, N'372')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (132, N'LURUACO', 2, 1, N'421')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (133, N'MALAMBO', 2, 1, N'433')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (134, N'MANATI', 2, 1, N'436')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (135, N'PALMAR DE VARELA', 2, 1, N'520')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (136, N'PIOJO', 2, 1, N'549')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (137, N'POLONUEVO', 2, 1, N'558')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (138, N'PONEDERA', 2, 1, N'560')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (139, N'PUERTO COLOMBIA', 2, 1, N'573')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (140, N'REPELON', 2, 1, N'606')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (141, N'SABANAGRANDE', 2, 1, N'634')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (142, N'SABANALARGA', 2, 1, N'638')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (143, N'SANTA LUCIA', 2, 1, N'675')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (144, N'SANTO TOMAS', 2, 1, N'685')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (145, N'SOLEDAD', 2, 1, N'758')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (146, N'SUAN', 2, 1, N'770')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (147, N'TUBARA', 2, 1, N'832')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (148, N'USIACURI', 2, 1, N'849')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (149, N'BOGOTA, D.C.', 3, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (150, N'CARTAGENA', 4, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (151, N'ACHI', 4, 1, N'006')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (152, N'ALTOS DEL ROSARIO', 4, 1, N'030')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (153, N'ARENAL', 4, 1, N'042')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (154, N'ARJONA', 4, 1, N'052')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (155, N'ARROYOHONDO', 4, 1, N'062')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (156, N'BARRANCO DE LOBA', 4, 1, N'074')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (157, N'CALAMAR', 4, 1, N'140')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (158, N'CANTAGALLO', 4, 1, N'160')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (159, N'CICUCO', 4, 1, N'188')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (160, N'CORDOBA', 4, 1, N'212')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (161, N'CLEMENCIA', 4, 1, N'222')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (162, N'EL CARMEN DE BOLIVAR', 4, 1, N'244')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (163, N'EL GUAMO', 4, 1, N'248')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (164, N'EL PEÑON', 4, 1, N'268')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (165, N'HATILLO DE LOBA', 4, 1, N'300')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (166, N'MAGANGUE', 4, 1, N'430')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (167, N'MAHATES', 4, 1, N'433')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (168, N'MARGARITA', 4, 1, N'440')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (169, N'MARIA LA BAJA', 4, 1, N'442')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (170, N'MONTECRISTO', 4, 1, N'458')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (171, N'MOMPOS', 4, 1, N'468')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (172, N'NOROSI', 4, 1, N'490')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (173, N'MORALES', 4, 1, N'473')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (174, N'PINILLOS', 4, 1, N'549')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (175, N'REGIDOR', 4, 1, N'580')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (176, N'RIO VIEJO', 4, 1, N'600')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (177, N'SAN CRISTOBAL', 4, 1, N'620')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (178, N'SAN ESTANISLAO', 4, 1, N'647')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (179, N'SAN FERNANDO', 4, 1, N'650')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (180, N'SAN JACINTO', 4, 1, N'654')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (181, N'SAN JACINTO DEL CAUCA', 4, 1, N'655')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (182, N'SAN JUAN NEPOMUCENO', 4, 1, N'657')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (183, N'SAN MARTIN DE LOBA', 4, 1, N'667')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (184, N'SAN PABLO', 4, 1, N'670')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (185, N'SANTA CATALINA', 4, 1, N'673')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (186, N'SANTA ROSA', 4, 1, N'683')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (187, N'SANTA ROSA DEL SUR', 4, 1, N'688')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (188, N'SIMITI', 4, 1, N'744')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (189, N'SOPLAVIENTO', 4, 1, N'760')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (190, N'TALAIGUA NUEVO', 4, 1, N'780')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (191, N'TIQUISIO', 4, 1, N'810')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (192, N'TURBACO', 4, 1, N'836')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (193, N'TURBANA', 4, 1, N'838')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (194, N'VILLANUEVA', 4, 1, N'873')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (195, N'ZAMBRANO', 4, 1, N'894')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (196, N'TUNJA', 5, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (197, N'ALMEIDA', 5, 1, N'022')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (198, N'AQUITANIA', 5, 1, N'047')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (199, N'ARCABUCO', 5, 1, N'051')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (200, N'BELEN', 5, 1, N'087')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (201, N'BERBEO', 5, 1, N'090')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (202, N'BETEITIVA', 5, 1, N'092')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (203, N'BOAVITA', 5, 1, N'097')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (204, N'BOYACA', 5, 1, N'104')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (205, N'BRICEÑO', 5, 1, N'106')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (206, N'BUENAVISTA', 5, 1, N'109')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (207, N'BUSBANZA', 5, 1, N'114')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (208, N'CALDAS', 5, 1, N'131')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (209, N'CAMPOHERMOSO', 5, 1, N'135')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (210, N'CERINZA', 5, 1, N'162')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (211, N'CHINAVITA', 5, 1, N'172')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (212, N'CHIQUINQUIRA', 5, 1, N'176')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (213, N'CHISCAS', 5, 1, N'180')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (214, N'CHITA', 5, 1, N'183')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (215, N'CHITARAQUE', 5, 1, N'185')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (216, N'CHIVATA', 5, 1, N'187')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (217, N'CIENEGA', 5, 1, N'189')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (218, N'COMBITA', 5, 1, N'204')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (219, N'COPER', 5, 1, N'212')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (220, N'CORRALES', 5, 1, N'215')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (221, N'COVARACHIA', 5, 1, N'218')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (222, N'CUBARA', 5, 1, N'223')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (223, N'CUCAITA', 5, 1, N'224')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (224, N'CUITIVA', 5, 1, N'226')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (225, N'CHIQUIZA', 5, 1, N'232')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (226, N'CHIVOR', 5, 1, N'236')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (227, N'DUITAMA', 5, 1, N'238')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (228, N'EL COCUY', 5, 1, N'244')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (229, N'EL ESPINO', 5, 1, N'248')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (230, N'FIRAVITOBA', 5, 1, N'272')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (231, N'FLORESTA', 5, 1, N'276')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (232, N'GACHANTIVA', 5, 1, N'293')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (233, N'GAMEZA', 5, 1, N'296')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (234, N'GARAGOA', 5, 1, N'299')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (235, N'GUACAMAYAS', 5, 1, N'317')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (236, N'GUATEQUE', 5, 1, N'322')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (237, N'GUAYATA', 5, 1, N'325')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (238, N'GsICAN', 5, 1, N'332')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (239, N'IZA', 5, 1, N'362')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (240, N'JENESANO', 5, 1, N'367')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (241, N'JERICO', 5, 1, N'368')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (242, N'LABRANZAGRANDE', 5, 1, N'377')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (243, N'LA CAPILLA', 5, 1, N'380')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (244, N'LA VICTORIA', 5, 1, N'401')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (245, N'LA UVITA', 5, 1, N'403')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (246, N'VILLA DE LEYVA', 5, 1, N'407')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (247, N'MACANAL', 5, 1, N'425')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (248, N'MARIPI', 5, 1, N'442')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (249, N'MIRAFLORES', 5, 1, N'455')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (250, N'MONGUA', 5, 1, N'464')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (251, N'MONGUI', 5, 1, N'466')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (252, N'MONIQUIRA', 5, 1, N'469')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (253, N'MOTAVITA', 5, 1, N'476')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (254, N'MUZO', 5, 1, N'480')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (255, N'NOBSA', 5, 1, N'491')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (256, N'NUEVO COLON', 5, 1, N'494')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (257, N'OICATA', 5, 1, N'500')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (258, N'OTANCHE', 5, 1, N'507')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (259, N'PACHAVITA', 5, 1, N'511')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (260, N'PAEZ', 5, 1, N'514')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (261, N'PAIPA', 5, 1, N'516')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (262, N'PAJARITO', 5, 1, N'518')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (263, N'PANQUEBA', 5, 1, N'522')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (264, N'PAUNA', 5, 1, N'531')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (265, N'PAYA', 5, 1, N'533')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (266, N'PAZ DE RIO', 5, 1, N'537')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (267, N'PESCA', 5, 1, N'542')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (268, N'PISBA', 5, 1, N'550')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (269, N'PUERTO BOYACA', 5, 1, N'572')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (270, N'QUIPAMA', 5, 1, N'580')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (271, N'RAMIRIQUI', 5, 1, N'599')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (272, N'RAQUIRA', 5, 1, N'600')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (273, N'RONDON', 5, 1, N'621')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (274, N'SABOYA', 5, 1, N'632')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (275, N'SACHICA', 5, 1, N'638')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (276, N'SAMACA', 5, 1, N'646')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (277, N'SAN EDUARDO', 5, 1, N'660')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (278, N'SAN JOSE DE PARE', 5, 1, N'664')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (279, N'SAN LUIS DE GACENO', 5, 1, N'667')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (280, N'SAN MATEO', 5, 1, N'673')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (281, N'SAN MIGUEL DE SEMA', 5, 1, N'676')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (282, N'SAN PABLO DE BORBUR', 5, 1, N'681')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (283, N'SANTANA', 5, 1, N'686')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (284, N'SANTA MARIA', 5, 1, N'690')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (285, N'SANTA ROSA DE VITERBO', 5, 1, N'693')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (286, N'SANTA SOFIA', 5, 1, N'696')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (287, N'SATIVANORTE', 5, 1, N'720')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (288, N'SATIVASUR', 5, 1, N'723')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (289, N'SIACHOQUE', 5, 1, N'740')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (290, N'SOATA', 5, 1, N'753')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (291, N'SOCOTA', 5, 1, N'755')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (292, N'SOCHA', 5, 1, N'757')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (293, N'SOGAMOSO', 5, 1, N'759')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (294, N'SOMONDOCO', 5, 1, N'761')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (295, N'SORA', 5, 1, N'762')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (296, N'SOTAQUIRA', 5, 1, N'763')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (297, N'SORACA', 5, 1, N'764')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (298, N'SUSACON', 5, 1, N'774')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (299, N'SUTAMARCHAN', 5, 1, N'776')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (300, N'SUTATENZA', 5, 1, N'778')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (301, N'TASCO', 5, 1, N'790')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (302, N'TENZA', 5, 1, N'798')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (303, N'TIBANA', 5, 1, N'804')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (304, N'TIBASOSA', 5, 1, N'806')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (305, N'TINJACA', 5, 1, N'808')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (306, N'TIPACOQUE', 5, 1, N'810')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (307, N'TOCA', 5, 1, N'814')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (308, N'TOGsI', 5, 1, N'816')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (309, N'TOPAGA', 5, 1, N'820')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (310, N'TOTA', 5, 1, N'822')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (311, N'TUNUNGUA', 5, 1, N'832')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (312, N'TURMEQUE', 5, 1, N'835')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (313, N'TUTA', 5, 1, N'837')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (314, N'TUTAZA', 5, 1, N'839')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (315, N'UMBITA', 5, 1, N'842')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (316, N'VENTAQUEMADA', 5, 1, N'861')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (317, N'VIRACACHA', 5, 1, N'879')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (318, N'ZETAQUIRA', 5, 1, N'897')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (319, N'MANIZALES', 6, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (320, N'AGUADAS', 6, 1, N'013')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (321, N'ANSERMA', 6, 1, N'042')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (322, N'ARANZAZU', 6, 1, N'050')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (323, N'BELALCAZAR', 6, 1, N'088')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (324, N'CHINCHINA', 6, 1, N'174')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (325, N'FILADELFIA', 6, 1, N'272')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (326, N'LA DORADA', 6, 1, N'380')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (327, N'LA MERCED', 6, 1, N'388')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (328, N'MANZANARES', 6, 1, N'433')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (329, N'MARMATO', 6, 1, N'442')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (330, N'MARQUETALIA', 6, 1, N'444')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (331, N'MARULANDA', 6, 1, N'446')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (332, N'NEIRA', 6, 1, N'486')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (333, N'NORCASIA', 6, 1, N'495')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (334, N'PACORA', 6, 1, N'513')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (335, N'PALESTINA', 6, 1, N'524')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (336, N'PENSILVANIA', 6, 1, N'541')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (337, N'RIOSUCIO', 6, 1, N'614')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (338, N'RISARALDA', 6, 1, N'616')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (339, N'SALAMINA', 6, 1, N'653')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (340, N'SAMANA', 6, 1, N'662')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (341, N'SAN JOSE', 6, 1, N'665')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (342, N'SUPIA', 6, 1, N'777')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (343, N'VICTORIA', 6, 1, N'867')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (344, N'VILLAMARIA', 6, 1, N'873')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (345, N'VITERBO', 6, 1, N'877')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (346, N'FLORENCIA', 7, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (347, N'ALBANIA', 7, 1, N'029')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (348, N'BELEN DE LOS ANDAQUIES', 7, 1, N'094')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (349, N'CARTAGENA DEL CHAIRA', 7, 1, N'150')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (350, N'CURILLO', 7, 1, N'205')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (351, N'EL DONCELLO', 7, 1, N'247')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (352, N'EL PAUJIL', 7, 1, N'256')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (353, N'LA MONTAÑITA', 7, 1, N'410')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (354, N'MILAN', 7, 1, N'460')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (355, N'MORELIA', 7, 1, N'479')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (356, N'PUERTO RICO', 7, 1, N'592')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (357, N'SAN JOSE DEL FRAGUA', 7, 1, N'610')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (358, N'SAN VICENTE DEL CAGUAN', 7, 1, N'753')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (359, N'SOLANO', 7, 1, N'756')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (360, N'SOLITA', 7, 1, N'785')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (361, N'VALPARAISO', 7, 1, N'860')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (362, N'POPAYAN', 8, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (363, N'ALMAGUER', 8, 1, N'022')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (364, N'ARGELIA', 8, 1, N'050')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (365, N'BALBOA', 8, 1, N'075')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (366, N'BOLIVAR', 8, 1, N'100')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (367, N'BUENOS AIRES', 8, 1, N'110')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (368, N'CAJIBIO', 8, 1, N'130')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (369, N'CALDONO', 8, 1, N'137')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (370, N'CALOTO', 8, 1, N'142')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (371, N'CORINTO', 8, 1, N'212')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (372, N'EL TAMBO', 8, 1, N'256')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (373, N'FLORENCIA', 8, 1, N'290')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (374, N'GUACHENE', 8, 1, N'300')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (375, N'GUAPI', 8, 1, N'318')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (376, N'INZA', 8, 1, N'355')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (377, N'JAMBALO', 8, 1, N'364')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (378, N'LA SIERRA', 8, 1, N'392')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (379, N'LA VEGA', 8, 1, N'397')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (380, N'LOPEZ', 8, 1, N'418')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (381, N'MERCADERES', 8, 1, N'450')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (382, N'MIRANDA', 8, 1, N'455')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (383, N'MORALES', 8, 1, N'473')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (384, N'PADILLA', 8, 1, N'513')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (385, N'PAEZ', 8, 1, N'517')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (386, N'PATIA', 8, 1, N'532')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (387, N'PIAMONTE', 8, 1, N'533')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (388, N'PIENDAMO', 8, 1, N'548')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (389, N'PUERTO TEJADA', 8, 1, N'573')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (390, N'PURACE', 8, 1, N'585')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (391, N'ROSAS', 8, 1, N'622')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (392, N'SAN SEBASTIAN', 8, 1, N'693')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (393, N'SANTANDER DE QUILICHAO', 8, 1, N'698')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (394, N'SANTA ROSA', 8, 1, N'701')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (395, N'SILVIA', 8, 1, N'743')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (396, N'SOTARA', 8, 1, N'760')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (397, N'SUAREZ', 8, 1, N'780')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (398, N'SUCRE', 8, 1, N'785')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (399, N'TIMBIO', 8, 1, N'807')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (400, N'TIMBIQUI', 8, 1, N'809')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (401, N'TORIBIO', 8, 1, N'821')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (402, N'TOTORO', 8, 1, N'824')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (403, N'VILLA RICA', 8, 1, N'845')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (404, N'VALLEDUPAR', 9, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (405, N'AGUACHICA', 9, 1, N'011')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (406, N'AGUSTIN CODAZZI', 9, 1, N'013')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (407, N'ASTREA', 9, 1, N'032')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (408, N'BECERRIL', 9, 1, N'045')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (409, N'BOSCONIA', 9, 1, N'060')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (410, N'CHIMICHAGUA', 9, 1, N'175')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (411, N'CHIRIGUANA', 9, 1, N'178')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (412, N'CURUMANI', 9, 1, N'228')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (413, N'EL COPEY', 9, 1, N'238')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (414, N'EL PASO', 9, 1, N'250')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (415, N'GAMARRA', 9, 1, N'295')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (416, N'GONZALEZ', 9, 1, N'310')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (417, N'LA GLORIA', 9, 1, N'383')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (418, N'LA JAGUA DE IBIRICO', 9, 1, N'400')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (419, N'MANAURE', 9, 1, N'443')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (420, N'PAILITAS', 9, 1, N'517')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (421, N'PELAYA', 9, 1, N'550')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (422, N'PUEBLO BELLO', 9, 1, N'570')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (423, N'RIO DE ORO', 9, 1, N'614')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (424, N'LA PAZ', 9, 1, N'621')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (425, N'SAN ALBERTO', 9, 1, N'710')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (426, N'SAN DIEGO', 9, 1, N'750')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (427, N'SAN MARTIN', 9, 1, N'770')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (428, N'TAMALAMEQUE', 9, 1, N'787')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (429, N'MONTERIA', 10, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (430, N'AYAPEL', 10, 1, N'068')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (431, N'BUENAVISTA', 10, 1, N'079')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (432, N'CANALETE', 10, 1, N'090')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (433, N'CERETE', 10, 1, N'162')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (434, N'CHIMA', 10, 1, N'168')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (435, N'CHINU', 10, 1, N'182')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (436, N'CIENAGA DE ORO', 10, 1, N'189')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (437, N'COTORRA', 10, 1, N'300')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (438, N'LA APARTADA', 10, 1, N'350')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (439, N'LORICA', 10, 1, N'417')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (440, N'LOS CORDOBAS', 10, 1, N'419')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (441, N'MOMIL', 10, 1, N'464')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (442, N'MONTELIBANO', 10, 1, N'466')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (443, N'MOÑITOS', 10, 1, N'500')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (444, N'PLANETA RICA', 10, 1, N'555')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (445, N'PUEBLO NUEVO', 10, 1, N'570')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (446, N'PUERTO ESCONDIDO', 10, 1, N'574')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (447, N'PUERTO LIBERTADOR', 10, 1, N'580')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (448, N'PURISIMA', 10, 1, N'586')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (449, N'SAHAGUN', 10, 1, N'660')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (450, N'SAN ANDRES SOTAVENTO', 10, 1, N'670')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (451, N'SAN ANTERO', 10, 1, N'672')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (452, N'SAN BERNARDO DEL VIENTO', 10, 1, N'675')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (453, N'SAN CARLOS', 10, 1, N'678')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (454, N'SAN PELAYO', 10, 1, N'686')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (455, N'TIERRALTA', 10, 1, N'807')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (456, N'VALENCIA', 10, 1, N'855')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (457, N'AGUA DE DIOS', 11, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (458, N'ALBAN', 11, 1, N'019')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (459, N'ANAPOIMA', 11, 1, N'035')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (460, N'ANOLAIMA', 11, 1, N'040')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (461, N'ARBELAEZ', 11, 1, N'053')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (462, N'BELTRAN', 11, 1, N'086')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (463, N'BITUIMA', 11, 1, N'095')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (464, N'BOJACA', 11, 1, N'099')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (465, N'CABRERA', 11, 1, N'120')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (466, N'CACHIPAY', 11, 1, N'123')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (467, N'CAJICA', 11, 1, N'126')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (468, N'CAPARRAPI', 11, 1, N'148')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (469, N'CAQUEZA', 11, 1, N'151')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (470, N'CARMEN DE CARUPA', 11, 1, N'154')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (471, N'CHAGUANI', 11, 1, N'168')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (472, N'CHIA', 11, 1, N'175')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (473, N'CHIPAQUE', 11, 1, N'178')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (474, N'CHOACHI', 11, 1, N'181')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (475, N'CHOCONTA', 11, 1, N'183')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (476, N'COGUA', 11, 1, N'200')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (477, N'COTA', 11, 1, N'214')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (478, N'CUCUNUBA', 11, 1, N'224')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (479, N'EL COLEGIO', 11, 1, N'245')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (480, N'EL PEÑON', 11, 1, N'258')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (481, N'EL ROSAL', 11, 1, N'260')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (482, N'FACATATIVA', 11, 1, N'269')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (483, N'FOMEQUE', 11, 1, N'279')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (484, N'FOSCA', 11, 1, N'281')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (485, N'FUNZA', 11, 1, N'286')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (486, N'FUQUENE', 11, 1, N'288')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (487, N'FUSAGASUGA', 11, 1, N'290')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (488, N'GACHALA', 11, 1, N'293')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (489, N'GACHANCIPA', 11, 1, N'295')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (490, N'GACHETA', 11, 1, N'297')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (491, N'GAMA', 11, 1, N'299')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (492, N'GIRARDOT', 11, 1, N'307')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (493, N'GRANADA', 11, 1, N'312')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (494, N'GUACHETA', 11, 1, N'317')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (495, N'GUADUAS', 11, 1, N'320')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (496, N'GUASCA', 11, 1, N'322')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (497, N'GUATAQUI', 11, 1, N'324')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (498, N'GUATAVITA', 11, 1, N'326')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (499, N'GUAYABAL DE SIQUIMA', 11, 1, N'328')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (500, N'GUAYABETAL', 11, 1, N'335')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (501, N'GUTIERREZ', 11, 1, N'339')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (502, N'JERUSALEN', 11, 1, N'368')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (503, N'JUNIN', 11, 1, N'372')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (504, N'LA CALERA', 11, 1, N'377')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (505, N'LA MESA', 11, 1, N'386')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (506, N'LA PALMA', 11, 1, N'394')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (507, N'LA PEÑA', 11, 1, N'398')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (508, N'LA VEGA', 11, 1, N'402')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (509, N'LENGUAZAQUE', 11, 1, N'407')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (510, N'MACHETA', 11, 1, N'426')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (511, N'MADRID', 11, 1, N'430')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (512, N'MANTA', 11, 1, N'436')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (513, N'MEDINA', 11, 1, N'438')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (514, N'MOSQUERA', 11, 1, N'473')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (515, N'NARIÑO', 11, 1, N'483')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (516, N'NEMOCON', 11, 1, N'486')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (517, N'NILO', 11, 1, N'488')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (518, N'NIMAIMA', 11, 1, N'489')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (519, N'NOCAIMA', 11, 1, N'491')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (520, N'VENECIA', 11, 1, N'506')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (521, N'PACHO', 11, 1, N'513')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (522, N'PAIME', 11, 1, N'518')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (523, N'PANDI', 11, 1, N'524')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (524, N'PARATEBUENO', 11, 1, N'530')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (525, N'PASCA', 11, 1, N'535')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (526, N'PUERTO SALGAR', 11, 1, N'572')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (527, N'PULI', 11, 1, N'580')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (528, N'QUEBRADANEGRA', 11, 1, N'592')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (529, N'QUETAME', 11, 1, N'594')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (530, N'QUIPILE', 11, 1, N'596')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (531, N'APULO', 11, 1, N'599')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (532, N'RICAURTE', 11, 1, N'612')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (533, N'SAN ANTONIO DEL TEQUENDAMA', 11, 1, N'645')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (534, N'SAN BERNARDO', 11, 1, N'649')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (535, N'SAN CAYETANO', 11, 1, N'653')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (536, N'SAN FRANCISCO', 11, 1, N'658')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (537, N'SAN JUAN DE RIO SECO', 11, 1, N'662')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (538, N'SASAIMA', 11, 1, N'718')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (539, N'SESQUILE', 11, 1, N'736')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (540, N'SIBATE', 11, 1, N'740')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (541, N'SILVANIA', 11, 1, N'743')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (542, N'SIMIJACA', 11, 1, N'745')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (543, N'SOACHA', 11, 1, N'754')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (544, N'SOPO', 11, 1, N'758')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (545, N'SUBACHOQUE', 11, 1, N'769')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (546, N'SUESCA', 11, 1, N'772')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (547, N'SUPATA', 11, 1, N'777')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (548, N'SUSA', 11, 1, N'779')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (549, N'SUTATAUSA', 11, 1, N'781')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (550, N'TABIO', 11, 1, N'785')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (551, N'TAUSA', 11, 1, N'793')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (552, N'TENA', 11, 1, N'797')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (553, N'TENJO', 11, 1, N'799')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (554, N'TIBACUY', 11, 1, N'805')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (555, N'TIBIRITA', 11, 1, N'807')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (556, N'TOCAIMA', 11, 1, N'815')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (557, N'TOCANCIPA', 11, 1, N'817')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (558, N'TOPAIPI', 11, 1, N'823')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (559, N'UBALA', 11, 1, N'839')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (560, N'UBAQUE', 11, 1, N'841')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (561, N'VILLA DE SAN DIEGO DE UBATE', 11, 1, N'843')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (562, N'UNE', 11, 1, N'845')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (563, N'UTICA', 11, 1, N'851')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (564, N'VERGARA', 11, 1, N'862')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (565, N'VIANI', 11, 1, N'867')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (566, N'VILLAGOMEZ', 11, 1, N'871')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (567, N'VILLAPINZON', 11, 1, N'873')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (568, N'VILLETA', 11, 1, N'875')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (569, N'VIOTA', 11, 1, N'878')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (570, N'YACOPI', 11, 1, N'885')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (571, N'ZIPACON', 11, 1, N'898')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (572, N'ZIPAQUIRA', 11, 1, N'899')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (573, N'QUIBDO', 12, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (574, N'ACANDI', 12, 1, N'006')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (575, N'ALTO BAUDO', 12, 1, N'025')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (576, N'ATRATO', 12, 1, N'050')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (577, N'BAGADO', 12, 1, N'073')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (578, N'BAHIA SOLANO', 12, 1, N'075')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (579, N'BAJO BAUDO', 12, 1, N'077')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (580, N'BOJAYA', 12, 1, N'099')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (581, N'EL CANTON DEL SAN PABLO', 12, 1, N'135')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (582, N'CARMEN DEL DARIEN', 12, 1, N'150')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (583, N'CERTEGUI', 12, 1, N'160')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (584, N'CONDOTO', 12, 1, N'205')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (585, N'EL CARMEN DE ATRATO', 12, 1, N'245')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (586, N'EL LITORAL DEL SAN JUAN', 12, 1, N'250')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (587, N'ISTMINA', 12, 1, N'361')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (588, N'JURADO', 12, 1, N'372')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (589, N'LLORO', 12, 1, N'413')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (590, N'MEDIO ATRATO', 12, 1, N'425')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (591, N'MEDIO BAUDO', 12, 1, N'430')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (592, N'MEDIO SAN JUAN', 12, 1, N'450')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (593, N'NOVITA', 12, 1, N'491')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (594, N'NUQUI', 12, 1, N'495')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (595, N'RIO IRO', 12, 1, N'580')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (596, N'RIO QUITO', 12, 1, N'600')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (597, N'RIOSUCIO', 12, 1, N'615')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (598, N'SAN JOSE DEL PALMAR', 12, 1, N'660')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (599, N'SIPI', 12, 1, N'745')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (600, N'TADO', 12, 1, N'787')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (601, N'UNGUIA', 12, 1, N'800')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (602, N'UNION PANAMERICANA', 12, 1, N'810')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (603, N'NEIVA', 13, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (604, N'ACEVEDO', 13, 1, N'006')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (605, N'AGRADO', 13, 1, N'013')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (606, N'AIPE', 13, 1, N'016')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (607, N'ALGECIRAS', 13, 1, N'020')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (608, N'ALTAMIRA', 13, 1, N'026')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (609, N'BARAYA', 13, 1, N'078')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (610, N'CAMPOALEGRE', 13, 1, N'132')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (611, N'COLOMBIA', 13, 1, N'206')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (612, N'ELIAS', 13, 1, N'244')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (613, N'GARZON', 13, 1, N'298')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (614, N'GIGANTE', 13, 1, N'306')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (615, N'GUADALUPE', 13, 1, N'319')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (616, N'HOBO', 13, 1, N'349')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (617, N'IQUIRA', 13, 1, N'357')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (618, N'ISNOS', 13, 1, N'359')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (619, N'LA ARGENTINA', 13, 1, N'378')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (620, N'LA PLATA', 13, 1, N'396')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (621, N'NATAGA', 13, 1, N'483')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (622, N'OPORAPA', 13, 1, N'503')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (623, N'PAICOL', 13, 1, N'518')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (624, N'PALERMO', 13, 1, N'524')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (625, N'PALESTINA', 13, 1, N'530')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (626, N'PITAL', 13, 1, N'548')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (627, N'PITALITO', 13, 1, N'551')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (628, N'RIVERA', 13, 1, N'615')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (629, N'SALADOBLANCO', 13, 1, N'660')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (630, N'SAN AGUSTIN', 13, 1, N'668')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (631, N'SANTA MARIA', 13, 1, N'676')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (632, N'SUAZA', 13, 1, N'770')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (633, N'TARQUI', 13, 1, N'791')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (634, N'TESALIA', 13, 1, N'797')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (635, N'TELLO', 13, 1, N'799')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (636, N'TERUEL', 13, 1, N'801')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (637, N'TIMANA', 13, 1, N'807')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (638, N'VILLAVIEJA', 13, 1, N'872')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (639, N'YAGUARA', 13, 1, N'885')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (640, N'RIOHACHA', 14, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (641, N'ALBANIA', 14, 1, N'035')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (642, N'BARRANCAS', 14, 1, N'078')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (643, N'DIBULLA', 14, 1, N'090')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (644, N'DISTRACCION', 14, 1, N'098')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (645, N'EL MOLINO', 14, 1, N'110')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (646, N'FONSECA', 14, 1, N'279')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (647, N'HATONUEVO', 14, 1, N'378')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (648, N'LA JAGUA DEL PILAR', 14, 1, N'420')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (649, N'MAICAO', 14, 1, N'430')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (650, N'MANAURE', 14, 1, N'560')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (651, N'SAN JUAN DEL CESAR', 14, 1, N'650')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (652, N'URIBIA', 14, 1, N'847')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (653, N'URUMITA', 14, 1, N'855')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (654, N'VILLANUEVA', 14, 1, N'874')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (655, N'SANTA MARTA', 15, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (656, N'ALGARROBO', 15, 1, N'030')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (657, N'ARACATACA', 15, 1, N'053')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (658, N'ARIGUANI', 15, 1, N'058')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (659, N'CERRO SAN ANTONIO', 15, 1, N'161')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (660, N'CHIBOLO', 15, 1, N'170')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (661, N'CIENAGA', 15, 1, N'189')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (662, N'CONCORDIA', 15, 1, N'205')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (663, N'EL BANCO', 15, 1, N'245')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (664, N'EL PIÑON', 15, 1, N'258')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (665, N'EL RETEN', 15, 1, N'268')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (666, N'FUNDACION', 15, 1, N'288')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (667, N'GUAMAL', 15, 1, N'318')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (668, N'NUEVA GRANADA', 15, 1, N'460')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (669, N'PEDRAZA', 15, 1, N'541')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (670, N'PIJIÑO DEL CARMEN', 15, 1, N'545')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (671, N'PIVIJAY', 15, 1, N'551')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (672, N'PLATO', 15, 1, N'555')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (673, N'PUEBLOVIEJO', 15, 1, N'570')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (674, N'REMOLINO', 15, 1, N'605')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (675, N'SABANAS DE SAN ANGEL', 15, 1, N'660')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (676, N'SALAMINA', 15, 1, N'675')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (677, N'SAN SEBASTIAN DE BUENAVISTA', 15, 1, N'692')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (678, N'SAN ZENON', 15, 1, N'703')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (679, N'SANTA ANA', 15, 1, N'707')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (680, N'SANTA BARBARA DE PINTO', 15, 1, N'720')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (681, N'SITIONUEVO', 15, 1, N'745')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (682, N'TENERIFE', 15, 1, N'798')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (683, N'ZAPAYAN', 15, 1, N'960')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (684, N'ZONA BANANERA', 15, 1, N'980')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (685, N'VILLAVICENCIO', 16, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (686, N'ACACIAS', 16, 1, N'006')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (687, N'BARRANCA DE UPIA', 16, 1, N'110')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (688, N'CABUYARO', 16, 1, N'124')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (689, N'CASTILLA LA NUEVA', 16, 1, N'150')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (690, N'CUBARRAL', 16, 1, N'223')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (691, N'CUMARAL', 16, 1, N'226')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (692, N'EL CALVARIO', 16, 1, N'245')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (693, N'EL CASTILLO', 16, 1, N'251')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (694, N'EL DORADO', 16, 1, N'270')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (695, N'FUENTE DE ORO', 16, 1, N'287')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (696, N'GRANADA', 16, 1, N'313')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (697, N'GUAMAL', 16, 1, N'318')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (698, N'MAPIRIPAN', 16, 1, N'325')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (699, N'MESETAS', 16, 1, N'330')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (700, N'LA MACARENA', 16, 1, N'350')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (701, N'URIBE', 16, 1, N'370')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (702, N'LEJANIAS', 16, 1, N'400')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (703, N'PUERTO CONCORDIA', 16, 1, N'450')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (704, N'PUERTO GAITAN', 16, 1, N'568')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (705, N'PUERTO LOPEZ', 16, 1, N'573')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (706, N'PUERTO LLERAS', 16, 1, N'577')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (707, N'PUERTO RICO', 16, 1, N'590')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (708, N'RESTREPO', 16, 1, N'606')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (709, N'SAN CARLOS DE GUAROA', 16, 1, N'680')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (710, N'SAN JUAN DE ARAMA', 16, 1, N'683')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (711, N'SAN JUANITO', 16, 1, N'686')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (712, N'SAN MARTIN', 16, 1, N'689')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (713, N'VISTAHERMOSA', 16, 1, N'711')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (714, N'PASTO', 17, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (715, N'ALBAN', 17, 1, N'019')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (716, N'ALDANA', 17, 1, N'022')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (717, N'ANCUYA', 17, 1, N'036')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (718, N'ARBOLEDA', 17, 1, N'051')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (719, N'BARBACOAS', 17, 1, N'079')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (720, N'BELEN', 17, 1, N'083')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (721, N'BUESACO', 17, 1, N'110')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (722, N'COLON', 17, 1, N'203')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (723, N'CONSACA', 17, 1, N'207')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (724, N'CONTADERO', 17, 1, N'210')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (725, N'CORDOBA', 17, 1, N'215')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (726, N'CUASPUD', 17, 1, N'224')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (727, N'CUMBAL', 17, 1, N'227')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (728, N'CUMBITARA', 17, 1, N'233')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (729, N'CHACHAGsI', 17, 1, N'240')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (730, N'EL CHARCO', 17, 1, N'250')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (731, N'EL PEÑOL', 17, 1, N'254')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (732, N'EL ROSARIO', 17, 1, N'256')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (733, N'EL TABLON DE GOMEZ', 17, 1, N'258')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (734, N'EL TAMBO', 17, 1, N'260')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (735, N'FUNES', 17, 1, N'287')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (736, N'GUACHUCAL', 17, 1, N'317')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (737, N'GUAITARILLA', 17, 1, N'320')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (738, N'GUALMATAN', 17, 1, N'323')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (739, N'ILES', 17, 1, N'352')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (740, N'IMUES', 17, 1, N'354')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (741, N'IPIALES', 17, 1, N'356')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (742, N'LA CRUZ', 17, 1, N'378')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (743, N'LA FLORIDA', 17, 1, N'381')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (744, N'LA LLANADA', 17, 1, N'385')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (745, N'LA TOLA', 17, 1, N'390')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (746, N'LA UNION', 17, 1, N'399')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (747, N'LEIVA', 17, 1, N'405')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (748, N'LINARES', 17, 1, N'411')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (749, N'LOS ANDES', 17, 1, N'418')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (750, N'MAGsI', 17, 1, N'427')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (751, N'MALLAMA', 17, 1, N'435')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (752, N'MOSQUERA', 17, 1, N'473')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (753, N'NARIÑO', 17, 1, N'480')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (754, N'OLAYA HERRERA', 17, 1, N'490')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (755, N'OSPINA', 17, 1, N'506')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (756, N'FRANCISCO PIZARRO', 17, 1, N'520')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (757, N'POLICARPA', 17, 1, N'540')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (758, N'POTOSI', 17, 1, N'560')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (759, N'PROVIDENCIA', 17, 1, N'565')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (760, N'PUERRES', 17, 1, N'573')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (761, N'PUPIALES', 17, 1, N'585')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (762, N'RICAURTE', 17, 1, N'612')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (763, N'ROBERTO PAYAN', 17, 1, N'621')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (764, N'SAMANIEGO', 17, 1, N'678')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (765, N'SANDONA', 17, 1, N'683')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (766, N'SAN BERNARDO', 17, 1, N'685')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (767, N'SAN LORENZO', 17, 1, N'687')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (768, N'SAN PABLO', 17, 1, N'693')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (769, N'SAN PEDRO DE CARTAGO', 17, 1, N'694')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (770, N'SANTA BARBARA', 17, 1, N'696')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (771, N'SANTACRUZ', 17, 1, N'699')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (772, N'SAPUYES', 17, 1, N'720')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (773, N'TAMINANGO', 17, 1, N'786')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (774, N'TANGUA', 17, 1, N'788')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (775, N'SAN ANDRES DE TUMACO', 17, 1, N'835')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (776, N'TUQUERRES', 17, 1, N'838')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (777, N'YACUANQUER', 17, 1, N'885')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (778, N'CUCUTA', 18, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (779, N'ABREGO', 18, 1, N'003')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (780, N'ARBOLEDAS', 18, 1, N'051')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (781, N'BOCHALEMA', 18, 1, N'099')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (782, N'BUCARASICA', 18, 1, N'109')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (783, N'CACOTA', 18, 1, N'125')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (784, N'CACHIRA', 18, 1, N'128')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (785, N'CHINACOTA', 18, 1, N'172')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (786, N'CHITAGA', 18, 1, N'174')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (787, N'CONVENCION', 18, 1, N'206')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (788, N'CUCUTILLA', 18, 1, N'223')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (789, N'DURANIA', 18, 1, N'239')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (790, N'EL CARMEN', 18, 1, N'245')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (791, N'EL TARRA', 18, 1, N'250')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (792, N'EL ZULIA', 18, 1, N'261')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (793, N'GRAMALOTE', 18, 1, N'313')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (794, N'HACARI', 18, 1, N'344')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (795, N'HERRAN', 18, 1, N'347')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (796, N'LABATECA', 18, 1, N'377')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (797, N'LA ESPERANZA', 18, 1, N'385')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (798, N'LA PLAYA', 18, 1, N'398')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (799, N'LOS PATIOS', 18, 1, N'405')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (800, N'LOURDES', 18, 1, N'418')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (801, N'MUTISCUA', 18, 1, N'480')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (802, N'OCAÑA', 18, 1, N'498')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (803, N'PAMPLONA', 18, 1, N'518')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (804, N'PAMPLONITA', 18, 1, N'520')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (805, N'PUERTO SANTANDER', 18, 1, N'553')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (806, N'RAGONVALIA', 18, 1, N'599')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (807, N'SALAZAR', 18, 1, N'660')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (808, N'SAN CALIXTO', 18, 1, N'670')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (809, N'SAN CAYETANO', 18, 1, N'673')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (810, N'SANTIAGO', 18, 1, N'680')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (811, N'SARDINATA', 18, 1, N'720')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (812, N'SILOS', 18, 1, N'743')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (813, N'TEORAMA', 18, 1, N'800')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (814, N'TIBU', 18, 1, N'810')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (815, N'TOLEDO', 18, 1, N'820')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (816, N'VILLA CARO', 18, 1, N'871')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (817, N'VILLA DEL ROSARIO', 18, 1, N'874')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (818, N'ARMENIA', 19, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (819, N'BUENAVISTA', 19, 1, N'111')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (820, N'CALARCA', 19, 1, N'130')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (821, N'CIRCASIA', 19, 1, N'190')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (822, N'CORDOBA', 19, 1, N'212')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (823, N'FILANDIA', 19, 1, N'272')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (824, N'GENOVA', 19, 1, N'302')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (825, N'LA TEBAIDA', 19, 1, N'401')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (826, N'MONTENEGRO', 19, 1, N'470')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (827, N'PIJAO', 19, 1, N'548')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (828, N'QUIMBAYA', 19, 1, N'594')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (829, N'SALENTO', 19, 1, N'690')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (830, N'PEREIRA', 20, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (831, N'APIA', 20, 1, N'045')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (832, N'BALBOA', 20, 1, N'075')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (833, N'BELEN DE UMBRIA', 20, 1, N'088')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (834, N'DOSQUEBRADAS', 20, 1, N'170')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (835, N'GUATICA', 20, 1, N'318')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (836, N'LA CELIA', 20, 1, N'383')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (837, N'LA VIRGINIA', 20, 1, N'400')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (838, N'MARSELLA', 20, 1, N'440')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (839, N'MISTRATO', 20, 1, N'456')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (840, N'PUEBLO RICO', 20, 1, N'572')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (841, N'QUINCHIA', 20, 1, N'594')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (842, N'SANTA ROSA DE CABAL', 20, 1, N'682')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (843, N'SANTUARIO', 20, 1, N'687')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (844, N'BUCARAMANGA', 21, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (845, N'AGUADA', 21, 1, N'013')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (846, N'ALBANIA', 21, 1, N'020')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (847, N'ARATOCA', 21, 1, N'051')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (848, N'BARBOSA', 21, 1, N'077')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (849, N'BARICHARA', 21, 1, N'079')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (850, N'BARRANCABERMEJA', 21, 1, N'081')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (851, N'BETULIA', 21, 1, N'092')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (852, N'BOLIVAR', 21, 1, N'101')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (853, N'CABRERA', 21, 1, N'121')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (854, N'CALIFORNIA', 21, 1, N'132')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (855, N'CAPITANEJO', 21, 1, N'147')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (856, N'CARCASI', 21, 1, N'152')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (857, N'CEPITA', 21, 1, N'160')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (858, N'CERRITO', 21, 1, N'162')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (859, N'CHARALA', 21, 1, N'167')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (860, N'CHARTA', 21, 1, N'169')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (861, N'CHIMA', 21, 1, N'176')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (862, N'CHIPATA', 21, 1, N'179')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (863, N'CIMITARRA', 21, 1, N'190')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (864, N'CONCEPCION', 21, 1, N'207')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (865, N'CONFINES', 21, 1, N'209')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (866, N'CONTRATACION', 21, 1, N'211')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (867, N'COROMORO', 21, 1, N'217')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (868, N'CURITI', 21, 1, N'229')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (869, N'EL CARMEN DE CHUCURI', 21, 1, N'235')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (870, N'EL GUACAMAYO', 21, 1, N'245')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (871, N'EL PEÑON', 21, 1, N'250')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (872, N'EL PLAYON', 21, 1, N'255')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (873, N'ENCINO', 21, 1, N'264')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (874, N'ENCISO', 21, 1, N'266')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (875, N'FLORIAN', 21, 1, N'271')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (876, N'FLORIDABLANCA', 21, 1, N'276')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (877, N'GALAN', 21, 1, N'296')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (878, N'GAMBITA', 21, 1, N'298')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (879, N'GIRON', 21, 1, N'307')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (880, N'GUACA', 21, 1, N'318')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (881, N'GUADALUPE', 21, 1, N'320')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (882, N'GUAPOTA', 21, 1, N'322')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (883, N'GUAVATA', 21, 1, N'324')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (884, N'GsEPSA', 21, 1, N'327')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (885, N'HATO', 21, 1, N'344')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (886, N'JESUS MARIA', 21, 1, N'368')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (887, N'JORDAN', 21, 1, N'370')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (888, N'LA BELLEZA', 21, 1, N'377')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (889, N'LANDAZURI', 21, 1, N'385')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (890, N'LA PAZ', 21, 1, N'397')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (891, N'LEBRIJA', 21, 1, N'406')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (892, N'LOS SANTOS', 21, 1, N'418')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (893, N'MACARAVITA', 21, 1, N'425')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (894, N'MALAGA', 21, 1, N'432')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (895, N'MATANZA', 21, 1, N'444')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (896, N'MOGOTES', 21, 1, N'464')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (897, N'MOLAGAVITA', 21, 1, N'468')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (898, N'OCAMONTE', 21, 1, N'498')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (899, N'OIBA', 21, 1, N'500')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (900, N'ONZAGA', 21, 1, N'502')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (901, N'PALMAR', 21, 1, N'522')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (902, N'PALMAS DEL SOCORRO', 21, 1, N'524')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (903, N'PARAMO', 21, 1, N'533')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (904, N'PIEDECUESTA', 21, 1, N'547')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (905, N'PINCHOTE', 21, 1, N'549')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (906, N'PUENTE NACIONAL', 21, 1, N'572')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (907, N'PUERTO PARRA', 21, 1, N'573')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (908, N'PUERTO WILCHES', 21, 1, N'575')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (909, N'RIONEGRO', 21, 1, N'615')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (910, N'SABANA DE TORRES', 21, 1, N'655')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (911, N'SAN ANDRES', 21, 1, N'669')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (912, N'SAN BENITO', 21, 1, N'673')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (913, N'SAN GIL', 21, 1, N'679')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (914, N'SAN JOAQUIN', 21, 1, N'682')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (915, N'SAN JOSE DE MIRANDA', 21, 1, N'684')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (916, N'SAN MIGUEL', 21, 1, N'686')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (917, N'SAN VICENTE DE CHUCURI', 21, 1, N'689')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (918, N'SANTA BARBARA', 21, 1, N'705')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (919, N'SANTA HELENA DEL OPON', 21, 1, N'720')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (920, N'SIMACOTA', 21, 1, N'745')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (921, N'SOCORRO', 21, 1, N'755')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (922, N'SUAITA', 21, 1, N'770')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (923, N'SUCRE', 21, 1, N'773')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (924, N'SURATA', 21, 1, N'780')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (925, N'TONA', 21, 1, N'820')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (926, N'VALLE DE SAN JOSE', 21, 1, N'855')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (927, N'VELEZ', 21, 1, N'861')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (928, N'VETAS', 21, 1, N'867')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (929, N'VILLANUEVA', 21, 1, N'872')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (930, N'ZAPATOCA', 21, 1, N'895')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (931, N'SINCELEJO', 22, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (932, N'BUENAVISTA', 22, 1, N'110')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (933, N'CAIMITO', 22, 1, N'124')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (934, N'COLOSO', 22, 1, N'204')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (935, N'COROZAL', 22, 1, N'215')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (936, N'COVEÑAS', 22, 1, N'221')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (937, N'CHALAN', 22, 1, N'230')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (938, N'EL ROBLE', 22, 1, N'233')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (939, N'GALERAS', 22, 1, N'235')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (940, N'GUARANDA', 22, 1, N'265')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (941, N'LA UNION', 22, 1, N'400')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (942, N'LOS PALMITOS', 22, 1, N'418')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (943, N'MAJAGUAL', 22, 1, N'429')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (944, N'MORROA', 22, 1, N'473')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (945, N'OVEJAS', 22, 1, N'508')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (946, N'PALMITO', 22, 1, N'523')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (947, N'SAMPUES', 22, 1, N'670')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (948, N'SAN BENITO ABAD', 22, 1, N'678')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (949, N'SAN JUAN DE BETULIA', 22, 1, N'702')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (950, N'SAN MARCOS', 22, 1, N'708')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (951, N'SAN ONOFRE', 22, 1, N'713')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (952, N'SAN PEDRO', 22, 1, N'717')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (953, N'SAN LUIS DE SINCE', 22, 1, N'742')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (954, N'SUCRE', 22, 1, N'771')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (955, N'SANTIAGO DE TOLU', 22, 1, N'820')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (956, N'TOLU VIEJO', 22, 1, N'823')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (957, N'IBAGUE', 23, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (958, N'ALPUJARRA', 23, 1, N'024')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (959, N'ALVARADO', 23, 1, N'026')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (960, N'AMBALEMA', 23, 1, N'030')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (961, N'ANZOATEGUI', 23, 1, N'043')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (962, N'ARMERO', 23, 1, N'055')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (963, N'ATACO', 23, 1, N'067')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (964, N'CAJAMARCA', 23, 1, N'124')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (965, N'CARMEN DE APICALA', 23, 1, N'148')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (966, N'CASABIANCA', 23, 1, N'152')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (967, N'CHAPARRAL', 23, 1, N'168')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (968, N'COELLO', 23, 1, N'200')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (969, N'COYAIMA', 23, 1, N'217')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (970, N'CUNDAY', 23, 1, N'226')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (971, N'DOLORES', 23, 1, N'236')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (972, N'ESPINAL', 23, 1, N'268')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (973, N'FALAN', 23, 1, N'270')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (974, N'FLANDES', 23, 1, N'275')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (975, N'FRESNO', 23, 1, N'283')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (976, N'GUAMO', 23, 1, N'319')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (977, N'HERVEO', 23, 1, N'347')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (978, N'HONDA', 23, 1, N'349')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (979, N'ICONONZO', 23, 1, N'352')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (980, N'LERIDA', 23, 1, N'408')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (981, N'LIBANO', 23, 1, N'411')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (982, N'MARIQUITA', 23, 1, N'443')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (983, N'MELGAR', 23, 1, N'449')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (984, N'MURILLO', 23, 1, N'461')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (985, N'NATAGAIMA', 23, 1, N'483')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (986, N'ORTEGA', 23, 1, N'504')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (987, N'PALOCABILDO', 23, 1, N'520')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (988, N'PIEDRAS', 23, 1, N'547')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (989, N'PLANADAS', 23, 1, N'555')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (990, N'PRADO', 23, 1, N'563')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (991, N'PURIFICACION', 23, 1, N'585')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (992, N'RIOBLANCO', 23, 1, N'616')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (993, N'RONCESVALLES', 23, 1, N'622')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (994, N'ROVIRA', 23, 1, N'624')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (995, N'SALDAÑA', 23, 1, N'671')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (996, N'SAN ANTONIO', 23, 1, N'675')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (997, N'SAN LUIS', 23, 1, N'678')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (998, N'SANTA ISABEL', 23, 1, N'686')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (999, N'SUAREZ', 23, 1, N'770')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1000, N'VALLE DE SAN JUAN', 23, 1, N'854')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1001, N'VENADILLO', 23, 1, N'861')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1002, N'VILLAHERMOSA', 23, 1, N'870')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1003, N'VILLARRICA', 23, 1, N'873')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1004, N'CALI', 24, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1005, N'ALCALA', 24, 1, N'020')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1006, N'ANDALUCIA', 24, 1, N'036')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1007, N'ANSERMANUEVO', 24, 1, N'041')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1008, N'ARGELIA', 24, 1, N'054')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1009, N'BOLIVAR', 24, 1, N'100')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1010, N'BUENAVENTURA', 24, 1, N'109')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1011, N'GUADALAJARA DE BUGA', 24, 1, N'111')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1012, N'BUGALAGRANDE', 24, 1, N'113')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1013, N'CAICEDONIA', 24, 1, N'122')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1014, N'CALIMA', 24, 1, N'126')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1015, N'CANDELARIA', 24, 1, N'130')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1016, N'CARTAGO', 24, 1, N'147')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1017, N'DAGUA', 24, 1, N'233')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1018, N'EL AGUILA', 24, 1, N'243')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1019, N'EL CAIRO', 24, 1, N'246')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1020, N'EL CERRITO', 24, 1, N'248')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1021, N'EL DOVIO', 24, 1, N'250')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1022, N'FLORIDA', 24, 1, N'275')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1023, N'GINEBRA', 24, 1, N'306')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1024, N'GUACARI', 24, 1, N'318')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1025, N'JAMUNDI', 24, 1, N'364')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1026, N'LA CUMBRE', 24, 1, N'377')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1027, N'LA UNION', 24, 1, N'400')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1028, N'LA VICTORIA', 24, 1, N'403')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1029, N'OBANDO', 24, 1, N'497')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1030, N'PALMIRA', 24, 1, N'520')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1031, N'PRADERA', 24, 1, N'563')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1032, N'RESTREPO', 24, 1, N'606')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1033, N'RIOFRIO', 24, 1, N'616')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1034, N'ROLDANILLO', 24, 1, N'622')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1035, N'SAN PEDRO', 24, 1, N'670')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1036, N'SEVILLA', 24, 1, N'736')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1037, N'TORO', 24, 1, N'823')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1038, N'TRUJILLO', 24, 1, N'828')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1039, N'TULUA', 24, 1, N'834')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1040, N'ULLOA', 24, 1, N'845')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1041, N'VERSALLES', 24, 1, N'863')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1042, N'VIJES', 24, 1, N'869')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1043, N'YOTOCO', 24, 1, N'890')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1044, N'YUMBO', 24, 1, N'892')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1045, N'ZARZAL', 24, 1, N'895')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1046, N'ARAUCA', 25, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1047, N'ARAUQUITA', 25, 1, N'065')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1048, N'CRAVO NORTE', 25, 1, N'220')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1049, N'FORTUL', 25, 1, N'300')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1050, N'PUERTO RONDON', 25, 1, N'591')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1051, N'SARAVENA', 25, 1, N'736')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1052, N'TAME', 25, 1, N'794')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1053, N'YOPAL', 26, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1054, N'AGUAZUL', 26, 1, N'010')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1055, N'CHAMEZA', 26, 1, N'015')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1056, N'HATO COROZAL', 26, 1, N'125')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1057, N'LA SALINA', 26, 1, N'136')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1058, N'MANI', 26, 1, N'139')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1059, N'MONTERREY', 26, 1, N'162')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1060, N'NUNCHIA', 26, 1, N'225')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1061, N'OROCUE', 26, 1, N'230')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1062, N'PAZ DE ARIPORO', 26, 1, N'250')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1063, N'PORE', 26, 1, N'263')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1064, N'RECETOR', 26, 1, N'279')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1065, N'SABANALARGA', 26, 1, N'300')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1066, N'SACAMA', 26, 1, N'315')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1067, N'SAN LUIS DE PALENQUE', 26, 1, N'325')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1068, N'TAMARA', 26, 1, N'400')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1069, N'TAURAMENA', 26, 1, N'410')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1070, N'TRINIDAD', 26, 1, N'430')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1071, N'VILLANUEVA', 26, 1, N'440')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1072, N'MOCOA', 27, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1073, N'COLON', 27, 1, N'219')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1074, N'ORITO', 27, 1, N'320')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1075, N'PUERTO ASIS', 27, 1, N'568')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1076, N'PUERTO CAICEDO', 27, 1, N'569')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1077, N'PUERTO GUZMAN', 27, 1, N'571')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1078, N'LEGUIZAMO', 27, 1, N'573')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1079, N'SIBUNDOY', 27, 1, N'749')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1080, N'SAN FRANCISCO', 27, 1, N'755')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1081, N'SAN MIGUEL', 27, 1, N'757')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1082, N'SANTIAGO', 27, 1, N'760')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1083, N'VALLE DEL GUAMUEZ', 27, 1, N'865')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1084, N'VILLAGARZON', 27, 1, N'885')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1085, N'SAN ANDRES', 28, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1086, N'PROVIDENCIA', 28, 1, N'564')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1087, N'LETICIA', 29, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1088, N'EL ENCANTO', 29, 1, N'263')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1089, N'LA CHORRERA', 29, 1, N'405')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1090, N'LA PEDRERA', 29, 1, N'407')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1091, N'LA VICTORIA', 29, 1, N'430')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1092, N'MIRITI - PARANA', 29, 1, N'460')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1093, N'PUERTO ALEGRIA', 29, 1, N'530')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1094, N'PUERTO ARICA', 29, 1, N'536')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1095, N'PUERTO NARIÑO', 29, 1, N'540')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1096, N'PUERTO SANTANDER', 29, 1, N'669')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1097, N'TARAPACA', 29, 1, N'798')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1098, N'INIRIDA', 30, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1099, N'BARRANCO MINAS', 30, 1, N'343')
GO
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1100, N'MAPIRIPANA', 30, 1, N'663')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1101, N'SAN FELIPE', 30, 1, N'883')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1102, N'PUERTO COLOMBIA', 30, 1, N'884')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1103, N'LA GUADALUPE', 30, 1, N'885')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1104, N'CACAHUAL', 30, 1, N'886')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1105, N'PANA PANA', 30, 1, N'887')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1106, N'MORICHAL', 30, 1, N'888')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1107, N'SAN JOSE DEL GUAVIARE', 31, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1108, N'CALAMAR', 31, 1, N'015')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1109, N'EL RETORNO', 31, 1, N'025')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1110, N'MIRAFLORES', 31, 1, N'200')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1111, N'MITU', 32, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1112, N'CARURU', 32, 1, N'161')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1113, N'PACOA', 32, 1, N'511')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1114, N'TARAIRA', 32, 1, N'666')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1115, N'PAPUNAUA', 32, 1, N'777')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1116, N'YAVARATE', 32, 1, N'889')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1117, N'PUERTO CARREÑO', 33, 1, N'001')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1118, N'LA PRIMAVERA', 33, 1, N'524')
INSERT [dbo].[Municipios] ([id], [nombre], [departamentoId], [usuarioId], [codigoDane]) VALUES (1119, N'SANTA ROSALIA', 33, 1, N'624')
SET IDENTITY_INSERT [dbo].[Municipios] OFF
SET IDENTITY_INSERT [dbo].[OpcionesMaestroAnexos] ON 

INSERT [dbo].[OpcionesMaestroAnexos] ([id], [nombreOpcion], [maestroAnexosId], [usuarioId]) VALUES (2, N'Foto', 2, 1)
INSERT [dbo].[OpcionesMaestroAnexos] ([id], [nombreOpcion], [maestroAnexosId], [usuarioId]) VALUES (5, N'Huella', 2, 1)
INSERT [dbo].[OpcionesMaestroAnexos] ([id], [nombreOpcion], [maestroAnexosId], [usuarioId]) VALUES (7, N'Firma', 2, 1)
SET IDENTITY_INSERT [dbo].[OpcionesMaestroAnexos] OFF
SET IDENTITY_INSERT [dbo].[Operaciones] ON 

INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId], [visualizaFormularioMenu]) VALUES (1, N'Nuevo', 1, 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId], [visualizaFormularioMenu]) VALUES (2, N'Editar', 1, 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId], [visualizaFormularioMenu]) VALUES (3, N'Activar', 1, 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId], [visualizaFormularioMenu]) VALUES (4, N'Inactivar', 1, 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId], [visualizaFormularioMenu]) VALUES (5, N'Eliminar', 1, 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId], [visualizaFormularioMenu]) VALUES (6, N'Ver', 1, 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId], [visualizaFormularioMenu]) VALUES (7, N'CambiarClave', 1, 0)
SET IDENTITY_INSERT [dbo].[Operaciones] OFF
SET IDENTITY_INSERT [dbo].[OperacionesFormulario] ON 

INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (5, 1, 1, N'Nuevo AplicacionesWeb', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (6, 1, 2, N'Editar AplicacionesWeb', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (7, 1, 5, N'Eliminar AplicacionesWeb', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (8, 1, 6, N'Ver AplicacionesWeb', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (9, 2, 1, N'Nuevo Barrios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (10, 2, 2, N'Editar Barrios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (11, 2, 5, N'Eliminar Barrios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (12, 2, 6, N'Ver Barrios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (13, 3, 1, N'Nuevo Departamentos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (14, 3, 2, N'Editar Departamentos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (15, 3, 5, N'Eliminar Departamentos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (16, 3, 6, N'Ver Departamentos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (17, 4, 1, N'Nuevo DocumentosIdentidad', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (18, 4, 2, N'Editar DocumentosIdentidad', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (19, 4, 5, N'Eliminar DocumentosIdentidad', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (20, 4, 6, N'Ver DocumentosIdentidad', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (21, 5, 1, N'Nuevo EstadosCivil', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (22, 5, 2, N'Editar EstadosCivil', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (23, 5, 5, N'Eliminar EstadosCivil', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (24, 5, 6, N'Ver EstadosCivil', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (27, 6, 1, N'Nuevo Formularios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (28, 6, 2, N'Editar Formularios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (29, 6, 3, N'Activar Formularios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (30, 6, 4, N'Inactivar Formularios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (31, 6, 6, N'Ver Formularios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (32, 7, 1, N'Nuevo GruposSanguineo', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (33, 7, 2, N'Editar GruposSanguineo', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (34, 7, 5, N'Eliminar GruposSanguineo', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (35, 7, 6, N'Ver GruposSanguineo', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (36, 8, 1, N'Nuevo Menus', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (37, 8, 2, N'Editar Menus', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (38, 8, 3, N'Activar Menus', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (39, 8, 4, N'Inactivar Menus', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (40, 8, 6, N'Ver Menus', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (41, 9, 1, N'Nuevo Municipios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (42, 9, 2, N'Editar Municipios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (43, 9, 5, N'Eliminar Municipios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (44, 9, 6, N'Ver Municipios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (45, 10, 1, N'Nuevo Operaciones', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (46, 10, 2, N'Editar Operaciones', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (47, 10, 5, N'Eliminar Operaciones', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (48, 10, 6, N'Ver Operaciones', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (49, 11, 1, N'Nuevo OperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (50, 11, 2, N'Editar OperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (51, 11, 5, N'Eliminar OperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (52, 11, 6, N'Ver OperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (53, 12, 1, N'Nuevo Perfiles', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (54, 12, 2, N'Editar Perfiles', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (55, 12, 6, N'Ver Perfiles', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (56, 12, 3, N'Activar Perfiles', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (57, 12, 4, N'Inactivar Perfiles', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (58, 13, 1, N'Nuevo PerfilesOperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (59, 13, 2, N'Editar PerfilesOperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (60, 13, 5, N'Eliminar PerfilesOperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (61, 13, 6, N'Ver PerfilesOperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (62, 14, 1, N'Nuevo Personas', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (63, 14, 2, N'Editar Personas', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (64, 14, 5, N'Eliminar Personas', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (65, 14, 6, N'Ver Personas', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (75, 16, 1, N'Nuevo Usuarios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (76, 16, 2, N'Editar Usuarios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (77, 16, 6, N'Ver Usuarios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (78, 16, 3, N'Activar Usuarios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (79, 16, 4, N'Inactivar Usuarios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (80, 16, 7, N'CambiarClave Usuarios', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (81, 17, 1, N'Nuevo UsuariosOperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (82, 17, 2, N'Editar UsuariosOperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (83, 17, 3, N'Activar UsuariosOperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (84, 17, 5, N'Eliminar UsuariosOperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (85, 17, 6, N'Ver UsuariosOperacionesFormulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (86, 15, 1, N'Nuevo Sexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (87, 15, 2, N'Editar Sexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (88, 15, 6, N'Ver Sexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (89, 15, 5, N'Eliminar Sexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (94, 18, 1, N'Nuevo MaestroAnexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (95, 18, 2, N'Editar MaestroAnexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (96, 18, 5, N'Eliminar MaestroAnexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (97, 18, 6, N'Ver MaestroAnexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (98, 19, 1, N'Nuevo OpcionesMaestroAnexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (99, 19, 2, N'Editar OpcionesMaestroAnexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (100, 19, 5, N'Eliminar OpcionesMaestroAnexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (101, 19, 6, N'Ver OpcionesMaestroAnexos', 1)
SET IDENTITY_INSERT [dbo].[OperacionesFormulario] OFF
SET IDENTITY_INSERT [dbo].[Perfiles] ON 

INSERT [dbo].[Perfiles] ([id], [nombrePerfil], [descripcion], [estado], [usuarioId]) VALUES (1, N'PerfilInvitado', N'Perfil Para Cuando los usuarios externos se registren a la Aplicacion', N'Activo', 1)
INSERT [dbo].[Perfiles] ([id], [nombrePerfil], [descripcion], [estado], [usuarioId]) VALUES (2, N'SuperAdminMolde', N'Usuario Con todas las operaciones ultima actualizacion 2018/01/22', N'Activo', 1)
SET IDENTITY_INSERT [dbo].[Perfiles] OFF
SET IDENTITY_INSERT [dbo].[PerfilesOperacionesFormulario] ON 

INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (77, 5, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (78, 6, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (79, 7, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (80, 8, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (81, 9, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (82, 10, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (83, 11, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (84, 12, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (85, 13, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (86, 14, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (87, 15, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (88, 16, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (89, 17, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (90, 18, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (91, 19, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (92, 20, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (93, 21, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (94, 22, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (95, 23, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (96, 24, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (97, 27, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (98, 28, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (99, 29, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (100, 30, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (101, 31, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (102, 32, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (103, 33, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (104, 34, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (105, 35, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (106, 36, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (107, 37, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (108, 38, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (109, 39, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (110, 40, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (111, 41, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (112, 42, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (113, 43, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (114, 44, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (115, 45, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (116, 46, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (117, 47, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (118, 48, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (119, 49, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (120, 50, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (121, 51, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (122, 52, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (123, 53, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (124, 54, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (125, 55, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (126, 56, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (127, 57, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (128, 58, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (129, 59, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (130, 60, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (131, 61, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (132, 62, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (133, 63, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (134, 64, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (135, 65, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (140, 75, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (141, 76, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (142, 77, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (143, 78, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (144, 79, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (145, 80, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (146, 81, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (147, 82, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (148, 83, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (149, 84, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (150, 85, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (154, 63, 1, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (155, 65, 1, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (156, 62, 1, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (157, 80, 1, 1)
SET IDENTITY_INSERT [dbo].[PerfilesOperacionesFormulario] OFF
SET IDENTITY_INSERT [dbo].[Personas] ON 

INSERT [dbo].[Personas] ([id], [numeroDocumento], [documentoIdentidadId], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [fechaNacimiento], [municipioId], [grupoSanguineoId], [sexoId], [fechaExpedicionCedula], [municipioExpedicionId], [barrioId], [direcccion], [estatura], [peso], [correo], [estadoCivilId], [telefonoFijo], [telefonoCelular], [usuarioId]) VALUES (1, N'1143325945', 3, N'Anibal', N'Guillermo', N'Martinez', N'Aguas', CAST(N'1987-12-09' AS Date), 150, 5, 1, CAST(N'2000-11-11' AS Date), 150, 1, N'amartinez@coosalud.com', CAST(1.00 AS Numeric(18, 2)), CAST(72.00 AS Numeric(18, 2)), N'amartinez@coosalud.com', 1, 3012204605, 3012204605, 2)
SET IDENTITY_INSERT [dbo].[Personas] OFF
SET IDENTITY_INSERT [dbo].[Sexos] ON 

INSERT [dbo].[Sexos] ([id], [sigla], [descripcion], [usuarioId]) VALUES (1, N'M', N'Masculino', 1)
INSERT [dbo].[Sexos] ([id], [sigla], [descripcion], [usuarioId]) VALUES (2, N'F', N'Femenino', 1)
SET IDENTITY_INSERT [dbo].[Sexos] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [clave], [idPersona], [estado], [usuarioId], [perfilId]) VALUES (1, N'MoldeAdmin', N'YQBzAGQAZgA=', NULL, N'Activo', 1, 2)
INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [clave], [idPersona], [estado], [usuarioId], [perfilId]) VALUES (2, N'amartinez@coosalud.com', N'YQBzAGQAZgA=', 1, N'Activo', 1, 1)
INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [clave], [idPersona], [estado], [usuarioId], [perfilId]) VALUES (3, N'danirosales152@gmail.com', N'cQB3AGUAcgA=', NULL, N'Activo', 1, 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
SET IDENTITY_INSERT [dbo].[UsuariosOperacionesFormulario] ON 

INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (166, 3, 62, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (167, 3, 63, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (168, 3, 65, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (169, 3, 80, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (326, 2, 63, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (327, 2, 65, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (328, 2, 62, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (329, 2, 5, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (330, 2, 6, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (331, 2, 7, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (332, 2, 8, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (333, 2, 9, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (334, 2, 10, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (335, 2, 11, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (336, 2, 12, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (337, 2, 13, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (338, 2, 14, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (339, 2, 15, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (340, 2, 16, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (341, 2, 17, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (342, 2, 18, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (343, 2, 19, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (344, 2, 20, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (345, 2, 21, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (346, 2, 22, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (347, 2, 23, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (348, 2, 24, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (349, 2, 27, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (350, 2, 28, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (351, 2, 29, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (352, 2, 30, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (353, 2, 31, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (354, 2, 32, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (355, 2, 33, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (356, 2, 34, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (357, 2, 35, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (358, 2, 36, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (359, 2, 37, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (360, 2, 38, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (361, 2, 39, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (362, 2, 40, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (363, 2, 41, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (364, 2, 42, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (365, 2, 43, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (366, 2, 44, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (367, 2, 45, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (368, 2, 46, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (369, 2, 47, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (370, 2, 48, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (371, 2, 49, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (372, 2, 50, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (373, 2, 51, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (374, 2, 52, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (375, 2, 53, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (376, 2, 54, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (377, 2, 55, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (378, 2, 56, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (379, 2, 57, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (380, 2, 58, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (381, 2, 59, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (382, 2, 60, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (383, 2, 61, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (384, 2, 64, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (385, 2, 75, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (386, 2, 76, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (387, 2, 77, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (388, 2, 78, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (389, 2, 79, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (390, 2, 80, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (391, 2, 81, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (392, 2, 82, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (393, 2, 83, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (394, 2, 84, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (395, 2, 85, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (396, 2, 86, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (397, 2, 87, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (398, 2, 88, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (399, 2, 89, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (400, 2, 94, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (401, 2, 95, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (402, 2, 96, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (403, 2, 97, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (404, 2, 98, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (405, 2, 99, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (406, 2, 100, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (407, 2, 101, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (408, 1, 49, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (409, 1, 51, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (410, 1, 77, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (411, 1, 5, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (412, 1, 6, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (413, 1, 7, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (414, 1, 8, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (415, 1, 9, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (416, 1, 10, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (417, 1, 11, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (418, 1, 12, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (419, 1, 13, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (420, 1, 14, 2)
GO
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (421, 1, 15, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (422, 1, 16, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (423, 1, 17, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (424, 1, 18, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (425, 1, 19, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (426, 1, 20, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (427, 1, 21, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (428, 1, 22, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (429, 1, 23, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (430, 1, 24, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (431, 1, 27, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (432, 1, 28, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (433, 1, 29, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (434, 1, 30, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (435, 1, 31, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (436, 1, 32, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (437, 1, 33, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (438, 1, 34, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (439, 1, 35, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (440, 1, 36, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (441, 1, 37, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (442, 1, 38, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (443, 1, 39, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (444, 1, 40, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (445, 1, 41, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (446, 1, 42, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (447, 1, 43, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (448, 1, 44, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (449, 1, 45, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (450, 1, 46, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (451, 1, 47, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (452, 1, 48, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (453, 1, 50, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (454, 1, 52, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (455, 1, 53, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (456, 1, 54, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (457, 1, 55, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (458, 1, 56, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (459, 1, 57, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (460, 1, 58, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (461, 1, 59, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (462, 1, 60, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (463, 1, 61, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (464, 1, 62, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (465, 1, 63, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (466, 1, 64, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (467, 1, 65, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (468, 1, 75, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (469, 1, 76, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (470, 1, 78, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (471, 1, 79, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (472, 1, 80, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (473, 1, 81, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (474, 1, 82, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (475, 1, 83, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (476, 1, 84, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (477, 1, 85, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (478, 1, 86, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (479, 1, 87, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (480, 1, 88, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (481, 1, 89, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (482, 1, 94, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (483, 1, 95, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (484, 1, 96, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (485, 1, 97, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (486, 1, 98, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (487, 1, 99, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (488, 1, 100, 2)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (489, 1, 101, 2)
SET IDENTITY_INSERT [dbo].[UsuariosOperacionesFormulario] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_AplicacionesWeb_Nombre]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[AplicacionesWeb] ADD  CONSTRAINT [U_dbo_AplicacionesWeb_Nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_Barrios_Municipios_NombreMunicipioId]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[Barrios] ADD  CONSTRAINT [U_Barrios_Municipios_NombreMunicipioId] UNIQUE NONCLUSTERED 
(
	[nombre] ASC,
	[municipioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Departamento_CodigoDane]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[Departamentos] ADD  CONSTRAINT [U_dbo_Departamento_CodigoDane] UNIQUE NONCLUSTERED 
(
	[codigoDane] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Departamento_Nombre]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[Departamentos] ADD  CONSTRAINT [U_dbo_Departamento_Nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_DocumentosIdentidad_Sigla]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[DocumentosIdentidad] ADD  CONSTRAINT [U_dbo_DocumentosIdentidad_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_EstadosCivil_Sigla]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[EstadosCivil] ADD  CONSTRAINT [U_dbo_EstadosCivil_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_GruposSanguineo_Sigla]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[GruposSanguineo] ADD  CONSTRAINT [U_dbo_GruposSanguineo_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Menus_NombreMenuAplicacionWeb]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [U_dbo_Menus_NombreMenuAplicacionWeb] UNIQUE NONCLUSTERED 
(
	[nombreMenu] ASC,
	[aplicacionWebId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Municipios_CodigoDane]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[Municipios] ADD  CONSTRAINT [U_dbo_Municipios_CodigoDane] UNIQUE NONCLUSTERED 
(
	[codigoDane] ASC,
	[departamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Operaciones_NombreOperacion]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[Operaciones] ADD  CONSTRAINT [U_dbo_Operaciones_NombreOperacion] UNIQUE NONCLUSTERED 
(
	[nombreOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [U_dbo_OperacionesFormulario_FormularioIdOperacionId]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[OperacionesFormulario] ADD  CONSTRAINT [U_dbo_OperacionesFormulario_FormularioIdOperacionId] UNIQUE NONCLUSTERED 
(
	[formularioId] ASC,
	[operacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Perfiles_NombrePerfil]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[Perfiles] ADD  CONSTRAINT [U_dbo_Perfiles_NombrePerfil] UNIQUE NONCLUSTERED 
(
	[nombrePerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [U_dbo_PerfilesOperacionesFormulario_OperacionFormularioIdPerfilId]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[PerfilesOperacionesFormulario] ADD  CONSTRAINT [U_dbo_PerfilesOperacionesFormulario_OperacionFormularioIdPerfilId] UNIQUE NONCLUSTERED 
(
	[operacionFormularioId] ASC,
	[perfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Personas_NumeroDocumento]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[Personas] ADD  CONSTRAINT [U_dbo_Personas_NumeroDocumento] UNIQUE NONCLUSTERED 
(
	[numeroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_sexos_Sigla]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[Sexos] ADD  CONSTRAINT [U_dbo_sexos_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Usuarios_NombreUsuario]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [U_dbo_Usuarios_NombreUsuario] UNIQUE NONCLUSTERED 
(
	[nombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [U_dbo_UsuariosOperacionesFormulario_UsuarioIdOperacionFormulario]    Script Date: 23/01/2018 21:39:24 ******/
ALTER TABLE [dbo].[UsuariosOperacionesFormulario] ADD  CONSTRAINT [U_dbo_UsuariosOperacionesFormulario_UsuarioIdOperacionFormulario] UNIQUE NONCLUSTERED 
(
	[usuarioId] ASC,
	[operacionFormularioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departamentos] ADD  CONSTRAINT [DF_Departamentos_codigoDane]  DEFAULT ('') FOR [codigoDane]
GO
ALTER TABLE [dbo].[DocumentosIdentidad] ADD  CONSTRAINT [DF_DocumentosIdentidad_descripcion]  DEFAULT ('') FOR [descripcion]
GO
ALTER TABLE [dbo].[Formularios] ADD  CONSTRAINT [DF_Formularios_esVisible]  DEFAULT ((0)) FOR [esVisible]
GO
ALTER TABLE [dbo].[Municipios] ADD  CONSTRAINT [DF_Municipios_codigoDane]  DEFAULT ('') FOR [codigoDane]
GO
ALTER TABLE [dbo].[Operaciones] ADD  CONSTRAINT [DF_Operaciones_visualizaFormularioMenu]  DEFAULT ((1)) FOR [visualizaFormularioMenu]
GO
ALTER TABLE [dbo].[Personas] ADD  CONSTRAINT [DF_Personas_telefonoFijo]  DEFAULT ((0)) FOR [telefonoFijo]
GO
ALTER TABLE [dbo].[Personas] ADD  CONSTRAINT [DF_Personas_telefonoCelular]  DEFAULT ((0)) FOR [telefonoCelular]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_estado]  DEFAULT ('Pendiente') FOR [estado]
GO
ALTER TABLE [dbo].[Anexos]  WITH CHECK ADD  CONSTRAINT [FK_Anexos_OpcionesMaestroAnexos] FOREIGN KEY([opcionMaestroAnexoId])
REFERENCES [dbo].[OpcionesMaestroAnexos] ([id])
GO
ALTER TABLE [dbo].[Anexos] CHECK CONSTRAINT [FK_Anexos_OpcionesMaestroAnexos]
GO
ALTER TABLE [dbo].[Barrios]  WITH CHECK ADD  CONSTRAINT [FK_Barrios_Municipios] FOREIGN KEY([municipioId])
REFERENCES [dbo].[Municipios] ([id])
GO
ALTER TABLE [dbo].[Barrios] CHECK CONSTRAINT [FK_Barrios_Municipios]
GO
ALTER TABLE [dbo].[Formularios]  WITH CHECK ADD  CONSTRAINT [FK_Formularios_Menus] FOREIGN KEY([menuId])
REFERENCES [dbo].[Menus] ([id])
GO
ALTER TABLE [dbo].[Formularios] CHECK CONSTRAINT [FK_Formularios_Menus]
GO
ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_AplicacionesWeb] FOREIGN KEY([aplicacionWebId])
REFERENCES [dbo].[AplicacionesWeb] ([id])
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_AplicacionesWeb]
GO
ALTER TABLE [dbo].[Municipios]  WITH CHECK ADD  CONSTRAINT [FK_Municipios_Departamentos2] FOREIGN KEY([departamentoId])
REFERENCES [dbo].[Departamentos] ([id])
GO
ALTER TABLE [dbo].[Municipios] CHECK CONSTRAINT [FK_Municipios_Departamentos2]
GO
ALTER TABLE [dbo].[OpcionesMaestroAnexos]  WITH CHECK ADD  CONSTRAINT [FK_OpcionesMaestroAnexos_MaestroAnexos] FOREIGN KEY([maestroAnexosId])
REFERENCES [dbo].[MaestroAnexos] ([id])
GO
ALTER TABLE [dbo].[OpcionesMaestroAnexos] CHECK CONSTRAINT [FK_OpcionesMaestroAnexos_MaestroAnexos]
GO
ALTER TABLE [dbo].[OperacionesFormulario]  WITH CHECK ADD  CONSTRAINT [FK_OperacionesFormulario_Formularios] FOREIGN KEY([formularioId])
REFERENCES [dbo].[Formularios] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OperacionesFormulario] CHECK CONSTRAINT [FK_OperacionesFormulario_Formularios]
GO
ALTER TABLE [dbo].[OperacionesFormulario]  WITH CHECK ADD  CONSTRAINT [FK_OperacionesFormulario_Operaciones] FOREIGN KEY([operacionId])
REFERENCES [dbo].[Operaciones] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OperacionesFormulario] CHECK CONSTRAINT [FK_OperacionesFormulario_Operaciones]
GO
ALTER TABLE [dbo].[PerfilesOperacionesFormulario]  WITH CHECK ADD  CONSTRAINT [FK_PerfilesOperacionesFormulario_OperacionesFormulario] FOREIGN KEY([operacionFormularioId])
REFERENCES [dbo].[OperacionesFormulario] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PerfilesOperacionesFormulario] CHECK CONSTRAINT [FK_PerfilesOperacionesFormulario_OperacionesFormulario]
GO
ALTER TABLE [dbo].[PerfilesOperacionesFormulario]  WITH CHECK ADD  CONSTRAINT [FK_PerfilesOperacionesFormulario_Perfiles] FOREIGN KEY([perfilId])
REFERENCES [dbo].[Perfiles] ([id])
GO
ALTER TABLE [dbo].[PerfilesOperacionesFormulario] CHECK CONSTRAINT [FK_PerfilesOperacionesFormulario_Perfiles]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_dbo_Personas_Sexo] FOREIGN KEY([sexoId])
REFERENCES [dbo].[Sexos] ([id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_dbo_Personas_Sexo]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_Barrios1] FOREIGN KEY([barrioId])
REFERENCES [dbo].[Barrios] ([id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_Barrios1]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_DocumentosIdentidad] FOREIGN KEY([documentoIdentidadId])
REFERENCES [dbo].[DocumentosIdentidad] ([id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_DocumentosIdentidad]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_EstadosCivil1] FOREIGN KEY([estadoCivilId])
REFERENCES [dbo].[EstadosCivil] ([id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_EstadosCivil1]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_GruposSanguineo1] FOREIGN KEY([grupoSanguineoId])
REFERENCES [dbo].[GruposSanguineo] ([id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_GruposSanguineo1]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_Municipios2] FOREIGN KEY([municipioId])
REFERENCES [dbo].[Municipios] ([id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_Municipios2]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_Municipios3] FOREIGN KEY([municipioExpedicionId])
REFERENCES [dbo].[Municipios] ([id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_Municipios3]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Perfiles] FOREIGN KEY([perfilId])
REFERENCES [dbo].[Perfiles] ([id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Perfiles]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Personas] FOREIGN KEY([idPersona])
REFERENCES [dbo].[Personas] ([id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Personas]
GO
ALTER TABLE [dbo].[UsuariosOperacionesFormulario]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosOperacionesFormulario_OperacionesFormulario] FOREIGN KEY([operacionFormularioId])
REFERENCES [dbo].[OperacionesFormulario] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsuariosOperacionesFormulario] CHECK CONSTRAINT [FK_UsuariosOperacionesFormulario_OperacionesFormulario]
GO
ALTER TABLE [dbo].[UsuariosOperacionesFormulario]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosOperacionesFormulario_Usuarios] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[Usuarios] ([id])
GO
ALTER TABLE [dbo].[UsuariosOperacionesFormulario] CHECK CONSTRAINT [FK_UsuariosOperacionesFormulario_Usuarios]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_AplicacionesWeb]    Script Date: 23/01/2018 21:39:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_AplicacionesWeb]
ON [dbo].[AplicacionesWeb] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.AplicacionesWeb
        (
        id,usuarioId,nombre,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombre,descripcion,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[AplicacionesWeb] ENABLE TRIGGER [TR_DELETE_AplicacionesWeb]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_AplicacionesWeb]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_AplicacionesWeb]
ON [dbo].[AplicacionesWeb] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.AplicacionesWeb
        (
        id,usuarioId,nombre,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombre,descripcion,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[AplicacionesWeb] ENABLE TRIGGER [TR_INSERT_AplicacionesWeb]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_AplicacionesWeb]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_AplicacionesWeb]
ON [dbo].[AplicacionesWeb] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.AplicacionesWeb
        (
        id,usuarioId,nombre,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombre,descripcion,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[AplicacionesWeb] ENABLE TRIGGER [TR_UPDATE_AplicacionesWeb]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_Barrios]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_Barrios]
ON [dbo].[Barrios] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.Barrios
        (
        id,municipioId,usuarioId,nombre,userNameBd,fechaHora,operacion
        )
        select
                id,municipioId,usuarioId,nombre,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Barrios] ENABLE TRIGGER [TR_DELETE_Barrios]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Barrios]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_Barrios]
ON [dbo].[Barrios] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Barrios
        (
        id,municipioId,usuarioId,nombre,userNameBd,fechaHora,operacion
        )
        select
                id,municipioId,usuarioId,nombre,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Barrios] ENABLE TRIGGER [TR_INSERT_Barrios]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Barrios]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_Barrios]
ON [dbo].[Barrios] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Barrios
        (
        id,municipioId,usuarioId,nombre,userNameBd,fechaHora,operacion
        )
        select
                id,municipioId,usuarioId,nombre,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Barrios] ENABLE TRIGGER [TR_UPDATE_Barrios]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_Departamentos]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_Departamentos]
ON [dbo].[Departamentos] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.Departamentos
        (
        id,usuarioId,nombre,codigoDane,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombre,codigoDane,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Departamentos] ENABLE TRIGGER [TR_DELETE_Departamentos]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Departamentos]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_Departamentos]
ON [dbo].[Departamentos] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Departamentos
        (
        id,usuarioId,nombre,codigoDane,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombre,codigoDane,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Departamentos] ENABLE TRIGGER [TR_INSERT_Departamentos]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Departamentos]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_Departamentos]
ON [dbo].[Departamentos] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Departamentos
        (
        id,usuarioId,nombre,codigoDane,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombre,codigoDane,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Departamentos] ENABLE TRIGGER [TR_UPDATE_Departamentos]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_DocumentosIdentidad]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_DocumentosIdentidad]
ON [dbo].[DocumentosIdentidad] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.DocumentosIdentidad
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[DocumentosIdentidad] ENABLE TRIGGER [TR_DELETE_DocumentosIdentidad]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_DocumentosIdentidad]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_DocumentosIdentidad]
ON [dbo].[DocumentosIdentidad] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.DocumentosIdentidad
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[DocumentosIdentidad] ENABLE TRIGGER [TR_INSERT_DocumentosIdentidad]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_DocumentosIdentidad]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_DocumentosIdentidad]
ON [dbo].[DocumentosIdentidad] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.DocumentosIdentidad
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[DocumentosIdentidad] ENABLE TRIGGER [TR_UPDATE_DocumentosIdentidad]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_EstadosCivil]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_EstadosCivil]
ON [dbo].[EstadosCivil] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.EstadosCivil
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[EstadosCivil] ENABLE TRIGGER [TR_DELETE_EstadosCivil]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_EstadosCivil]    Script Date: 23/01/2018 21:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_EstadosCivil]
ON [dbo].[EstadosCivil] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.EstadosCivil
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[EstadosCivil] ENABLE TRIGGER [TR_INSERT_EstadosCivil]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_EstadosCivil]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_EstadosCivil]
ON [dbo].[EstadosCivil] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.EstadosCivil
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[EstadosCivil] ENABLE TRIGGER [TR_UPDATE_EstadosCivil]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_Formularios]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_Formularios]
ON [dbo].[Formularios] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.Formularios
        (
        id,menuId,usuarioId,indexVisibilidad,esVisible,nombreFormulario,urlFormulario,nombreMostrar,estados,iconOpcion,userNameBd,fechaHora,operacion
        )
        select
                id,menuId,usuarioId,indexVisibilidad,esVisible,nombreFormulario,urlFormulario,nombreMostrar,estados,iconOpcion,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Formularios] ENABLE TRIGGER [TR_DELETE_Formularios]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Formularios]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_Formularios]
ON [dbo].[Formularios] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Formularios
        (
        id,menuId,usuarioId,indexVisibilidad,esVisible,nombreFormulario,urlFormulario,nombreMostrar,estados,iconOpcion,userNameBd,fechaHora,operacion
        )
        select
                id,menuId,usuarioId,indexVisibilidad,esVisible,nombreFormulario,urlFormulario,nombreMostrar,estados,iconOpcion,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Formularios] ENABLE TRIGGER [TR_INSERT_Formularios]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Formularios]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_Formularios]
ON [dbo].[Formularios] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Formularios
        (
        id,menuId,usuarioId,indexVisibilidad,esVisible,nombreFormulario,urlFormulario,nombreMostrar,estados,iconOpcion,userNameBd,fechaHora,operacion
        )
        select
                id,menuId,usuarioId,indexVisibilidad,esVisible,nombreFormulario,urlFormulario,nombreMostrar,estados,iconOpcion,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Formularios] ENABLE TRIGGER [TR_UPDATE_Formularios]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_GruposSanguineo]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_GruposSanguineo]
ON [dbo].[GruposSanguineo] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.GruposSanguineo
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[GruposSanguineo] ENABLE TRIGGER [TR_DELETE_GruposSanguineo]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_GruposSanguineo]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_GruposSanguineo]
ON [dbo].[GruposSanguineo] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.GruposSanguineo
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[GruposSanguineo] ENABLE TRIGGER [TR_INSERT_GruposSanguineo]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_GruposSanguineo]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_GruposSanguineo]
ON [dbo].[GruposSanguineo] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.GruposSanguineo
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[GruposSanguineo] ENABLE TRIGGER [TR_UPDATE_GruposSanguineo]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_MaestroAnexos]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_MaestroAnexos]
ON [dbo].[MaestroAnexos] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.MaestroAnexos
        (
        id,usuarioId,tabla,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,tabla,suser_name(),getdate(),'Deleting'
        from deleted
    end
end

GO
ALTER TABLE [dbo].[MaestroAnexos] ENABLE TRIGGER [TR_DELETE_MaestroAnexos]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_MaestroAnexos]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_MaestroAnexos]
ON [dbo].[MaestroAnexos] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.MaestroAnexos
        (
        id,usuarioId,tabla,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,tabla,suser_name(),getdate(),'insert'
        from inserted
    end
end

GO
ALTER TABLE [dbo].[MaestroAnexos] ENABLE TRIGGER [TR_INSERT_MaestroAnexos]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_MaestroAnexos]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_MaestroAnexos]
ON [dbo].[MaestroAnexos] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.MaestroAnexos
        (
        id,usuarioId,tabla,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,tabla,suser_name(),getdate(),'Editing'
        from inserted
    end
end

GO
ALTER TABLE [dbo].[MaestroAnexos] ENABLE TRIGGER [TR_UPDATE_MaestroAnexos]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_Menus]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_Menus]
ON [dbo].[Menus] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.Menus
        (
        id,aplicacionWebId,usuarioId,indexVisibilidad,nombreMenu,estado,icon,userNameBd,fechaHora,operacion
        )
        select
                id,aplicacionWebId,usuarioId,indexVisibilidad,nombreMenu,estado,icon,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Menus] ENABLE TRIGGER [TR_DELETE_Menus]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Menus]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_Menus]
ON [dbo].[Menus] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Menus
        (
        id,aplicacionWebId,usuarioId,indexVisibilidad,nombreMenu,estado,icon,userNameBd,fechaHora,operacion
        )
        select
                id,aplicacionWebId,usuarioId,indexVisibilidad,nombreMenu,estado,icon,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Menus] ENABLE TRIGGER [TR_INSERT_Menus]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Menus]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_Menus]
ON [dbo].[Menus] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Menus
        (
        id,aplicacionWebId,usuarioId,indexVisibilidad,nombreMenu,estado,icon,userNameBd,fechaHora,operacion
        )
        select
                id,aplicacionWebId,usuarioId,indexVisibilidad,nombreMenu,estado,icon,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Menus] ENABLE TRIGGER [TR_UPDATE_Menus]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_Municipios]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_Municipios]
ON [dbo].[Municipios] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.Municipios
        (
        id,departamentoId,usuarioId,nombre,codigoDane,userNameBd,fechaHora,operacion
        )
        select
                id,departamentoId,usuarioId,nombre,codigoDane,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Municipios] ENABLE TRIGGER [TR_DELETE_Municipios]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Municipios]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_Municipios]
ON [dbo].[Municipios] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Municipios
        (
        id,departamentoId,usuarioId,nombre,codigoDane,userNameBd,fechaHora,operacion
        )
        select
                id,departamentoId,usuarioId,nombre,codigoDane,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Municipios] ENABLE TRIGGER [TR_INSERT_Municipios]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Municipios]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_Municipios]
ON [dbo].[Municipios] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Municipios
        (
        id,departamentoId,usuarioId,nombre,codigoDane,userNameBd,fechaHora,operacion
        )
        select
                id,departamentoId,usuarioId,nombre,codigoDane,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Municipios] ENABLE TRIGGER [TR_UPDATE_Municipios]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_OpcionesMaestroAnexos]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_OpcionesMaestroAnexos]
ON [dbo].[OpcionesMaestroAnexos] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.OpcionesMaestroAnexos
        (
        id,maestroAnexosId,usuarioId,nombreOpcion,userNameBd,fechaHora,operacion
        )
        select
                id,maestroAnexosId,usuarioId,nombreOpcion,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[OpcionesMaestroAnexos] ENABLE TRIGGER [TR_DELETE_OpcionesMaestroAnexos]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_OpcionesMaestroAnexos]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_OpcionesMaestroAnexos]
ON [dbo].[OpcionesMaestroAnexos] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.OpcionesMaestroAnexos
        (
        id,maestroAnexosId,usuarioId,nombreOpcion,userNameBd,fechaHora,operacion
        )
        select
                id,maestroAnexosId,usuarioId,nombreOpcion,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[OpcionesMaestroAnexos] ENABLE TRIGGER [TR_INSERT_OpcionesMaestroAnexos]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_OpcionesMaestroAnexos]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_OpcionesMaestroAnexos]
ON [dbo].[OpcionesMaestroAnexos] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.OpcionesMaestroAnexos
        (
        id,maestroAnexosId,usuarioId,nombreOpcion,userNameBd,fechaHora,operacion
        )
        select
                id,maestroAnexosId,usuarioId,nombreOpcion,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[OpcionesMaestroAnexos] ENABLE TRIGGER [TR_UPDATE_OpcionesMaestroAnexos]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_Operaciones]    Script Date: 23/01/2018 21:39:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_Operaciones]
ON [dbo].[Operaciones] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.Operaciones
        (
        id,usuarioId,nombreOperacion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombreOperacion,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Operaciones] ENABLE TRIGGER [TR_DELETE_Operaciones]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Operaciones]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_Operaciones]
ON [dbo].[Operaciones] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Operaciones
        (
        id,usuarioId,nombreOperacion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombreOperacion,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Operaciones] ENABLE TRIGGER [TR_INSERT_Operaciones]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Operaciones]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_Operaciones]
ON [dbo].[Operaciones] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Operaciones
        (
        id,usuarioId,nombreOperacion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombreOperacion,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Operaciones] ENABLE TRIGGER [TR_UPDATE_Operaciones]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_OperacionesFormulario]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_OperacionesFormulario]
ON [dbo].[OperacionesFormulario] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.OperacionesFormulario
        (
        id,formularioId,operacionId,usuarioId,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,formularioId,operacionId,usuarioId,descripcion,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[OperacionesFormulario] ENABLE TRIGGER [TR_DELETE_OperacionesFormulario]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_OperacionesFormulario]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_OperacionesFormulario]
ON [dbo].[OperacionesFormulario] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.OperacionesFormulario
        (
        id,formularioId,operacionId,usuarioId,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,formularioId,operacionId,usuarioId,descripcion,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[OperacionesFormulario] ENABLE TRIGGER [TR_INSERT_OperacionesFormulario]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_OperacionesFormulario]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_OperacionesFormulario]
ON [dbo].[OperacionesFormulario] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.OperacionesFormulario
        (
        id,formularioId,operacionId,usuarioId,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,formularioId,operacionId,usuarioId,descripcion,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[OperacionesFormulario] ENABLE TRIGGER [TR_UPDATE_OperacionesFormulario]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_Perfiles]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_Perfiles]
ON [dbo].[Perfiles] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.Perfiles
        (
        id,usuarioId,nombrePerfil,descripcion,estado,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombrePerfil,descripcion,estado,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Perfiles] ENABLE TRIGGER [TR_DELETE_Perfiles]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Perfiles]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_Perfiles]
ON [dbo].[Perfiles] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Perfiles
        (
        id,usuarioId,nombrePerfil,descripcion,estado,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombrePerfil,descripcion,estado,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Perfiles] ENABLE TRIGGER [TR_INSERT_Perfiles]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Perfiles]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_Perfiles]
ON [dbo].[Perfiles] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Perfiles
        (
        id,usuarioId,nombrePerfil,descripcion,estado,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombrePerfil,descripcion,estado,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Perfiles] ENABLE TRIGGER [TR_UPDATE_Perfiles]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_PerfilesOperacionesFormulario]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_PerfilesOperacionesFormulario]
ON [dbo].[PerfilesOperacionesFormulario] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.PerfilesOperacionesFormulario
        (
        id,operacionFormularioId,perfilId,usuarioId,userNameBd,fechaHora,operacion
        )
        select
                id,operacionFormularioId,perfilId,usuarioId,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[PerfilesOperacionesFormulario] ENABLE TRIGGER [TR_DELETE_PerfilesOperacionesFormulario]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_PerfilesOperacionesFormulario]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_PerfilesOperacionesFormulario]
ON [dbo].[PerfilesOperacionesFormulario] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.PerfilesOperacionesFormulario
        (
        id,operacionFormularioId,perfilId,usuarioId,userNameBd,fechaHora,operacion
        )
        select
                id,operacionFormularioId,perfilId,usuarioId,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[PerfilesOperacionesFormulario] ENABLE TRIGGER [TR_INSERT_PerfilesOperacionesFormulario]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_PerfilesOperacionesFormulario]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_PerfilesOperacionesFormulario]
ON [dbo].[PerfilesOperacionesFormulario] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.PerfilesOperacionesFormulario
        (
        id,operacionFormularioId,perfilId,usuarioId,userNameBd,fechaHora,operacion
        )
        select
                id,operacionFormularioId,perfilId,usuarioId,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[PerfilesOperacionesFormulario] ENABLE TRIGGER [TR_UPDATE_PerfilesOperacionesFormulario]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_Personas]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_Personas]
ON [dbo].[Personas] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.Personas
        (
        fechaNacimiento,fechaExpedicionCedula,id,documentoIdentidadId,municipioId,grupoSanguineoId,sexoId,municipioExpedicionId,barrioId,estadoCivilId,usuarioId,estatura,peso,telefonoFijo,telefonoCelular,numeroDocumento,primerNombre,segundoNombre,primerApellido,segundoApellido,direcccion,correo,userNameBd,fechaHora,operacion
        )
        select
                fechaNacimiento,fechaExpedicionCedula,id,documentoIdentidadId,municipioId,grupoSanguineoId,sexoId,municipioExpedicionId,barrioId,estadoCivilId,usuarioId,estatura,peso,telefonoFijo,telefonoCelular,numeroDocumento,primerNombre,segundoNombre,primerApellido,segundoApellido,direcccion,correo,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Personas] ENABLE TRIGGER [TR_DELETE_Personas]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Personas]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_Personas]
ON [dbo].[Personas] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Personas
        (
        fechaNacimiento,fechaExpedicionCedula,id,documentoIdentidadId,municipioId,grupoSanguineoId,sexoId,municipioExpedicionId,barrioId,estadoCivilId,usuarioId,estatura,peso,telefonoFijo,telefonoCelular,numeroDocumento,primerNombre,segundoNombre,primerApellido,segundoApellido,direcccion,correo,userNameBd,fechaHora,operacion
        )
        select
                fechaNacimiento,fechaExpedicionCedula,id,documentoIdentidadId,municipioId,grupoSanguineoId,sexoId,municipioExpedicionId,barrioId,estadoCivilId,usuarioId,estatura,peso,telefonoFijo,telefonoCelular,numeroDocumento,primerNombre,segundoNombre,primerApellido,segundoApellido,direcccion,correo,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Personas] ENABLE TRIGGER [TR_INSERT_Personas]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Personas]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_Personas]
ON [dbo].[Personas] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Personas
        (
        fechaNacimiento,fechaExpedicionCedula,id,documentoIdentidadId,municipioId,grupoSanguineoId,sexoId,municipioExpedicionId,barrioId,estadoCivilId,usuarioId,estatura,peso,telefonoFijo,telefonoCelular,numeroDocumento,primerNombre,segundoNombre,primerApellido,segundoApellido,direcccion,correo,userNameBd,fechaHora,operacion
        )
        select
                fechaNacimiento,fechaExpedicionCedula,id,documentoIdentidadId,municipioId,grupoSanguineoId,sexoId,municipioExpedicionId,barrioId,estadoCivilId,usuarioId,estatura,peso,telefonoFijo,telefonoCelular,numeroDocumento,primerNombre,segundoNombre,primerApellido,segundoApellido,direcccion,correo,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Personas] ENABLE TRIGGER [TR_UPDATE_Personas]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_Sexos]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_Sexos]
ON [dbo].[Sexos] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.Sexos
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Sexos] ENABLE TRIGGER [TR_DELETE_Sexos]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Sexos]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_Sexos]
ON [dbo].[Sexos] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Sexos
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Sexos] ENABLE TRIGGER [TR_INSERT_Sexos]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Sexos]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_Sexos]
ON [dbo].[Sexos] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Sexos
        (
        id,usuarioId,sigla,descripcion,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,sigla,descripcion,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Sexos] ENABLE TRIGGER [TR_UPDATE_Sexos]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_Usuarios]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_Usuarios]
ON [dbo].[Usuarios] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.Usuarios
        (
        id,idPersona,usuarioId,perfilId,nombreUsuario,clave,estado,userNameBd,fechaHora,operacion
        )
        select
                id,idPersona,usuarioId,perfilId,nombreUsuario,clave,estado,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Usuarios] ENABLE TRIGGER [TR_DELETE_Usuarios]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Usuarios]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_Usuarios]
ON [dbo].[Usuarios] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Usuarios
        (
        id,idPersona,usuarioId,perfilId,nombreUsuario,clave,estado,userNameBd,fechaHora,operacion
        )
        select
                id,idPersona,usuarioId,perfilId,nombreUsuario,clave,estado,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Usuarios] ENABLE TRIGGER [TR_INSERT_Usuarios]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Usuarios]    Script Date: 23/01/2018 21:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_Usuarios]
ON [dbo].[Usuarios] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.Usuarios
        (
        id,idPersona,usuarioId,perfilId,nombreUsuario,clave,estado,userNameBd,fechaHora,operacion
        )
        select
                id,idPersona,usuarioId,perfilId,nombreUsuario,clave,estado,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Usuarios] ENABLE TRIGGER [TR_UPDATE_Usuarios]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_UsuariosOperacionesFormulario]    Script Date: 23/01/2018 21:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_DELETE_UsuariosOperacionesFormulario]
ON [dbo].[UsuariosOperacionesFormulario] AFTER DELETE
AS
BEGIN
    if exists (SELECT 1 from deleted) BEGIN
        insert into MoldeTrasabilidad.dbo.UsuariosOperacionesFormulario
        (
        id,usuarioId,operacionFormularioId,usuarioIdApl,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,operacionFormularioId,usuarioIdApl,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[UsuariosOperacionesFormulario] ENABLE TRIGGER [TR_DELETE_UsuariosOperacionesFormulario]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_UsuariosOperacionesFormulario]    Script Date: 23/01/2018 21:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_INSERT_UsuariosOperacionesFormulario]
ON [dbo].[UsuariosOperacionesFormulario] AFTER INSERT
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.UsuariosOperacionesFormulario
        (
        id,usuarioId,operacionFormularioId,usuarioIdApl,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,operacionFormularioId,usuarioIdApl,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[UsuariosOperacionesFormulario] ENABLE TRIGGER [TR_INSERT_UsuariosOperacionesFormulario]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_UsuariosOperacionesFormulario]    Script Date: 23/01/2018 21:39:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_UsuariosOperacionesFormulario]
ON [dbo].[UsuariosOperacionesFormulario] AFTER UPDATE
AS
BEGIN
    if exists (SELECT 1 from inserted) BEGIN
        insert into MoldeTrasabilidad.dbo.UsuariosOperacionesFormulario
        (
        id,usuarioId,operacionFormularioId,usuarioIdApl,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,operacionFormularioId,usuarioIdApl,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[UsuariosOperacionesFormulario] ENABLE TRIGGER [TR_UPDATE_UsuariosOperacionesFormulario]
GO
/****** Object:  Statistic [PK_Anexos]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Anexos]([PK_Anexos]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_AplicacionesWeb]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[AplicacionesWeb]([PK_AplicacionesWeb]) WITH STATS_STREAM = 0x01000000010000000000000000000000BCBF329B00000000CB010000000000008B01000000000000380300003800000004000A00000000000000000000000000070000003DA9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000100000000000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_AplicacionesWeb_Nombre]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[AplicacionesWeb]([U_dbo_AplicacionesWeb_Nombre]) WITH STATS_STREAM = 0x01000000020000000000000000000000687028CF000000002902000000000000D101000000000000A7030000A7000000E80300000000000028D0000000000000380300003800000004000A000000000000000000000000000700000000A9950071A8000001000000000000000100000000000000000000000000803F0000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000200000010000000000010410000803F000000000000A04000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001300000000000000000000000000000024000000000000005D0000000000000065000000000000000800000000000000300010000000803F000000000000803F04000001001C004D6F6C6465FF0100000000000000010000000100000028000000280000000000000000000000050000004D6F6C64650200000040000000000105000000000100000000000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000003_239E4DCF]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_239E4DCF] ON [dbo].[Barrios]([municipioId]) WITH STATS_STREAM = 0x010000000100000000000000000000008BA5B50300000000CB010000000000008B01000000000000380200003800000004000A000000000000000000000000000700000036A9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F960000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_398D8EEE]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_398D8EEE] ON [dbo].[Barrios]([municipioId]) WITH STATS_STREAM = 0x010000000100000000000000000000000A859E8D00000000CB010000000000008B01000000000000380200003800000004000A0000000000000000000000000007000000B566520171A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F960000000400000100000000000000
GO
/****** Object:  Statistic [PK_Barrios_1]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Barrios]([PK_Barrios_1]) WITH STATS_STREAM = 0x01000000010000000000000000000000D504B44E00000000CB010000000000008B01000000000000380300003800000004000A000000000000000000000000000700000059A9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000100000000000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_Barrios_Municipios_NombreMunicipioId]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Barrios]([U_Barrios_Municipios_NombreMunicipioId]) WITH STATS_STREAM = 0x010000000300000000000000000000007F768D89000000006502000000000000F501000000000000A7020000A7000000640000000000000028D0000000000000380200003800000004000A00000000000000000000000000380300003800000004000A000000000000000000000000000700000005A9950071A8000001000000000000000100000000000000000000000000803F0000803F0000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000003000000100000000000F8410000803F000000000000B8410000804000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130000000000000000000000000000003600000000000000810000000000000089000000000000000800000000000000300010000000803F000000000000803F04000001002E0056696C6C6173206465206C612043616E64656C61726961FF01000000000000000100000001000000280000002800000000000000000000001700000056696C6C6173206465206C612043616E64656C617269610200000040000000000117000000000100000000000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_ConsecutivosTemporales]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[ConsecutivosTemporales]([PK_ConsecutivosTemporales]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_ControlAplicacion]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[ControlAplicacion]([PK_ControlAplicacion]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Statistic [PK_Departamentos_1]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Departamentos]([PK_Departamentos_1]) WITH STATS_STREAM = 0x01000000010000000000000000000000DF0353CF00000000BB030000000000007B03000000000000380300003800000004000A000000000000000000000000000700000041A9950071A80000210000000000000021000000000000000000803F103EF83C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000110000000100000014000000000080400000044200000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000000F02000000000000170200000000000088000000000000009F00000000000000B600000000000000CD00000000000000E400000000000000FB0000000000000012010000000000002901000000000000400100000000000057010000000000006E0100000000000085010000000000009C01000000000000B301000000000000CA01000000000000E101000000000000F801000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F03000000040000100014000000803F0000803F0000803F05000000040000100014000000803F0000803F0000803F07000000040000100014000000803F0000803F0000803F09000000040000100014000000803F0000803F0000803F0B000000040000100014000000803F0000803F0000803F0D000000040000100014000000803F0000803F0000803F0F000000040000100014000000803F0000803F0000803F11000000040000100014000000803F0000803F0000803F13000000040000100014000000803F0000803F0000803F15000000040000100014000000803F0000803F0000803F17000000040000100014000000803F0000803F0000803F19000000040000100014000000803F0000803F0000803F1B000000040000100014000000803F0000803F0000803F1D000000040000100014000000803F0000803F0000803F1F000000040000100014000000803F0000803F0000803F210000000400002100000000000000, ROWCOUNT = 33, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_Departamento_CodigoDane]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Departamentos]([U_dbo_Departamento_CodigoDane]) WITH STATS_STREAM = 0x0100000002000000000000000000000024CEC4450000000088050000000000003005000000000000A7031000A7000000020000000000000028D0000000000400380300143800000004000A000000000000000000000400000700000007A9950071A80000210000000000000021000000000000000000803F103EF83C103EF83C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190000001900000002000000100000000000C0400000044200000000000000400000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130000000000000000000000000000003903000000000000BC03000000000000C403000000000000C800000000000000E100000000000000FA0000000000000013010000000000002C0100000000000045010000000000005E0100000000000077010000000000009001000000000000A901000000000000C201000000000000DB01000000000000F4010000000000000D0200000000000026020000000000003F02000000000000580200000000000071020000000000008A02000000000000A302000000000000BC02000000000000D502000000000000EE0200000000000007030000000000002003000000000000300010000000803F000000000000803F040000010019003035300010000000803F000000000000803F040000010019003038300010000000803F000000000000803F040000010019003131300010000000803F0000803F0000803F040000010019003135300010000000803F000000400000803F040000010019003139300010000000803F000000000000803F040000010019003230300010000000803F000000400000803F040000010019003237300010000000803F000000000000803F040000010019003431300010000000803F0000803F0000803F040000010019003437300010000000803F000000000000803F040000010019003530300010000000803F000000000000803F040000010019003532300010000000803F000000000000803F040000010019003534300010000000803F000000000000803F040000010019003633300010000000803F000000000000803F040000010019003636300010000000803F000000000000803F040000010019003638300010000000803F000000000000803F040000010019003730300010000000803F0000803F0000803F040000010019003736300010000000803F000000000000803F040000010019003831300010000000803F000000000000803F040000010019003835300010000000803F000000000000803F040000010019003836300010000000803F000000000000803F040000010019003838300010000000803F000000000000803F040000010019003931300010000000803F000000000000803F040000010019003934300010000000803F000000000000803F040000010019003935300010000000803F0000803F0000803F040000010019003939FF01000000000000000B0000000B0000002800000028000000000000000000000013000000303531333832333431353036333730383139350E00000040000000008102000000C0010200008101030000010104000081020500008102070000810209000081020B000081020D0000C0010F0000810110000001010400000102110000002100000000000000, ROWCOUNT = 33, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_Departamento_Nombre]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Departamentos]([U_dbo_Departamento_Nombre]) WITH STATS_STREAM = 0x01000000020000000000000000000000AABF29E6000000001707000000000000BF06000000000000A7030000A7000000640000000000000028D0000000000000380300003800000004000A000000000000000000000000000700000009A9950071A80000210000000000000021000000000000000000803F103EF83C103EF83C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001E0000001E00000002000000100000008C2E3A410000044200000000175DF44000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001300000000000000000000000000000083040000000000004B050000000000005305000000000000F0000000000000000F010000000000002F010000000000004C010000000000006C010000000000008901000000000000A701000000000000C401000000000000E101000000000000FF010000000000001E020000000000003A02000000000000560200000000000072020000000000009002000000000000B302000000000000D102000000000000F0020000000000000C030000000000002D030000000000004D0300000000000068030000000000008E03000000000000AB03000000000000CA03000000000000E8030000000000000804000000000000290400000000000049040000000000006504000000000000300010000000803F000000000000803F04000001001F00414D415A4F4E4153300010000000803F000000000000803F04000001002000414E54494F51554941300010000000803F000000000000803F04000001001D00415241554341300010000000803F000000000000803F0400000100200041544C414E5449434F300010000000803F000000000000803F04000001001D00424F474F5441300010000000803F000000000000803F04000001001E00424F4C49564152300010000000803F000000000000803F04000001001D00424F59414341300010000000803F000000000000803F04000001001D0043414C444153300010000000803F000000000000803F04000001001E0043415155455441300010000000803F000000000000803F04000001001F00434153414E415245300010000000803F000000000000803F04000001001C004341554341300010000000803F000000000000803F04000001001C004345534152300010000000803F000000000000803F04000001001C0043484F434F300010000000803F000000000000803F04000001001E00434F52444F4241300010000000803F000000000000803F0400000100230043554E44494E414D41524341300010000000803F000000000000803F04000001001E00475541494E4941300010000000803F000000000000803F04000001001F004755415649415245300010000000803F000000000000803F04000001001C004855494C41300010000000803F000000000000803F040000010021004C41204755414A495241300010000000803F000000000000803F040000010020004D414744414C454E41300010000000803F000000000000803F04000001001B004D455441300010000000803F000000000000803F040000010026004E2E2044452053414E54414E444552300010000000803F000000000000803F04000001001D004E415249D14F300010000000803F000000000000803F04000001001F00505554554D41594F300010000000803F000000000000803F04000001001E005155494E44494F300010000000803F000000000000803F040000010020005249534152414C4441300010000000803F000000000000803F0400000100210053414E20414E44524553300010000000803F000000000000803F0400000100200053414E54414E444552300010000000803F000000000000803F04000001001C005355435245300010000000803F000040400000803F04000001001E0056494348414441FF01000000000000000B0000000B0000002800000028000000000000000000000058000000414D415A4F4E4153544C414E5449434F424F59414341434153414E415245484F434F475541494E49414C41204755414A4952414E2E2044452053414E54414E4445525155494E44494F56414C4C452044454C2043415543410E0000004000000000C001000000810701000001080800008106100000C001160000810717000001041E00008107220000810A290000810F33000081074200008109390000010F490000002100000000000000, ROWCOUNT = 33, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_DocumentosIdentidad]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[DocumentosIdentidad]([PK_DocumentosIdentidad]) WITH STATS_STREAM = 0x010000000100000000000000000000002D8483C00000000085020000000000004502000000000000380300003800000004000A00000000000000000000000000070000005CA9950071A800000C000000000000000C000000000000000000803FABAAAA3D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000700000007000000010000001400000000008040000040410000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000D900000000000000E10000000000000038000000000000004F0000000000000066000000000000007D000000000000009400000000000000AB00000000000000C200000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F03000000040000100014000000803F0000803F0000803F05000000040000100014000000803F0000803F0000803F07000000040000100014000000803F0000803F0000803F09000000040000100014000000803F0000803F0000803F0B000000040000100014000000803F000000000000803F0D0000000400000C00000000000000, ROWCOUNT = 12, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_DocumentosIdentidad_Sigla]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[DocumentosIdentidad]([U_dbo_DocumentosIdentidad_Sigla]) WITH STATS_STREAM = 0x010000000200000000000000000000002BED0B07000000008C030000000000003403000000000000A7030000A70000000A0000000000000028D000004F000000380300003800000004000A00000000000000000094000000070000000BA9950071A800000C000000000000000C000000000000000000803FABAAAA3DABAAAA3D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0000000A00000002000000100000000000C0400000404100000000000000400000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130000000000000000000000000000004A01000000000000C001000000000000C8010000000000005000000000000000690000000000000082000000000000009B00000000000000B400000000000000CD00000000000000E600000000000000FF0000000000000018010000000000003101000000000000300010000000803F000000000000803F040000010019004153300010000000803F000000000000803F040000010019004343300010000000803F000000000000803F040000010019004344300010000000803F000000000000803F040000010019004345300010000000803F000000000000803F04000001001900434E300010000000803F000000000000803F040000010019004D53300010000000803F000000000000803F040000010019004E49300010000000803F000000000000803F040000010019004E56300010000000803F0000803F0000803F040000010019005243300010000000803F0000803F0000803F040000010019005449FF01000000000000000A0000000A000000280000002800000000000000000000001000000041534344454E4D534E495041524354490C00000040000000008102000000C0010200008101030000810104000001010500008102060000810208000081020A000081020C0000810201000001020E0000000C00000000000000, ROWCOUNT = 12, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_EstadosCivil_1]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[EstadosCivil]([PK_EstadosCivil_1]) WITH STATS_STREAM = 0x0100000001000000000000000000000042E309DB000000000902000000000000C901000000000000380300003800000004000A00000000000000000000000000070000005FA9950071A80000050000000000000005000000000000000000803FCDCC4C3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000014000000000080400000A04000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000005D00000000000000650000000000000018000000000000002F000000000000004600000000000000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F02000000040000100014000000803F000000400000803F060000000400000500000000000000, ROWCOUNT = 5, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_EstadosCivil_Sigla]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[EstadosCivil]([U_dbo_EstadosCivil_Sigla]) WITH STATS_STREAM = 0x010000000200000000000000000000006E25D85700000000B9020000000000006102000000000000A7020000A7000000320000000000000028D0000000000000380300003800000004000A00000000000000000000000000070000000DA9950071A800000500000000000000050000000000000000000000CDCC4C3ECDCC4C3E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050000000500000002000000100000000000A0400000A040000000000000803F000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013000000000000000000000000000000A000000000000000ED00000000000000F50000000000000028000000000000004000000000000000580000000000000070000000000000008800000000000000300010000000803F000000000000803F0400000100180043300010000000803F000000000000803F0400000100180044300010000000803F000000000000803F0400000100180053300010000000803F000000000000803F0400000100180055300010000000803F000000000000803F0400000100180056FF010000000000000005000000050000002800000028000000000000000000000005000000434453555606000000400000000081010000008101010000810102000081010300000101040000000500000000000000, ROWCOUNT = 5, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000002_2D27B809]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000002_2D27B809] ON [dbo].[Formularios]([nombreFormulario]) WITH STATS_STREAM = 0x01000000010000000000000000000000E6C7D5960000000062050000000000002205000000000000A703803FA7000000640000000000000028D0000030001000070000007849AB0071A80000110000000000000011000000000000000000803FF1F0703D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000000100000010000000B5B454410000884100000000B5B45441000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013000000000000000000000000000000C702000000000000AE03000000000000B6030000000000008000000000000000A600000000000000C400000000000000E800000000000000120100000000000035010000000000005B0100000000000077010000000000009801000000000000BA01000000000000E60100000000000005020000000000003902000000000000580200000000000074020000000000009302000000000000300010000000803F000000000000803F0400000100260041706C69636163696F6E6573576562300010000000803F000000000000803F04000001001E0042617272696F73300010000000803F000000000000803F04000001002400446570617274616D656E746F73300010000000803F000000000000803F04000001002A00446F63756D656E746F734964656E7469646164300010000000803F000000000000803F0400000100230045737461646F73436976696C300010000000803F0000803F0000803F04000001002600477275706F7353616E6775696E656F300010000000803F000000000000803F04000001001C004D656E7573300010000000803F000000000000803F040000010021004D756E69636970696F73300010000000803F000000000000803F040000010022004F7065726163696F6E6573300010000000803F000000000000803F04000001002C004F7065726163696F6E6573466F726D756C6172696F300010000000803F000000000000803F04000001001F0050657266696C6573300010000000803F000000000000803F0400000100340050657266696C65734F7065726163696F6E6573466F726D756C6172696F300010000000803F000000000000803F04000001001F00506572736F6E6173300010000000803F000000000000803F04000001001C005365786F73300010000000803F000000000000803F04000001001F005573756172696F73300010000000803F000000000000803F040000010034005573756172696F734F7065726163696F6E6573466F726D756C6172696FFF01000000000000000A0000000A000000280000002800000000000000000000008600000041706C69636163696F6E6573576562446570617274616D656E746F7345737461646F73436976696C477275706F7353616E6775696E656F4D656E75734F7065726163696F6E657350657266696C65734F7065726163696F6E6573466F726D756C6172696F5365786F735573756172696F734F7065726163696F6E6573466F726D756C6172696F0B0000004000000000810F000000810D0F0000810C1C0000810F2800008105370000810B3C0000C10847000001154F00008105640000011D690000001100000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000005_2D27B809]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000005_2D27B809] ON [dbo].[Formularios]([menuId]) WITH STATS_STREAM = 0x0100000001000000000000000000000047FCCC7D00000000EA01000000000000AA01000000000000380300003800000004000A000000000000000000000000000700000039A9950071A8000011000000000000001100000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000884100000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E000000000000004600000000000000100000000000000027000000000000001000140000002041000000000000803F01000000040000100014000000E040000000000000803F020000000400001100000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000005_46E78A0C]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000005_46E78A0C] ON [dbo].[Formularios]([menuId]) WITH STATS_STREAM = 0x01000000010000000000000000000000A91E513000000000EA01000000000000AA01000000000000380300003800000004000A0000000000000000000000000007000000B866520171A8000012000000000000001200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000904100000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E000000000000004600000000000000100000000000000027000000000000001000140000003041000000000000803F01000000040000100014000000E040000000000000803F020000000400001200000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000008_2D27B809]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000008_2D27B809] ON [dbo].[Formularios]([estados]) WITH STATS_STREAM = 0x01000000010000000000000000000000337A641D000000001302000000000000D301000000000000A7030000A7000000320000000000000028D0000000000000070000007949AB0071A8000011000000000000001100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000C04000008841000000000000C04000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001300000000000000000000000000000025000000000000005F00000000000000670000000000000008000000000000003000100000008841000000000000803F04000001001D0041637469766FFF01000000000000000A00000001000000280000002800000000000000000000000600000041637469766F0200000040000000000A06000000001100000000000000
GO
/****** Object:  Statistic [PK_Formularios]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Formularios]([PK_Formularios]) WITH STATS_STREAM = 0x01000000010000000000000000000000455F903200000000C3020000000000008302000000000000380300003800000004000A000000000000000000000000000700000045A9950071A80000110000000000000011000000000000000000803FF1F0703D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090000000900000001000000140000000000804000008841000000000000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000017010000000000001F0100000000000048000000000000005F0000000000000076000000000000008D00000000000000A400000000000000BB00000000000000D200000000000000E9000000000000000001000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F03000000040000100014000000803F0000803F0000803F05000000040000100014000000803F0000803F0000803F07000000040000100014000000803F0000803F0000803F09000000040000100014000000803F0000803F0000803F0B000000040000100014000000803F0000803F0000803F0D000000040000100014000000803F0000803F0000803F0F000000040000100014000000803F0000803F0000803F110000000400001100000000000000, ROWCOUNT = 19, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_GruposSanguineo_1]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[GruposSanguineo]([PK_GruposSanguineo_1]) WITH STATS_STREAM = 0x0100000001000000000000000000000062FDE8980000000047020000000000000702000000000000380300003800000004000A000000000000000000000000000700000062A9950071A80000080000000000000008000000000000000000803F0000003E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000000050000000100000014000000000080400000004100000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000009B00000000000000A30000000000000028000000000000003F0000000000000056000000000000006D000000000000008400000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F03000000040000100014000000803F000000000000803F05000000040000100014000000803F000000000000803F06000000040000100014000000803F000000400000803F0A0000000400000800000000000000, ROWCOUNT = 8, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_GruposSanguineo_Sigla]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[GruposSanguineo]([U_dbo_GruposSanguineo_Sigla]) WITH STATS_STREAM = 0x01000000020000000000000000000000526576C30000000058030000000000000003000000000000A7030000A7000000320000000000000028D000003F000000380300003800000004000A00000000000000000084000000070000000FA9950071A8000008000000000000000800000000000000000000000000003E0000003E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000800000002000000100000000000E84000000041000000000000504000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001300000000000000000000000000000012010000000000008C01000000000000940100000000000040000000000000005A0000000000000074000000000000008F00000000000000AA00000000000000C400000000000000DE00000000000000F800000000000000300010000000803F000000000000803F04000001001A0041202D300010000000803F000000000000803F04000001001A0041202B300010000000803F000000000000803F04000001001B004142202D300010000000803F000000000000803F04000001001B004142202B300010000000803F000000000000803F04000001001A0042202D300010000000803F000000000000803F04000001001A0042202B300010000000803F000000000000803F04000001001A004F202D300010000000803F000000000000803F04000001001A004F202BFF01000000000000000800000008000000280000002800000000000000000000000A00000041202D2B42202D4F202D0E0000004000000000C001000000C00101000081010200000101030000400204000081010600000101030000C00204000081010600000101030000400207000081010900000101030000000800000000000000, ROWCOUNT = 8, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_MaestroAnexos]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[MaestroAnexos]([PK_MaestroAnexos]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000003_30F848ED]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_30F848ED] ON [dbo].[Menus]([aplicacionWebId]) WITH STATS_STREAM = 0x01000000010000000000000000000000A83A0EC800000000CB010000000000008B01000000000000380200003800000004000A00000000000000000000000000070000003DA9950071A8000002000000000000000200000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F00000000000000270000000000000008000000000000001000140000000040000000000000803F010000000400000200000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_4D94879B]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_4D94879B] ON [dbo].[Menus]([aplicacionWebId]) WITH STATS_STREAM = 0x01000000010000000000000000000000B4F6D13B00000000CB010000000000008B01000000000000380200003800000004000A0000000000000000000000000007000000BB66520171A8000002000000000000000200000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F00000000000000270000000000000008000000000000001000140000000040000000000000803F010000000400000200000000000000
GO
/****** Object:  Statistic [PK_Menus]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Menus]([PK_Menus]) WITH STATS_STREAM = 0x01000000010000000000000000000000F209A10200000000EA01000000000000AA01000000000000380300003800000004000A00000000000000000000000000070000003AA9950071A8000002000000000000000200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E00000000000000460000000000000010000000000000002700000000000000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F020000000400000200000000000000, ROWCOUNT = 2, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_Menus_NombreMenuAplicacionWeb]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Menus]([U_dbo_Menus_NombreMenuAplicacionWeb]) WITH STATS_STREAM = 0x01000000030000000000000000000000A26408A400000000A5020000000000003502000000000000A7030000A7000000640000000000000028D000000014000038020AA63800000004000A00000000000000000000000000380300003800000004000A000000000000000000000000000700000011A9950071A8000002000000000000000200000000000000000000000000003F0000003F0000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000003000000100000000000CC41000000400000000000008C410000804000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130000000000000000000000000000006100000000000000C100000000000000C90000000000000010000000000000003600000000000000300010000000803F000000000000803F0400000100260020436F6E6669677572616369F36E20300010000000803F000000000000803F04000001002B002044696363696F6E6172696F73204461746F7320FF01000000000000000200000002000000280000002800000000000000000000002200000020436F6E6669677572616369F36E2044696363696F6E6172696F73204461746F73200400000040000000004001000000810E01000001130F0000000200000000000000, ROWCOUNT = 2, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000003_32E0915F]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_32E0915F] ON [dbo].[Municipios]([departamentoId]) WITH STATS_STREAM = 0x010000000100000000000000000000009B7A87AB000000008C050000000000004C05000000000000380300003800000004000A000000000000000000040000010700000041A9950071A800005F040000000000005F040000000000008988083D103EF83C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000001000000140000000000804000E08B440000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000E003000000000000E803000000000000000100000000000017010000000000002E0100000000000045010000000000005C0100000000000073010000000000008A01000000000000A101000000000000B801000000000000CF01000000000000E601000000000000FD0100000000000014020000000000002B0200000000000042020000000000005902000000000000700200000000000087020000000000009E02000000000000B502000000000000CC02000000000000E302000000000000FA02000000000000110300000000000028030000000000003F0300000000000056030000000000006D0300000000000084030000000000009B03000000000000B203000000000000C903000000000000100014000000FA42000000000000803F01000000040000100014000000B841000000000000803F02000000040000100014000000803F000000000000803F030000000400001000140000003842000000000000803F04000000040000100014000000F642000000000000803F05000000040000100014000000D841000000000000803F060000000400001000140000008041000000000000803F070000000400001000140000002842000000000000803F08000000040000100014000000C841000000000000803F09000000040000100014000000E041000000000000803F0A000000040000100014000000E842000000000000803F0B000000040000100014000000F041000000000000803F0C0000000400001000140000001442000000000000803F0D0000000400001000140000007041000000000000803F0E000000040000100014000000E8410000F0410000F041100000000400001000140000008042000000000000803F110000000400001000140000002042000000000000803F120000000400001000140000004041000000000000803F130000000400001000140000006041000000000000803F14000000040000100014000000AE42000000000000803F15000000040000100014000000D041000000000000803F160000000400001000140000003C42000000000000803F170000000400001000140000002842000000000000803F18000000040000100014000000E040000000000000803F190000000400001000140000009841000000000000803F1A0000000400001000140000005041000000000000803F1B0000000400001000140000000040000000000000803F1C0000000400001000140000003041000000000000803F1D0000000400001000140000001041000000000000803F1E0000000400001000140000008040000000000000803F1F000000040000100014000000C040000000000000803F200000000400001000140000004040000000000000803F210000000400005F04000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_4F7CD00D]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_4F7CD00D] ON [dbo].[Municipios]([departamentoId]) WITH STATS_STREAM = 0x01000000010000000000000000000000A4D47EE3000000008C050000000000004C05000000000000380300003800000004000A0000000000000000000400000107000000C166520171A800005F040000000000005F040000000000008988083D103EF83C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000002000000001000000140000000000804000E08B440000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000E003000000000000E803000000000000000100000000000017010000000000002E0100000000000045010000000000005C0100000000000073010000000000008A01000000000000A101000000000000B801000000000000CF01000000000000E601000000000000FD0100000000000014020000000000002B0200000000000042020000000000005902000000000000700200000000000087020000000000009E02000000000000B502000000000000CC02000000000000E302000000000000FA02000000000000110300000000000028030000000000003F0300000000000056030000000000006D0300000000000084030000000000009B03000000000000B203000000000000C903000000000000100014000000FA42000000000000803F01000000040000100014000000B841000000000000803F02000000040000100014000000803F000000000000803F030000000400001000140000003842000000000000803F04000000040000100014000000F642000000000000803F05000000040000100014000000D841000000000000803F060000000400001000140000008041000000000000803F070000000400001000140000002842000000000000803F08000000040000100014000000C841000000000000803F09000000040000100014000000E041000000000000803F0A000000040000100014000000E842000000000000803F0B000000040000100014000000F041000000000000803F0C0000000400001000140000001442000000000000803F0D0000000400001000140000007041000000000000803F0E000000040000100014000000E8410000F0410000F041100000000400001000140000008042000000000000803F110000000400001000140000002042000000000000803F120000000400001000140000004041000000000000803F130000000400001000140000006041000000000000803F14000000040000100014000000AE42000000000000803F15000000040000100014000000D041000000000000803F160000000400001000140000003C42000000000000803F170000000400001000140000002842000000000000803F18000000040000100014000000E040000000000000803F190000000400001000140000009841000000000000803F1A0000000400001000140000005041000000000000803F1B0000000400001000140000000040000000000000803F1C0000000400001000140000003041000000000000803F1D0000000400001000140000001041000000000000803F1E0000000400001000140000008040000000000000803F1F000000040000100014000000C040000000000000803F200000000400001000140000004040000000000000803F210000000400005F04000000000000
GO
/****** Object:  Statistic [PK_Municipios_1]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Municipios]([PK_Municipios_1]) WITH STATS_STREAM = 0x01000000010000000000000000000000B15755AA00000000E419000000000000A419000000000000380370003800000004000A000000000000000000530069000700000036A9950071A800005F040000000000005F040000000000000000803F2D446A3A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C8000000C800000001000000140000000000804000E08B44000000000000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000038180000000000004018000000000000400600000000000057060000000000006E0600000000000085060000000000009C06000000000000B306000000000000CA06000000000000E106000000000000F8060000000000000F0700000000000026070000000000003D0700000000000054070000000000006B0700000000000082070000000000009907000000000000B007000000000000C707000000000000DE07000000000000F5070000000000000C0800000000000023080000000000003A08000000000000510800000000000068080000000000007F080000000000009608000000000000AD08000000000000C408000000000000DB08000000000000F2080000000000000909000000000000200900000000000037090000000000004E0900000000000065090000000000007C090000000000009309000000000000AA09000000000000C109000000000000D809000000000000EF09000000000000060A0000000000001D0A000000000000340A0000000000004B0A000000000000620A000000000000790A000000000000900A000000000000A70A000000000000BE0A000000000000D50A000000000000EC0A000000000000030B0000000000001A0B000000000000310B000000000000480B0000000000005F0B000000000000760B0000000000008D0B000000000000A40B000000000000BB0B000000000000D20B000000000000E90B000000000000000C000000000000170C0000000000002E0C000000000000450C0000000000005C0C000000000000730C0000000000008A0C000000000000A10C000000000000B80C000000000000CF0C000000000000E60C000000000000FD0C000000000000140D0000000000002B0D000000000000420D000000000000590D000000000000700D000000000000870D0000000000009E0D000000000000B50D000000000000CC0D000000000000E30D000000000000FA0D000000000000110E000000000000280E0000000000003F0E000000000000560E0000000000006D0E000000000000840E0000000000009B0E000000000000B20E000000000000C90E000000000000E00E000000000000F70E0000000000000E0F000000000000250F0000000000003C0F000000000000530F0000000000006A0F000000000000810F000000000000980F000000000000AF0F000000000000C60F000000000000DD0F000000000000F40F0000000000000B1000000000000022100000000000003910000000000000501000000000000067100000000000007E100000000000009510000000000000AC10000000000000C310000000000000DA10000000000000F11000000000000008110000000000001F1100000000000036110000000000004D1100000000000064110000000000007B110000000000009211000000000000A911000000000000C011000000000000D711000000000000EE1100000000000005120000000000001C1200000000000033120000000000004A12000000000000611200000000000078120000000000008F12000000000000A612000000000000BD12000000000000D412000000000000EB1200000000000002130000000000001913000000000000301300000000000047130000000000005E1300000000000075130000000000008C13000000000000A313000000000000BA13000000000000D113000000000000E813000000000000FF1300000000000016140000000000002D1400000000000044140000000000005B1400000000000072140000000000008914000000000000A014000000000000B714000000000000CE14000000000000E514000000000000FC1400000000000013150000000000002A15000000000000411500000000000058150000000000006F1500000000000086150000000000009D15000000000000B415000000000000CB15000000000000E215000000000000F915000000000000101600000000000027160000000000003E1600000000000055160000000000006C1600000000000083160000000000009A16000000000000B116000000000000C816000000000000DF16000000000000F6160000000000000D1700000000000024170000000000003B170000000000005217000000000000691700000000000080170000000000009717000000000000AE17000000000000C517000000000000DC17000000000000F3170000000000000A180000000000002118000000000000100014000000803F000000000000803F01000000040000100014000000803F000000400000803F04000000040000100014000000803F000040400000803F08000000040000100014000000803F000040400000803F0C000000040000100014000000803F0000E0400000803F14000000040000100014000000803F000040400000803F18000000040000100014000000803F000040400000803F1C000000040000100014000000803F000040400000803F20000000040000100014000000803F0000E0400000803F28000000040000100014000000803F000040400000803F2C000000040000100014000000803F000040400000803F30000000040000100014000000803F000040400000803F34000000040000100014000000803F000040400000803F38000000040000100014000000803F000040400000803F3C000000040000100014000000803F000040400000803F40000000040000100014000000803F000040400000803F44000000040000100014000000803F0000E0400000803F4C000000040000100014000000803F000040400000803F50000000040000100014000000803F000040400000803F54000000040000100014000000803F000040400000803F58000000040000100014000000803F000040400000803F5C000000040000100014000000803F000040400000803F60000000040000100014000000803F000040400000803F64000000040000100014000000803F0000A0400000803F6A000000040000100014000000803F0000A0400000803F70000000040000100014000000803F000040400000803F74000000040000100014000000803F000040400000803F78000000040000100014000000803F000040400000803F7C000000040000100014000000803F0000E0400000803F84000000040000100014000000803F0000E0400000803F8C000000040000100014000000803F0000E0400000803F94000000040000100014000000803F0000A0400000803F9A000000040000100014000000803F0000A0400000803FA0000000040000100014000000803F000040400000803FA4000000040000100014000000803F000040400000803FA8000000040000100014000000803F000040400000803FAC000000040000100014000000803F000040400000803FB0000000040000100014000000803F000040400000803FB4000000040000100014000000803F000040400000803FB8000000040000100014000000803F000040400000803FBC000000040000100014000000803F0000A0400000803FC2000000040000100014000000803F000040400000803FC6000000040000100014000000803F000040400000803FCA000000040000100014000000803F0000E0400000803FD2000000040000100014000000803F0000E0400000803FDA000000040000100014000000803F0000E0400000803FE2000000040000100014000000803F0000E0400000803FEA000000040000100014000000803F0000E0400000803FF2000000040000100014000000803F0000A0400000803FF8000000040000100014000000803F0000E0400000803F00010000040000100014000000803F000040400000803F04010000040000100014000000803F0000A0400000803F0A010000040000100014000000803F000040400000803F0E010000040000100014000000803F0000A0400000803F14010000040000100014000000803F0000E0400000803F1C010000040000100014000000803F000040400000803F20010000040000100014000000803F000040400000803F24010000040000100014000000803F000040400000803F28010000040000100014000000803F000040400000803F2C010000040000100014000000803F000040400000803F30010000040000100014000000803F0000A0400000803F36010000040000100014000000803F000040400000803F3A010000040000100014000000803F000040400000803F3E010000040000100014000000803F0000A0400000803F44010000040000100014000000803F0000A0400000803F4A010000040000100014000000803F000040400000803F4E010000040000100014000000803F0000E0400000803F56010000040000100014000000803F000040400000803F5A010000040000100014000000803F0000A0400000803F60010000040000100014000000803F000040400000803F64010000040000100014000000803F000040400000803F68010000040000100014000000803F000040400000803F6C010000040000100014000000803F000040400000803F70010000040000100014000000803F000040400000803F74010000040000100014000000803F000040400000803F78010000040000100014000000803F000040400000803F7C010000040000100014000000803F0000A0400000803F82010000040000100014000000803F0000A0400000803F88010000040000100014000000803F000040400000803F8C010000040000100014000000803F0000A0400000803F92010000040000100014000000803F000040400000803F96010000040000100014000000803F0000E0400000803F9E010000040000100014000000803F000040400000803FA2010000040000100014000000803F000040400000803FA6010000040000100014000000803F0000E0400000803FAE010000040000100014000000803F000040400000803FB2010000040000100014000000803F0000E0400000803FBA010000040000100014000000803F000040400000803FBE010000040000100014000000803F0000E0400000803FC6010000040000100014000000803F000040400000803FCA010000040000100014000000803F0000E0400000803FD2010000040000100014000000803F0000E0400000803FDA010000040000100014000000803F000040400000803FDE010000040000100014000000803F0000E0400000803FE6010000040000100014000000803F000040400000803FEA010000040000100014000000803F0000E0400000803FF2010000040000100014000000803F0000E0400000803FFA010000040000100014000000803F000040400000803FFE010000040000100014000000803F0000E0400000803F06020000040000100014000000803F0000E0400000803F0E020000040000100014000000803F0000E0400000803F16020000040000100014000000803F000040400000803F1A020000040000100014000000803F000040400000803F1E020000040000100014000000803F000040400000803F22020000040000100014000000803F000040400000803F26020000040000100014000000803F0000E0400000803F2E020000040000100014000000803F000040400000803F32020000040000100014000000803F0000E0400000803F3A020000040000100014000000803F0000E0400000803F42020000040000100014000000803F0000E0400000803F4A020000040000100014000000803F000040400000803F4E020000040000100014000000803F000040400000803F52020000040000100014000000803F000040400000803F56020000040000100014000000803F000040400000803F5A020000040000100014000000803F000040400000803F5E020000040000100014000000803F000040400000803F62020000040000100014000000803F000040400000803F66020000040000100014000000803F000040400000803F6A020000040000100014000000803F000040400000803F6E020000040000100014000000803F000040400000803F72020000040000100014000000803F000040400000803F76020000040000100014000000803F000040400000803F7A020000040000100014000000803F000040400000803F7E020000040000100014000000803F000040400000803F82020000040000100014000000803F000040400000803F86020000040000100014000000803F000040400000803F8A020000040000100014000000803F000040400000803F8E020000040000100014000000803F000040400000803F92020000040000100014000000803F000040400000803F96020000040000100014000000803F000040400000803F9A020000040000100014000000803F000040400000803F9E020000040000100014000000803F000040400000803FA2020000040000100014000000803F000040400000803FA6020000040000100014000000803F000040400000803FAA020000040000100014000000803F000040400000803FAE020000040000100014000000803F000040400000803FB2020000040000100014000000803F000040400000803FB6020000040000100014000000803F000040400000803FBA020000040000100014000000803F0000E0400000803FC2020000040000100014000000803F000040400000803FC6020000040000100014000000803F000040400000803FCA020000040000100014000000803F000040400000803FCE020000040000100014000000803F000040400000803FD2020000040000100014000000803F000040400000803FD6020000040000100014000000803F0000E0400000803FDE020000040000100014000000803F000040400000803FE2020000040000100014000000803F0000E0400000803FEA020000040000100014000000803F000040400000803FEE020000040000100014000000803F0000E0400000803FF6020000040000100014000000803F000040400000803FFA020000040000100014000000803F000040400000803FFE020000040000100014000000803F0000A0400000803F04030000040000100014000000803F0000A0400000803F0A030000040000100014000000803F0000A0400000803F10030000040000100014000000803F0000A0400000803F16030000040000100014000000803F0000A0400000803F1C030000040000100014000000803F0000A0400000803F22030000040000100014000000803F0000A0400000803F28030000040000100014000000803F0000A0400000803F2E030000040000100014000000803F0000A0400000803F34030000040000100014000000803F0000A0400000803F3A030000040000100014000000803F0000A0400000803F40030000040000100014000000803F0000A0400000803F46030000040000100014000000803F0000A0400000803F4C030000040000100014000000803F0000A0400000803F52030000040000100014000000803F0000A0400000803F58030000040000100014000000803F0000E0400000803F60030000040000100014000000803F0000E0400000803F68030000040000100014000000803F0000E0400000803F70030000040000100014000000803F0000E0400000803F78030000040000100014000000803F0000E0400000803F80030000040000100014000000803F0000E0400000803F88030000040000100014000000803F0000E0400000803F90030000040000100014000000803F0000E0400000803F98030000040000100014000000803F0000E0400000803FA0030000040000100014000000803F0000E0400000803FA8030000040000100014000000803F0000E0400000803FB0030000040000100014000000803F0000E0400000803FB8030000040000100014000000803F0000E0400000803FC0030000040000100014000000803F0000E0400000803FC8030000040000100014000000803F0000E0400000803FD0030000040000100014000000803F0000E0400000803FD8030000040000100014000000803F0000E0400000803FE0030000040000100014000000803F0000E0400000803FE8030000040000100014000000803F0000E0400000803FF0030000040000100014000000803F0000E0400000803FF8030000040000100014000000803F0000E0400000803F00040000040000100014000000803F0000E0400000803F08040000040000100014000000803F0000E0400000803F10040000040000100014000000803F0000E0400000803F18040000040000100014000000803F0000E0400000803F20040000040000100014000000803F0000E0400000803F28040000040000100014000000803F0000E0400000803F30040000040000100014000000803F0000E0400000803F38040000040000100014000000803F0000E0400000803F40040000040000100014000000803F0000E0400000803F48040000040000100014000000803F0000E0400000803F50040000040000100014000000803F0000E0400000803F58040000040000100014000000803F0000A0400000803F5E040000040000100014000000803F000000000000803F5F0400000400005F04000000000000, ROWCOUNT = 1119, PAGECOUNT = 6
GO
/****** Object:  Statistic [U_dbo_Municipios_CodigoDane]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Municipios]([U_dbo_Municipios_CodigoDane]) WITH STATS_STREAM = 0x01000000030000000000000000000000789D043100000000341E000000000000C41D000000000000A7037000A7000000030000000000000028D0000053006900380368003800000004000A0000000000000000006A006500380320003800000004000A0000000000000000002C0020000700000016A9950071A800005F040000000000005F040000000000009947453FE598E13A2D446A3A2D446A3A000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C6000000C600000003000000100000000000304100E08B4400000000000040400000804000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130000000000000000000000000000004C1A000000000000501C000000000000581C00000000000030060000000000004A0600000000000064060000000000007E060000000000009806000000000000B206000000000000CC06000000000000E60600000000000000070000000000001A0700000000000034070000000000004E07000000000000680700000000000082070000000000009C07000000000000B607000000000000D007000000000000EA0700000000000004080000000000001E08000000000000380800000000000052080000000000006C080000000000008608000000000000A008000000000000BA08000000000000D408000000000000EE08000000000000080900000000000022090000000000003C09000000000000560900000000000070090000000000008A09000000000000A409000000000000BE09000000000000D809000000000000F2090000000000000C0A000000000000260A000000000000400A0000000000005A0A000000000000740A0000000000008E0A000000000000A80A000000000000C20A000000000000DC0A000000000000F60A000000000000100B0000000000002A0B000000000000440B0000000000005E0B000000000000780B000000000000920B000000000000AC0B000000000000C60B000000000000E00B000000000000FA0B000000000000140C0000000000002E0C000000000000480C000000000000620C0000000000007C0C000000000000960C000000000000B00C000000000000CA0C000000000000E40C000000000000FE0C000000000000180D000000000000320D0000000000004C0D000000000000660D000000000000800D0000000000009A0D000000000000B40D000000000000CE0D000000000000E80D000000000000020E0000000000001C0E000000000000360E000000000000500E0000000000006A0E000000000000840E0000000000009E0E000000000000B80E000000000000D20E000000000000EC0E000000000000060F000000000000200F0000000000003A0F000000000000540F0000000000006E0F000000000000880F000000000000A20F000000000000BC0F000000000000D60F000000000000F00F0000000000000A1000000000000024100000000000003E10000000000000581000000000000072100000000000008C10000000000000A610000000000000C010000000000000DA10000000000000F4100000000000000E11000000000000281100000000000042110000000000005C1100000000000076110000000000009011000000000000AA11000000000000C411000000000000DE11000000000000F81100000000000012120000000000002C12000000000000461200000000000060120000000000007A120000000000009412000000000000AE12000000000000C812000000000000E212000000000000FC12000000000000161300000000000030130000000000004A1300000000000064130000000000007E130000000000009813000000000000B213000000000000CC13000000000000E61300000000000000140000000000001A1400000000000034140000000000004E14000000000000681400000000000082140000000000009C14000000000000B614000000000000D014000000000000EA1400000000000004150000000000001E15000000000000381500000000000052150000000000006C150000000000008615000000000000A015000000000000BA15000000000000D415000000000000EE15000000000000081600000000000022160000000000003C16000000000000561600000000000070160000000000008A16000000000000A416000000000000BE16000000000000D816000000000000F2160000000000000C17000000000000261700000000000040170000000000005A1700000000000074170000000000008E17000000000000A817000000000000C217000000000000DC17000000000000F61700000000000010180000000000002A1800000000000044180000000000005E1800000000000078180000000000009218000000000000AC18000000000000C618000000000000E018000000000000FA1800000000000014190000000000002E19000000000000481900000000000062190000000000007C190000000000009619000000000000B019000000000000CA19000000000000E419000000000000FE19000000000000181A000000000000321A0000000000003000100000000442000000000000803F04000001001A003030313000100000008040000040400000803F04000001001A003030363000100000008040000000400000803F04000001001A0030313330001000000040400000A0405555D53F04000001001A0030323030001000000040400000803F0000803F04000001001A0030323230001000000000400000803F0000803F04000001001A003032353000100000008040000040400000C03F04000001001A003033303000100000000040000040400000803F04000001001A003033353000100000004040000000000000803F04000001001A00303336300010000000404000008040ABAAAA3F04000001001A003034323000100000004040000000400000803F04000001001A0030343530001000000040400000803F0000803F04000001001A00303530300010000000A040000000000000803F04000001001A00303531300010000000004000008040ABAAAA3F04000001001A00303535300010000000803F000040400000803F04000001001A0030363230001000000040400000A0400000803F04000001001A0030373530001000000080400000A0400000204004000001001A003037393000100000000040000000400000803F04000001001A0030383630001000000040400000803F0000803F04000001001A003038383000100000004040000000000000803F04000001001A0030393030001000000000400000803F0000803F04000001001A0030393230001000000040400000A0400000803F04000001001A003039393000100000000040000000400000004004000001001A003130313000100000004040000040400000803F04000001001A00313039300010000000A040000000000000803F04000001001A0031313030001000000000400000A0405555D53F04000001001A003132303000100000004040000040400000803F04000001001A003132343000100000000040000040400000404004000001001A003132363000100000004040000000400000803F04000001001A00313330300010000000004000008040ABAAAA3F04000001001A0031333530001000000000400000803F0000803F04000001001A00313337300010000000803F000040400000803F04000001001A003134313000100000004040000040400000C03F04000001001A003134373000100000008040000040400000404004000001001A0031353030001000000040400000A0405555D53F04000001001A003136303000100000008040000000400000004004000001001A0031363230001000000040400000803F0000803F04000001001A003136383000100000004040000040400000C03F04000001001A003137323000100000000040000000400000004004000001001A003137353000100000000040000000400000004004000001001A003137383000100000000040000080400000803F04000001001A003138333000100000004040000040400000803F04000001001A003138393000100000004040000000000000803F04000001001A0031393030001000000040400000803F0000803F04000001001A0032303030001000000000400000803F0000803F04000001001A003230343000100000004040000040400000404004000001001A003230363000100000000040000000400000004004000001001A00323039300010000000A040000000400000803F04000001001A0032313230001000000040400000803F0000803F04000001001A00323135300010000000803F000040400000C03F04000001001A003231393000100000004040000040400000803F04000001001A003232333000100000004040000000000000803F04000001001A0032323430001000000040400000803F0000803F04000001001A003232363000100000000040000040400000803F04000001001A0032333030001000000040400000803F0000803F04000001001A003233333000100000000040000040400000C03F04000001001A00323336300010000000004000008040ABAAAA3F04000001001A0032343030001000000040400000803F0000803F04000001001A00323434300010000000C040000000000000803F04000001001A003234353000100000004040000000400000803F04000001001A003234383000100000000041000000000000803F04000001001A003235303000100000004040000040400000803F04000001001A003235363000100000000040000040400000404004000001001A003236303000100000000040000040400000C03F04000001001A003236343000100000004040000040400000C03F04000001001A00323638300010000000404000008040ABAAAA3F04000001001A003237323000100000004040000080400000004004000001001A0032373930001000000000400000A0400000803F04000001001A003238373000100000000040000000400000004004000001001A003239303000100000004040000080400000004004000001001A00323936300010000000A0400000A0405555D53F04000001001A0033303030001000000040400000803F0000803F04000001001A003330363000100000000040000040400000C03F04000001001A0033313030001000000040400000803F0000803F04000001001A00333133300010000000E0400000A0400000204004000001001A003331383000100000008040000000400000004004000001001A0033323030001000000040400000803F0000803F04000001001A003332323000100000004040000040400000C03F04000001001A003332353000100000000040000000410000803F04000001001A003334343000100000004040000000000000803F04000001001A003334373000100000000040000080400000004004000001001A00333532300010000000803F000040400000803F04000001001A003335363000100000000040000040400000803F04000001001A0033363130001000000040400000803F0000803F04000001001A0033363430001000000080400000803F0000803F04000001001A003336383000100000004040000000400000004004000001001A00333732300010000000A0400000803F0000803F04000001001A003337373000100000004040000040400000404004000001001A003338303000100000004040000040400000C03F04000001001A003338353000100000000040000000400000803F04000001001A003339303000100000000040000040400000803F04000001001A00333937300010000000E040000040400000C03F04000001001A0034303030001000000040400000A0405555D53F04000001001A0034303530001000000040400000803F0000803F04000001001A003430373000100000004040000040400000C03F04000001001A00343131300010000000A040000000400000803F04000001001A003431383000100000008040000040400000803F04000001001A00343235300010000000C040000040400000803F04000001001A0034333030001000000040400000803F0000803F04000001001A00343333300010000000804000008040ABAAAA3F04000001001A0034343030001000000000400000A0400000204004000001001A003434343000100000004040000000400000803F04000001001A00343530300010000000404000008040ABAAAA3F04000001001A0034363030001000000040400000803F0000803F04000001001A003436343000100000000040000040400000C03F04000001001A00343638300010000000A040000000400000803F04000001001A003437333000100000008040000040400000803F04000001001A003438303000100000008040000000000000803F04000001001A00343833300010000000404000008040ABAAAA3F04000001001A003439303000100000004040000000000000803F04000001001A0034393130001000000040400000803F0000803F04000001001A003439353000100000004040000040400000C03F04000001001A003530303000100000000040000080400000803F04000001001A00353036300010000000404000008040ABAAAA3F04000001001A003531333000100000000040000000400000803F04000001001A00353137300010000000A040000080400000804004000001001A00353230300010000000A040000040400000C03F04000001001A003532343000100000004040000000000000803F04000001001A003533303000100000004040000000400000803F04000001001A003533333000100000000040000040400000803F04000001001A003534303000100000004040000000000000803F04000001001A003534313000100000000040000040400000803F04000001001A003534373000100000004040000040400000404004000001001A0035343930001000000040400000A0405555D53F04000001001A0035353530001000000040400000803F0000803F04000001001A00353630300010000000004000008040ABAAAA3F04000001001A0035363830001000000040400000803F0000803F04000001001A0035373030001000000080400000803F0000803F04000001001A00353732300010000000C040000000000000803F04000001001A00353733300010000000A0400000A0400000803F04000001001A003538303000100000008040000000000000803F04000001001A003538353000100000000040000000400000803F04000001001A003539313000100000004040000000400000004004000001001A0035393430001000000040400000803F0000803F04000001001A003539393000100000004040000000000000803F04000001001A003630303000100000004040000000400000803F04000001001A003630363000100000000040000000400000803F04000001001A003631323000100000008040000000400000004004000001001A003631353000100000004040000000000000803F04000001001A0036313630001000000040400000803F0000803F04000001001A003632313000100000000040000040400000404004000001001A00363234300010000000803F000040400000803F04000001001A00363334300010000000803F000040400000C03F04000001001A003634353000100000000040000040400000C03F04000001001A003634393000100000000040000040400000C03F04000001001A00363533300010000000803F000040400000C03F04000001001A00363536300010000000E04000008040ABAAAA3F04000001001A003636303000100000000040000040400000C03F04000001001A003636343000100000004040000040400000C03F04000001001A00363637300010000000C040000040400000C03F04000001001A003637303000100000008040000000400000803F04000001001A0036373330001000000080400000803F0000803F04000001001A003637353000100000008040000000400000004004000001001A003637383000100000000040000000400000004004000001001A003638303000100000004040000040400000C03F04000001001A00363833300010000000C040000040400000C03F04000001001A0036383630001000000040400000A0405555D53F04000001001A0036393030001000000040400000803F0000803F04000001001A00363933300010000000803F000040400000C03F04000001001A00363937300010000000803F000040400000803F04000001001A00373032300010000000803F000040400000803F04000001001A00373038300010000000A0400000A0400000803F04000001001A0037323030001000000080400000803F0000803F04000001001A003733363000100000004040000040400000C03F04000001001A0037343330001000000080400000803F0000803F04000001001A003734353000100000000040000000400000803F04000001001A0037353330001000000040400000803F0000803F04000001001A003735353000100000000040000080400000004004000001001A0037353830001000000040400000803F0000803F04000001001A00373630300010000000803F000040400000C03F04000001001A00373633300010000000A040000000400000803F04000001001A0037373030001000000040400000A0400000803F04000001001A003737373000100000004040000000400000803F04000001001A0037383030001000000040400000803F0000803F04000001001A00373835300010000000803F000040400000C03F04000001001A00373838300010000000803F000040400000C03F04000001001A003739313000100000000040000040400000803F04000001001A003739373000100000000040000040400000404004000001001A00373939300010000000803F0000A0400000A03F04000001001A003830363000100000008040000000000000803F04000001001A003830373000100000008040000040400000C03F04000001001A0038313030001000000080400000A0400000803F04000001001A003832303000100000004040000000400000803F04000001001A003832333000100000000040000000400000803F04000001001A00383332300010000000004000008040ABAAAA3F04000001001A00383337300010000000803F000080400000004004000001001A003834313000100000004040000040400000C03F04000001001A00383435300010000000004000008040ABAAAA3F04000001001A00383534300010000000803F000040400000404004000001001A003835363000100000008040000000400000803F04000001001A003836313000100000004040000040400000803F04000001001A00383637300010000000004000008040ABAAAA3F04000001001A00383732300010000000A040000000000000803F04000001001A00383733300010000000803F0000A0400000A03F04000001001A00383739300010000000C040000000400000803F04000001001A0038383530001000000000400000A0400000A03F04000001001A003839303000100000004040000040400000803F04000001001A00383935300010000000803F000080400000803F04000001001A00393830FF01000000000000004100000040000000280000002800000000000000000000005E000000303031343230333234353539373939333130393336353036373230303132323333333531363639363330373138323536383738343035343336343830393135303834393733363036323137353833393237313137303835393838313036314C0000004000000000C001000000C0010100008201020000010103000081020400008102060000810208000081020A000081020C000001020E0000C0011000008102110000810207000081021300008102150000810217000001020C0000C00119000081021A000081021C000081021E0000810220000081020800008102220000810224000081020C00000102260000C001280000810229000081022B000081022D0000810215000081022F0000810231000001020B0000C001330000810234000081022B000081022800008102360000810238000081023A000001023C0000C0013E000081023F0000810204000081021F000081024100008102140000810243000001023C0000C001450000810246000081024800008102410000C001450000810146000001010B000081024A000081024C000001024E0000C0015000008102510000810236000081022E0000810253000081025500000102570000400159000081025A00008102070000810208000081025C000081024300000102300000005F04000000000000, ROWCOUNT = 1119, PAGECOUNT = 3
GO
/****** Object:  Statistic [_WA_Sys_00000003_52593CB8]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_52593CB8] ON [dbo].[OpcionesMaestroAnexos]([maestroAnexosId]) WITH STATS_STREAM = 0x010000000100000000000000000000006DBFE39E00000000CB010000000000008B01000000000000380300003800000004000A00000000000000000000000000070000006798590171A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F020000000400000100000000000000
GO
/****** Object:  Statistic [PK_OpcionesMaestroAnexos]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[OpcionesMaestroAnexos]([PK_OpcionesMaestroAnexos]) WITH STATS_STREAM = 0x01000000010000000000000000000000ED0358EE0000000040000000000000000000000000000000380300003800000004000A00000000000000000000000000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_Operaciones]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Operaciones]([PK_Operaciones]) WITH STATS_STREAM = 0x01000000010000000000000000000000E78E4FB4000000002802000000000000E801000000000000380300003800000004000A00000000000000000000000000070000004BA9950071A80000070000000000000007000000000000000000803F2549123E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000040000000100000014000000000080400000E04000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000007C000000000000008400000000000000200000000000000037000000000000004E000000000000006500000000000000100014000000803F000000000000803F01000000040000100014000000803F0000803F0000803F03000000040000100014000000803F0000803F0000803F05000000040000100014000000803F0000803F0000803F070000000400000700000000000000, ROWCOUNT = 7, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_Operaciones_NombreOperacion]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Operaciones]([U_dbo_Operaciones_NombreOperacion]) WITH STATS_STREAM = 0x0100000002000000000000000000000057FF9BB4000000005F030000000000000703000000000000A703803FA7000000E80300000000000028D000000014000038033F003800000004000A000000000000000000140000000700000018A9950071A8000007000000000000000700000000000000000000002549123E2549123E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007000000070000000200000010000000244932410000E040000000004992E4400000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130000000000000000000000000000000B0100000000000093010000000000009B010000000000003800000000000000560000000000000079000000000000009600000000000000B500000000000000D500000000000000F100000000000000300010000000803F000000000000803F04000001001E0041637469766172300010000000803F000000000000803F0400000100230043616D62696172436C617665300010000000803F000000000000803F04000001001D00456469746172300010000000803F000000000000803F04000001001F00456C696D696E6172300010000000803F000000000000803F04000001002000496E61637469766172300010000000803F000000000000803F04000001001C004E7565766F300010000000803F000000000000803F04000001001A00566572FF0100000000000000070000000700000028000000280000000000000000000000310000004163746976617243616D62696172436C6176654564697461726C696D696E6172496E616374697661724E7565766F5665720900000040000000008107000000810C070000C001130000810514000001071900008109200000810529000001032E0000000700000000000000, ROWCOUNT = 7, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000003_36B12243]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_36B12243] ON [dbo].[OperacionesFormulario]([operacionId]) WITH STATS_STREAM = 0x010000000100000000000000000000009AAF0D910000000085020000000000004502000000000000380200003800000004000A00000000000000000000000000070000004BA9950071A800004A000000000000004A00000000000000000000002549123E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000700000007000000010000001400000000008040000094420000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000D900000000000000E10000000000000038000000000000004F0000000000000066000000000000007D000000000000009400000000000000AB00000000000000C2000000000000001000140000008841000000000000803F010000000400001000140000008841000000000000803F02000000040000100014000000A040000000000000803F030000000400001000140000008040000000000000803F040000000400001000140000005041000000000000803F050000000400001000140000008841000000000000803F06000000040000100014000000803F000000000000803F070000000400004A00000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_571DF1D5]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_571DF1D5] ON [dbo].[OperacionesFormulario]([operacionId]) WITH STATS_STREAM = 0x01000000010000000000000000000000BFA0B8E60000000085020000000000004502000000000000380200003800000004000A0000000000000000000000000007000000CA66520171A800004E000000000000004E00000000000000000000002549123E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000070000000700000001000000140000000000804000009C420000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000D900000000000000E10000000000000038000000000000004F0000000000000066000000000000007D000000000000009400000000000000AB00000000000000C2000000000000001000140000009041000000000000803F010000000400001000140000009041000000000000803F02000000040000100014000000A040000000000000803F030000000400001000140000008040000000000000803F040000000400001000140000006041000000000000803F050000000400001000140000009041000000000000803F06000000040000100014000000803F000000000000803F070000000400004E00000000000000
GO
/****** Object:  Statistic [PK_OperacionesFormulario]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[OperacionesFormulario]([PK_OperacionesFormulario]) WITH STATS_STREAM = 0x0100000001000000000000000000000010A990580000000065060000000000002506000000000000380300003800000004000A00000000000000000000000000070000004FA9950071A800004A000000000000004A000000000000000000803FC9675D3C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002700000027000000010000001400000000008040000094420000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000B904000000000000C10400000000000038010000000000004F0100000000000066010000000000007D010000000000009401000000000000AB01000000000000C201000000000000D901000000000000F00100000000000007020000000000001E0200000000000035020000000000004C0200000000000063020000000000007A020000000000009102000000000000A802000000000000BF02000000000000D602000000000000ED0200000000000004030000000000001B0300000000000032030000000000004903000000000000600300000000000077030000000000008E03000000000000A503000000000000BC03000000000000D303000000000000EA03000000000000010400000000000018040000000000002F0400000000000046040000000000005D0400000000000074040000000000008B04000000000000A204000000000000100014000000803F000000000000803F05000000040000100014000000803F0000803F0000803F07000000040000100014000000803F0000803F0000803F09000000040000100014000000803F0000803F0000803F0B000000040000100014000000803F0000803F0000803F0D000000040000100014000000803F0000803F0000803F0F000000040000100014000000803F0000803F0000803F11000000040000100014000000803F0000803F0000803F13000000040000100014000000803F0000803F0000803F15000000040000100014000000803F0000803F0000803F17000000040000100014000000803F000000000000803F18000000040000100014000000803F000000000000803F1B000000040000100014000000803F0000803F0000803F1D000000040000100014000000803F0000803F0000803F1F000000040000100014000000803F0000803F0000803F21000000040000100014000000803F0000803F0000803F23000000040000100014000000803F0000803F0000803F25000000040000100014000000803F0000803F0000803F27000000040000100014000000803F0000803F0000803F29000000040000100014000000803F0000803F0000803F2B000000040000100014000000803F0000803F0000803F2D000000040000100014000000803F0000803F0000803F2F000000040000100014000000803F0000803F0000803F31000000040000100014000000803F0000803F0000803F33000000040000100014000000803F0000803F0000803F35000000040000100014000000803F0000803F0000803F37000000040000100014000000803F0000803F0000803F39000000040000100014000000803F0000803F0000803F3B000000040000100014000000803F0000803F0000803F3D000000040000100014000000803F0000803F0000803F3F000000040000100014000000803F0000803F0000803F41000000040000100014000000803F0000803F0000803F43000000040000100014000000803F0000803F0000803F45000000040000100014000000803F000000000000803F4B000000040000100014000000803F0000803F0000803F4D000000040000100014000000803F0000803F0000803F4F000000040000100014000000803F0000803F0000803F51000000040000100014000000803F0000803F0000803F53000000040000100014000000803F0000803F0000803F550000000400004A00000000000000, ROWCOUNT = 82, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_OperacionesFormulario_FormularioIdOperacionId]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[OperacionesFormulario]([U_dbo_OperacionesFormulario_FormularioIdOperacionId]) WITH STATS_STREAM = 0x01000000030000000000000000000000F7039D9B000000006F03000000000000FF02000000000000380200043800000004000A000000000000000000803F4100380204003800000004000A0000000000000000003F430000380300003800000004000A00000000000000000045000000070000001AA9950071A800004A000000000000004A000000000000000000803EF1F0703DC9675D3CC9675D3C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D0000000D00000003000000140000000000404100009442000000000000804000008040000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000093010000000000009B0100000000000068000000000000007F000000000000009600000000000000AD00000000000000C400000000000000DB00000000000000F2000000000000000901000000000000200100000000000037010000000000004E0100000000000065010000000000007C010000000000001000140000008040000000000000803F0100000004000010001400000080400000804000008040030000000400001000140000008040000080400000804005000000040000100014000000A040000000000000803F060000000400001000140000008040000000000000803F07000000040000100014000000A040000000000000803F08000000040000100014000000804000008040000080400A0000000400001000140000008040000000000000803F0B000000040000100014000000A040000000000000803F0C000000040000100014000000804000008040000080400E0000000400001000140000008040000000000000803F0F000000040000100014000000C040000000000000803F10000000040000100014000000A040000000000000803F110000000400004A00000000000000, ROWCOUNT = 82, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_Perfiles]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Perfiles]([PK_Perfiles]) WITH STATS_STREAM = 0x010000000100000000000000000000004BDFB1F500000000EA01000000000000AA01000000000000380300003800000004000A000000000000000000000000000700000052A9950071A8000002000000000000000200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E00000000000000460000000000000010000000000000002700000000000000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F020000000400000200000000000000, ROWCOUNT = 2, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_Perfiles_NombrePerfil]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Perfiles]([U_dbo_Perfiles_NombrePerfil]) WITH STATS_STREAM = 0x010000000200000000000000000000007CBD0295000000007D020000000000002502000000000000A7030000A7000000C80000000000000028D0000000000000380300003800000004000A00000000000000000000000000070000001DA9950071A8000002000000000000000200000000000000000000000000003F0000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000200000010000000000094410000004000000000000068410000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130000000000000000000000000000005B00000000000000B100000000000000B90000000000000010000000000000003500000000000000300010000000803F000000000000803F0400000100250050657266696C496E76697461646F300010000000803F000000000000803F04000001002600537570657241646D696E4D6F6C6465FF01000000000000000200000002000000280000002800000000000000000000001D00000050657266696C496E76697461646F537570657241646D696E4D6F6C6465030000004000000000810E000000010F0E0000000200000000000000, ROWCOUNT = 2, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000003_3A81B327]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_3A81B327] ON [dbo].[PerfilesOperacionesFormulario]([perfilId]) WITH STATS_STREAM = 0x01000000010000000000000000000000944E071100000000EA01000000000000AA01000000000000380200003800000004000A000000000000000000000000000700000052A9950071A800004D000000000000004D00000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000140000000000804000009A4200000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E000000000000004600000000000000100000000000000027000000000000001000140000004040000000000000803F010000000400001000140000009442000000000000803F020000000400004D00000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_5AEE82B9]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_5AEE82B9] ON [dbo].[PerfilesOperacionesFormulario]([perfilId]) WITH STATS_STREAM = 0x01000000010000000000000000000000E6DCB53800000000EA01000000000000AA01000000000000380200003800000004000A0000000000000000000000000007000000CF66520171A800004A000000000000004A00000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000944200000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E000000000000004600000000000000100000000000000027000000000000001000140000008040000000000000803F010000000400001000140000008C42000000000000803F020000000400004A00000000000000
GO
/****** Object:  Statistic [PK_PerfilesOperacionesFormulario]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[PerfilesOperacionesFormulario]([PK_PerfilesOperacionesFormulario]) WITH STATS_STREAM = 0x010000000100000000000000000000004C055EEE0000000046060000000000000606000000000000380300003800000004000A00000000000000000000770073070000000B5BAC0071A80000490000000000000049000000000000000000803F3870603C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000026000000260000000100000014000000000080400000924200000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000009A04000000000000A204000000000000300100000000000047010000000000005E0100000000000075010000000000008C01000000000000A301000000000000BA01000000000000D101000000000000E801000000000000FF0100000000000016020000000000002D0200000000000044020000000000005B0200000000000072020000000000008902000000000000A002000000000000B702000000000000CE02000000000000E502000000000000FC0200000000000013030000000000002A03000000000000410300000000000058030000000000006F0300000000000086030000000000009D03000000000000B403000000000000CB03000000000000E203000000000000F903000000000000100400000000000027040000000000003E0400000000000055040000000000006C040000000000008304000000000000100014000000803F000000000000803F4D000000040000100014000000803F0000803F0000803F4F000000040000100014000000803F0000803F0000803F51000000040000100014000000803F0000803F0000803F53000000040000100014000000803F0000803F0000803F55000000040000100014000000803F0000803F0000803F57000000040000100014000000803F0000803F0000803F59000000040000100014000000803F0000803F0000803F5B000000040000100014000000803F0000803F0000803F5D000000040000100014000000803F0000803F0000803F5F000000040000100014000000803F0000803F0000803F61000000040000100014000000803F0000803F0000803F63000000040000100014000000803F0000803F0000803F65000000040000100014000000803F0000803F0000803F67000000040000100014000000803F0000803F0000803F69000000040000100014000000803F0000803F0000803F6B000000040000100014000000803F0000803F0000803F6D000000040000100014000000803F0000803F0000803F6F000000040000100014000000803F0000803F0000803F71000000040000100014000000803F0000803F0000803F73000000040000100014000000803F0000803F0000803F75000000040000100014000000803F0000803F0000803F77000000040000100014000000803F0000803F0000803F79000000040000100014000000803F0000803F0000803F7B000000040000100014000000803F0000803F0000803F7D000000040000100014000000803F0000803F0000803F7F000000040000100014000000803F0000803F0000803F81000000040000100014000000803F0000803F0000803F83000000040000100014000000803F0000803F0000803F85000000040000100014000000803F0000803F0000803F87000000040000100014000000803F000000000000803F8C000000040000100014000000803F0000803F0000803F8E000000040000100014000000803F0000803F0000803F90000000040000100014000000803F0000803F0000803F92000000040000100014000000803F0000803F0000803F94000000040000100014000000803F0000803F0000803F96000000040000100014000000803F0000803F0000803F98000000040000100014000000803F000000000000803F990000000400004900000000000000, ROWCOUNT = 74, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_PerfilesOperacionesFormulario_OperacionFormularioIdPerfilId]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[PerfilesOperacionesFormulario]([U_dbo_PerfilesOperacionesFormulario_OperacionFormularioIdPerfilId]) WITH STATS_STREAM = 0x01000000030000000000000000000000585F339B00000000B4060000000000004406000000000000380200003800000004000A00000000000000000000000000380200003800000004000A00000000000000000000000000380300003800000004000A0000000000000000003D0000000700000020A9950071A800004D000000000000004D000000000000008BAF783FC9675D3C7BC7543C7BC7543C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000280000002800000003000000140000000000404100009A420000000000008040000080400000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000D804000000000000E004000000000000400100000000000057010000000000006E0100000000000085010000000000009C01000000000000B301000000000000CA01000000000000E101000000000000F8010000000000000F0200000000000026020000000000003D0200000000000054020000000000006B0200000000000082020000000000009902000000000000B002000000000000C702000000000000DE02000000000000F5020000000000000C0300000000000023030000000000003A03000000000000510300000000000068030000000000007F030000000000009603000000000000AD03000000000000C403000000000000DB03000000000000F2030000000000000904000000000000200400000000000037040000000000004E0400000000000065040000000000007C040000000000009304000000000000AA04000000000000C104000000000000100014000000803F000000000000803F05000000040000100014000000803F0000803F0000803F07000000040000100014000000803F0000803F0000803F09000000040000100014000000803F0000803F0000803F0B000000040000100014000000803F0000803F0000803F0D000000040000100014000000803F0000803F0000803F0F000000040000100014000000803F0000803F0000803F11000000040000100014000000803F0000803F0000803F13000000040000100014000000803F0000803F0000803F15000000040000100014000000803F0000803F0000803F17000000040000100014000000803F000000000000803F18000000040000100014000000803F000000000000803F1B000000040000100014000000803F0000803F0000803F1D000000040000100014000000803F0000803F0000803F1F000000040000100014000000803F0000803F0000803F21000000040000100014000000803F0000803F0000803F23000000040000100014000000803F0000803F0000803F25000000040000100014000000803F0000803F0000803F27000000040000100014000000803F0000803F0000803F29000000040000100014000000803F0000803F0000803F2B000000040000100014000000803F0000803F0000803F2D000000040000100014000000803F0000803F0000803F2F000000040000100014000000803F0000803F0000803F31000000040000100014000000803F0000803F0000803F33000000040000100014000000803F0000803F0000803F35000000040000100014000000803F0000803F0000803F37000000040000100014000000803F0000803F0000803F39000000040000100014000000803F0000803F0000803F3B000000040000100014000000803F0000803F0000803F3D000000040000100014000000004000000040000000403F000000040000100014000000803F000000000000803F400000000400001000140000000040000000000000803F41000000040000100014000000803F0000803F0000803F43000000040000100014000000803F0000803F0000803F45000000040000100014000000803F000000000000803F4B000000040000100014000000803F0000803F0000803F4D000000040000100014000000803F0000803F0000803F4F000000040000100014000000803F0000803F0000803F51000000040000100014000000803F0000803F0000803F53000000040000100014000000803F0000803F0000803F550000000400004D00000000000000, ROWCOUNT = 74, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000003_3C69FB99]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_3C69FB99] ON [dbo].[Personas]([documentoIdentidadId]) WITH STATS_STREAM = 0x010000000100000000000000000000009CDB300F00000000CB010000000000008B01000000000000380300003800000004000A00000000000000000000000000070000005BA9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F030000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_5CD6CB2B]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_5CD6CB2B] ON [dbo].[Personas]([documentoIdentidadId]) WITH STATS_STREAM = 0x01000000010000000000000000000000BACE060700000000CB010000000000008B01000000000000380300003800000004000A0000000000000000000000000007000000D766520171A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F030000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000009_3C69FB99]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000009_3C69FB99] ON [dbo].[Personas]([municipioId]) WITH STATS_STREAM = 0x010000000100000000000000000000001BE3A8C500000000CB010000000000008B01000000000000380300003800000004000A000000000000000000000000000700000068A9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F960000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000009_5CD6CB2B]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000009_5CD6CB2B] ON [dbo].[Personas]([municipioId]) WITH STATS_STREAM = 0x0100000001000000000000000000000027A88F2C00000000CB010000000000008B01000000000000380300003800000004000A0000000000000000000000000007000000DF66520171A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F960000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000A_3C69FB99]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_0000000A_3C69FB99] ON [dbo].[Personas]([grupoSanguineoId]) WITH STATS_STREAM = 0x01000000010000000000000000000000AC3FD92500000000CB010000000000008B01000000000000380300003800000004000A000000000000000000000000000700000062A9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F050000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000A_5CD6CB2B]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_0000000A_5CD6CB2B] ON [dbo].[Personas]([grupoSanguineoId]) WITH STATS_STREAM = 0x010000000100000000000000000000001EF494AA00000000CB010000000000008B01000000000000380300003800000004000A0000000000000000000000000007000000DC66520171A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F050000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000B_3C69FB99]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_0000000B_3C69FB99] ON [dbo].[Personas]([sexoId]) WITH STATS_STREAM = 0x01000000010000000000000000000000C6682A5500000000CB010000000000008B01000000000000380300003800000004000A000000000000000000000000000700000055A9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000B_5CD6CB2B]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_0000000B_5CD6CB2B] ON [dbo].[Personas]([sexoId]) WITH STATS_STREAM = 0x01000000010000000000000000000000B69374D200000000CB010000000000008B01000000000000380300003800000004000A0000000000000000000000000007000000D266520171A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000D_3C69FB99]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_0000000D_3C69FB99] ON [dbo].[Personas]([municipioExpedicionId]) WITH STATS_STREAM = 0x01000000010000000000000000000000EA38DDCC00000000CB010000000000008B01000000000000380300003800000004000A00000000000000000000000000070000006CA9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F960000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000D_5CD6CB2B]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_0000000D_5CD6CB2B] ON [dbo].[Personas]([municipioExpedicionId]) WITH STATS_STREAM = 0x01000000010000000000000000000000DF4175DF00000000CB010000000000008B01000000000000380300003800000004000A0000000000000000000000000007000000EC66520171A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F960000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000E_3C69FB99]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_0000000E_3C69FB99] ON [dbo].[Personas]([barrioId]) WITH STATS_STREAM = 0x010000000100000000000000000000005A90BFC800000000CB010000000000008B01000000000000380200003800000004000A000000000000000000000000000700000059A9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_0000000E_5CD6CB2B]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_0000000E_5CD6CB2B] ON [dbo].[Personas]([barrioId]) WITH STATS_STREAM = 0x010000000100000000000000000000007C8589C000000000CB010000000000008B01000000000000380200003800000004000A0000000000000000000000000007000000D566520171A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000013_3C69FB99]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000013_3C69FB99] ON [dbo].[Personas]([estadoCivilId]) WITH STATS_STREAM = 0x01000000010000000000000000000000FCB1C3AE00000000CB010000000000008B01000000000000380300003800000004000A00000000000000000000000000070000005FA9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000100000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000013_5CD6CB2B]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000013_5CD6CB2B] ON [dbo].[Personas]([estadoCivilId]) WITH STATS_STREAM = 0x0100000001000000000000000000000054249FC000000000CB010000000000008B01000000000000380300003800000004000A0000000000000000000000000007000000DA66520171A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000100000000000000
GO
/****** Object:  Statistic [PK_Personas]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Personas]([PK_Personas]) WITH STATS_STREAM = 0x010000000100000000000000000000004EB7841E00000000CB010000000000008B01000000000000380300003800000004000A000000000000000000000000000700000075A9950071A8000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000100000000000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_Personas_NumeroDocumento]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Personas]([U_dbo_Personas_NumeroDocumento]) WITH STATS_STREAM = 0x010000000200000000000000000000005293FC2D000000003302000000000000DB01000000000000A7020000A7000000640000000000000028D0000000000000380300003800000004000A000000000000000000000000000700000022A9950071A8000001000000000000000100000000000000000000000000803F0000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000200000010000000000060410000803F0000000000002041000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013000000000000000000000000000000290000000000000067000000000000006F000000000000000800000000000000300010000000803F000000000000803F0400000100210031313433333235393435FF01000000000000000100000001000000280000002800000000000000000000000A00000031313433333235393435020000004000000000010A000000000100000000000000, ROWCOUNT = 1, PAGECOUNT = 1
GO
/****** Object:  Statistic [PK_sexos]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Sexos]([PK_sexos]) WITH STATS_STREAM = 0x01000000010000000000000000000000F4F31F3800000000EA01000000000000AA01000000000000380300003800000004000A000000000000000000000000000700000056A9950071A8000002000000000000000200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E00000000000000460000000000000010000000000000002700000000000000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F020000000400000200000000000000, ROWCOUNT = 2, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_sexos_Sigla]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Sexos]([U_dbo_sexos_Sigla]) WITH STATS_STREAM = 0x0100000002000000000000000000000047360712000000004702000000000000EF01000000000000A7030000A7000000320000000000000028D0000000000000380300003800000004000A000000000000000000000000000700000024A9950071A8000002000000000000000200000000000000000000000000003F0000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000002000000100000000000A04000000040000000000000803F00008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001300000000000000000000000000000040000000000000007B00000000000000830000000000000010000000000000002800000000000000300010000000803F000000000000803F0400000100180046300010000000803F000000000000803F040000010018004DFF010000000000000002000000020000002800000028000000000000000000000002000000464D03000000400000000081010000000101010000000200000000000000, ROWCOUNT = 2, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000004_403A8C7D]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000004_403A8C7D] ON [dbo].[Usuarios]([idPersona]) WITH STATS_STREAM = 0x010000000100000000000000000000005C61A61A00000000CB010000000000008B01000000000000380200003800000004000A000000000000000000000000000700000075A9950071A8000002000000000000000200000000000000000000000000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001000000010000001400000000000040000000400000803F000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000200000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000004_628FA481]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000004_628FA481] ON [dbo].[Usuarios]([idPersona]) WITH STATS_STREAM = 0x010000000100000000000000000000002EA8ADE900000000CB010000000000008B01000000000000380200003800000004000A00000000000000000000000000070000001167520171A8000003000000000000000300000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000ABAAAA3F0000404000000040ABAAAA3F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000001F0000000000000027000000000000000800000000000000100014000000803F000000000000803F010000000400000300000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000007_403A8C7D]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000007_403A8C7D] ON [dbo].[Usuarios]([perfilId]) WITH STATS_STREAM = 0x010000000100000000000000000000001679150D00000000EA01000000000000AA01000000000000380300003800000004000A000000000000000000000000000700000071A9950071A8000002000000000000000200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E00000000000000460000000000000010000000000000002700000000000000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F020000000400000200000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000007_628FA481]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000007_628FA481] ON [dbo].[Usuarios]([perfilId]) WITH STATS_STREAM = 0x01000000010000000000000000000000267FEE5800000000EA01000000000000AA01000000000000380300003800000004000A00000000000000000000000000070000000C67520171A8000003000000000000000300000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000404000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E000000000000004600000000000000100000000000000027000000000000001000140000000040000000000000803F01000000040000100014000000803F000000000000803F020000000400000300000000000000
GO
/****** Object:  Statistic [PK_Usuarios]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Usuarios]([PK_Usuarios]) WITH STATS_STREAM = 0x0100000001000000000000000000000056B357C600000000EA01000000000000AA01000000000000380300003800000004000A00000000000000000000000000070000007BA9950071A8000002000000000000000200000000000000000000000000003F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000020000000100000014000000000080400000004000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E00000000000000460000000000000010000000000000002700000000000000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F020000000400000200000000000000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_Usuarios_NombreUsuario]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[Usuarios]([U_dbo_Usuarios_NombreUsuario]) WITH STATS_STREAM = 0x0100000002000000000000000000000062FA5C770000000097020000000000003F02000000000000A7030000A7000000640000000000000028D0000000000000380300003800000004000A00000000000000000000000000070000002BA9950071A8000002000000000000000200000000000000000000000000003F0000003F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000002000000100000000000C84100000040000000000000A8410000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130000000000000000000000000000006800000000000000CB00000000000000D30000000000000010000000000000003D00000000000000300010000000803F000000000000803F04000001002D00616D617274696E657A40636F6F73616C75642E636F6D300010000000803F000000000000803F04000001002B004D6F6C646541646D696E406D6F6C64652E636F6DFF01000000000000000200000002000000280000002800000000000000000000002A000000616D617274696E657A40636F6F73616C75642E636F6D4D6F6C646541646D696E406D6F6C64652E636F6D03000000400000000081160000000114160000000200000000000000, ROWCOUNT = 3, PAGECOUNT = 1
GO
/****** Object:  Statistic [_WA_Sys_00000003_4222D4EF]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_4222D4EF] ON [dbo].[UsuariosOperacionesFormulario]([operacionFormularioId]) WITH STATS_STREAM = 0x010000000100000000000000000000007623923E0000000084060000000000004406000000000000380300003800000004000A0000000000000000003D0000000700000078A9950071A800004D000000000000004D000000000000008BAF783FC9675D3C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000280000002800000001000000140000000000804000009A420000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000D804000000000000E004000000000000400100000000000057010000000000006E0100000000000085010000000000009C01000000000000B301000000000000CA01000000000000E101000000000000F8010000000000000F0200000000000026020000000000003D0200000000000054020000000000006B0200000000000082020000000000009902000000000000B002000000000000C702000000000000DE02000000000000F5020000000000000C0300000000000023030000000000003A03000000000000510300000000000068030000000000007F030000000000009603000000000000AD03000000000000C403000000000000DB03000000000000F2030000000000000904000000000000200400000000000037040000000000004E0400000000000065040000000000007C040000000000009304000000000000AA04000000000000C104000000000000100014000000803F000000000000803F05000000040000100014000000803F0000803F0000803F07000000040000100014000000803F0000803F0000803F09000000040000100014000000803F0000803F0000803F0B000000040000100014000000803F0000803F0000803F0D000000040000100014000000803F0000803F0000803F0F000000040000100014000000803F0000803F0000803F11000000040000100014000000803F0000803F0000803F13000000040000100014000000803F0000803F0000803F15000000040000100014000000803F0000803F0000803F17000000040000100014000000803F000000000000803F18000000040000100014000000803F000000000000803F1B000000040000100014000000803F0000803F0000803F1D000000040000100014000000803F0000803F0000803F1F000000040000100014000000803F0000803F0000803F21000000040000100014000000803F0000803F0000803F23000000040000100014000000803F0000803F0000803F25000000040000100014000000803F0000803F0000803F27000000040000100014000000803F0000803F0000803F29000000040000100014000000803F0000803F0000803F2B000000040000100014000000803F0000803F0000803F2D000000040000100014000000803F0000803F0000803F2F000000040000100014000000803F0000803F0000803F31000000040000100014000000803F0000803F0000803F33000000040000100014000000803F0000803F0000803F35000000040000100014000000803F0000803F0000803F37000000040000100014000000803F0000803F0000803F39000000040000100014000000803F0000803F0000803F3B000000040000100014000000803F0000803F0000803F3D000000040000100014000000004000000040000000403F000000040000100014000000803F000000000000803F400000000400001000140000000040000000000000803F41000000040000100014000000803F0000803F0000803F43000000040000100014000000803F0000803F0000803F45000000040000100014000000803F000000000000803F4B000000040000100014000000803F0000803F0000803F4D000000040000100014000000803F0000803F0000803F4F000000040000100014000000803F0000803F0000803F51000000040000100014000000803F0000803F0000803F53000000040000100014000000803F0000803F0000803F550000000400004D00000000000000
GO
/****** Object:  Statistic [_WA_Sys_00000003_656C112C]    Script Date: 23/01/2018 21:39:29 ******/
CREATE STATISTICS [_WA_Sys_00000003_656C112C] ON [dbo].[UsuariosOperacionesFormulario]([operacionFormularioId]) WITH STATS_STREAM = 0x01000000010000000000000000000000FA282820000000000007000000000000C006000000000000380300003800000004000A00000000000000000000000000070000001867520171A80000A000000000000000A000000000000000344AFC3E210D523C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002C0000002C00000001000000140000000000804000002043000000000000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000054050000000000005C05000000000000600100000000000077010000000000008E01000000000000A501000000000000BC01000000000000D301000000000000EA01000000000000010200000000000018020000000000002F0200000000000046020000000000005D0200000000000074020000000000008B02000000000000A202000000000000B902000000000000D002000000000000E702000000000000FE0200000000000015030000000000002C0300000000000043030000000000005A03000000000000710300000000000088030000000000009F03000000000000B603000000000000CD03000000000000E403000000000000FB0300000000000012040000000000002904000000000000400400000000000057040000000000006E0400000000000085040000000000009C04000000000000B304000000000000CA04000000000000E104000000000000F8040000000000000F0500000000000026050000000000003D050000000000001000140000000040000000000000803F0500000004000010001400000000400000004000000040070000000400001000140000000040000000400000004009000000040000100014000000004000000040000000400B000000040000100014000000004000000040000000400D000000040000100014000000004000000040000000400F00000004000010001400000000400000004000000040110000000400001000140000000040000000400000004013000000040000100014000000004000000040000000401500000004000010001400000000400000004000000040170000000400001000140000000040000000000000803F180000000400001000140000000040000000000000803F1B000000040000100014000000004000000040000000401D000000040000100014000000004000000040000000401F00000004000010001400000000400000004000000040210000000400001000140000000040000000400000004023000000040000100014000000004000000040000000402500000004000010001400000000400000004000000040270000000400001000140000000040000000400000004029000000040000100014000000004000000040000000402B000000040000100014000000004000000040000000402D000000040000100014000000004000000040000000402F00000004000010001400000000400000004000000040310000000400001000140000000040000000400000004033000000040000100014000000004000000040000000403500000004000010001400000000400000004000000040370000000400001000140000000040000000400000004039000000040000100014000000004000000040000000403B000000040000100014000000004000000040000000403D000000040000100014000000404000004040000040403F0000000400001000140000000040000000000000803F400000000400001000140000004040000000000000803F410000000400001000140000000040000000000000803F4B000000040000100014000000004000000040000000404D000000040000100014000000004000000040000000404F0000000400001000140000004040000000000000803F5000000004000010001400000000400000004000000040520000000400001000140000000040000000400000004054000000040000100014000000004000000040000000405600000004000010001400000000400000004000000040580000000400001000140000000040000000000000803F590000000400001000140000000040000000000000803F5E00000004000010001400000000400000004000000040600000000400001000140000000040000000000000803F61000000040000A000000000000000
GO
/****** Object:  Statistic [PK_UsuariosOperacionesFormulario]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[UsuariosOperacionesFormulario]([PK_UsuariosOperacionesFormulario]) WITH STATS_STREAM = 0x01000000010000000000000000000000C633540C0000000084060000000000004406000000000000380300003800000004000A0000000000000000003800000007000000424D9B0071A800004D000000000000004D000000000000000000803F7BC7543C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000280000002800000001000000140000000000804000009A420000000000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000D804000000000000E004000000000000400100000000000057010000000000006E0100000000000085010000000000009C01000000000000B301000000000000CA01000000000000E101000000000000F8010000000000000F0200000000000026020000000000003D0200000000000054020000000000006B0200000000000082020000000000009902000000000000B002000000000000C702000000000000DE02000000000000F5020000000000000C0300000000000023030000000000003A03000000000000510300000000000068030000000000007F030000000000009603000000000000AD03000000000000C403000000000000DB03000000000000F2030000000000000904000000000000200400000000000037040000000000004E0400000000000065040000000000007C040000000000009304000000000000AA04000000000000C104000000000000100014000000803F000000000000803F0A000000040000100014000000803F0000803F0000803F0C000000040000100014000000803F0000803F0000803F0E000000040000100014000000803F0000803F0000803F10000000040000100014000000803F0000803F0000803F12000000040000100014000000803F0000803F0000803F14000000040000100014000000803F0000803F0000803F16000000040000100014000000803F0000803F0000803F18000000040000100014000000803F0000803F0000803F1A000000040000100014000000803F0000803F0000803F1C000000040000100014000000803F0000803F0000803F1E000000040000100014000000803F0000803F0000803F20000000040000100014000000803F0000803F0000803F22000000040000100014000000803F0000803F0000803F24000000040000100014000000803F0000803F0000803F26000000040000100014000000803F0000803F0000803F28000000040000100014000000803F0000803F0000803F2A000000040000100014000000803F0000803F0000803F2C000000040000100014000000803F0000803F0000803F2E000000040000100014000000803F0000803F0000803F30000000040000100014000000803F0000803F0000803F32000000040000100014000000803F0000803F0000803F34000000040000100014000000803F0000803F0000803F36000000040000100014000000803F0000803F0000803F38000000040000100014000000803F0000803F0000803F3A000000040000100014000000803F0000803F0000803F3C000000040000100014000000803F0000803F0000803F3E000000040000100014000000803F0000803F0000803F40000000040000100014000000803F0000803F0000803F42000000040000100014000000803F0000803F0000803F44000000040000100014000000803F0000803F0000803F46000000040000100014000000803F0000803F0000803F48000000040000100014000000803F0000803F0000803F4A000000040000100014000000803F0000803F0000803F4C000000040000100014000000803F0000803F0000803F4E000000040000100014000000803F0000803F0000803F50000000040000100014000000803F0000803F0000803F52000000040000100014000000803F000000000000803F53000000040000100014000000803F000000000000803F56000000040000100014000000803F0000803F0000803F580000000400004D00000000000000, ROWCOUNT = 168, PAGECOUNT = 1
GO
/****** Object:  Statistic [U_dbo_UsuariosOperacionesFormulario_UsuarioIdOperacionFormulario]    Script Date: 23/01/2018 21:39:29 ******/
UPDATE STATISTICS [dbo].[UsuariosOperacionesFormulario]([U_dbo_UsuariosOperacionesFormulario_UsuarioIdOperacionFormulario]) WITH STATS_STREAM = 0x010000000300000000000000000000000307919C000000001A02000000000000AA01000000000000380300003800000004000A00000000000000000000000000380300003800000004000A00000000000000000000000000380300003800000004000A00000000000000000000000000070000002DA9950071A800004D000000000000004D00000000000000000000000000003F7BC7543C7BC7543C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000003000000140000000000404100009A4200000000000080400000804000008040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000003E000000000000004600000000000000100000000000000027000000000000001000140000009442000000000000803F010000000400001000140000004040000000000000803F020000000400004D00000000000000, ROWCOUNT = 168, PAGECOUNT = 1
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Solo cuando primero se debe subir el anexo y despues guardar el registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Anexos', @level2type=N'COLUMN',@level2name=N'consecutivosTemporal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo para indicar si en el menu se debe visualizar o no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formularios', @level2type=N'COLUMN',@level2name=N'esVisible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo para visualizar un icono cuando despliegue en el menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formularios', @level2type=N'COLUMN',@level2name=N'iconOpcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'El nombre de Usuario debe ser el correo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuarios', @level2type=N'COLUMN',@level2name=N'nombreUsuario'
GO
USE [master]
GO
ALTER DATABASE [molde] SET  READ_WRITE 
GO
