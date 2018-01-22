USE [master]
GO
/****** Object:  Database [MOLDE]    Script Date: 21/01/2018 21:19:42 ******/
CREATE DATABASE [MOLDE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MOLDE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2014\MSSQL\DATA\MOLDE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MOLDE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2014\MSSQL\DATA\MOLDE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MOLDE] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MOLDE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MOLDE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MOLDE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MOLDE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MOLDE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MOLDE] SET ARITHABORT OFF 
GO
ALTER DATABASE [MOLDE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MOLDE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MOLDE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MOLDE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MOLDE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MOLDE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MOLDE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MOLDE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MOLDE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MOLDE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MOLDE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MOLDE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MOLDE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MOLDE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MOLDE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MOLDE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MOLDE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MOLDE] SET RECOVERY FULL 
GO
ALTER DATABASE [MOLDE] SET  MULTI_USER 
GO
ALTER DATABASE [MOLDE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MOLDE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MOLDE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MOLDE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MOLDE] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MOLDE', N'ON'
GO
ALTER DATABASE [MOLDE] SET QUERY_STORE = OFF
GO
USE [MOLDE]
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
USE [MOLDE]
GO
/****** Object:  Table [dbo].[AplicacionesWeb]    Script Date: 21/01/2018 21:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AplicacionesWeb](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](1000) NOT NULL,
	[descripcion] [varchar](800) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_AplicacionesWeb] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_AplicacionesWeb_Nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 21/01/2018 21:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[municipioId] [int] NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_Barrios_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_Barrios_Municipios_NombreMunicipioId] UNIQUE NONCLUSTERED 
(
	[nombre] ASC,
	[municipioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ControlAplicacion]    Script Date: 21/01/2018 21:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Departamentos]    Script Date: 21/01/2018 21:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
	[codigoDane] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Departamentos_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Departamento_CodigoDane] UNIQUE NONCLUSTERED 
(
	[codigoDane] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Departamento_Nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentosIdentidad]    Script Date: 21/01/2018 21:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentosIdentidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sigla] [varchar](10) NOT NULL,
	[descripcion] [varchar](200) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_DocumentosIdentidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_DocumentosIdentidad_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosCivil]    Script Date: 21/01/2018 21:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosCivil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sigla] [varchar](50) NULL,
	[descripcion] [varchar](100) NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_EstadosCivil_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_EstadosCivil_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 21/01/2018 21:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[GruposSanguineo]    Script Date: 21/01/2018 21:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GruposSanguineo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sigla] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_GruposSanguineo_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_GruposSanguineo_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 21/01/2018 21:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Menus_NombreMenuAplicacionWeb] UNIQUE NONCLUSTERED 
(
	[nombreMenu] ASC,
	[aplicacionWebId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 21/01/2018 21:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Municipios_CodigoDane] UNIQUE NONCLUSTERED 
(
	[codigoDane] ASC,
	[departamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operaciones]    Script Date: 21/01/2018 21:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operaciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreOperacion] [varchar](1000) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_Operaciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Operaciones_NombreOperacion] UNIQUE NONCLUSTERED 
(
	[nombreOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperacionesFormulario]    Script Date: 21/01/2018 21:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_OperacionesFormulario_FormularioIdOperacionId] UNIQUE NONCLUSTERED 
(
	[formularioId] ASC,
	[operacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 21/01/2018 21:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Perfiles_NombrePerfil] UNIQUE NONCLUSTERED 
(
	[nombrePerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfilesOperacionesFormulario]    Script Date: 21/01/2018 21:19:44 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_PerfilesOperacionesFormulario_OperacionFormularioIdPerfilId] UNIQUE NONCLUSTERED 
(
	[operacionFormularioId] ASC,
	[perfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 21/01/2018 21:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Personas_NumeroDocumento] UNIQUE NONCLUSTERED 
(
	[numeroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexos]    Script Date: 21/01/2018 21:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sigla] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_sexos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY],
 CONSTRAINT [U_dbo_sexos_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 21/01/2018 21:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Usuarios_NombreUsuario] UNIQUE NONCLUSTERED 
(
	[nombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuariosOperacionesFormulario]    Script Date: 21/01/2018 21:19:44 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_UsuariosOperacionesFormulario_UsuarioIdOperacionFormulario] UNIQUE NONCLUSTERED 
(
	[usuarioId] ASC,
	[operacionFormularioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departamentos] ADD  CONSTRAINT [DF_Departamentos_codigoDane]  DEFAULT ('') FOR [codigoDane]
GO
ALTER TABLE [dbo].[DocumentosIdentidad] ADD  CONSTRAINT [DF_DocumentosIdentidad_descripcion]  DEFAULT ('') FOR [descripcion]
GO
ALTER TABLE [dbo].[Formularios] ADD  CONSTRAINT [DF_Formularios_esVisible]  DEFAULT ((0)) FOR [esVisible]
GO
ALTER TABLE [dbo].[Municipios] ADD  CONSTRAINT [DF_Municipios_codigoDane]  DEFAULT ('') FOR [codigoDane]
GO
ALTER TABLE [dbo].[Personas] ADD  CONSTRAINT [DF_Personas_telefonoFijo]  DEFAULT ((0)) FOR [telefonoFijo]
GO
ALTER TABLE [dbo].[Personas] ADD  CONSTRAINT [DF_Personas_telefonoCelular]  DEFAULT ((0)) FOR [telefonoCelular]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_estado]  DEFAULT ('Pendiente') FOR [estado]
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
/****** Object:  Trigger [dbo].[TR_DELETE_AplicacionesWeb]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_AplicacionesWeb]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_AplicacionesWeb]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Barrios]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Barrios]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Barrios]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Departamentos]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Departamentos]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Departamentos]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_DocumentosIdentidad]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_DocumentosIdentidad]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_DocumentosIdentidad]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_EstadosCivil]    Script Date: 21/01/2018 21:19:44 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_EstadosCivil]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_EstadosCivil]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Formularios]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Formularios]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Formularios]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_GruposSanguineo]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_GruposSanguineo]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_GruposSanguineo]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Menus]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Menus]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Menus]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Municipios]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Municipios]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Municipios]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Operaciones]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Operaciones]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Operaciones]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_OperacionesFormulario]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_OperacionesFormulario]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_OperacionesFormulario]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Perfiles]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Perfiles]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Perfiles]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_PerfilesOperacionesFormulario]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_PerfilesOperacionesFormulario]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_PerfilesOperacionesFormulario]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Personas]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Personas]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Personas]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Sexos]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Sexos]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Sexos]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Usuarios]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Usuarios]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Usuarios]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_UsuariosOperacionesFormulario]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_UsuariosOperacionesFormulario]    Script Date: 21/01/2018 21:19:45 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_UsuariosOperacionesFormulario]    Script Date: 21/01/2018 21:19:45 ******/
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo para indicar si en el menu se debe visualizar o no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formularios', @level2type=N'COLUMN',@level2name=N'esVisible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo para visualizar un icono cuando despliegue en el menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formularios', @level2type=N'COLUMN',@level2name=N'iconOpcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'El nombre de Usuario debe ser el correo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuarios', @level2type=N'COLUMN',@level2name=N'nombreUsuario'
GO
USE [master]
GO
ALTER DATABASE [MOLDE] SET  READ_WRITE 
GO
