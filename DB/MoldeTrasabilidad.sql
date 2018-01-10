
go
USE [MoldeTrasabilidad]
GO
/****** Object:  Table [dbo].[AplicacionesWeb]    Script Date: 08/01/2018 16:25:25 ******/
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
/****** Object:  Table [dbo].[Departamentos]    Script Date: 08/01/2018 16:25:25 ******/
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
/****** Object:  Table [dbo].[DocumentosIdentidad]    Script Date: 08/01/2018 16:25:25 ******/
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
/****** Object:  Table [dbo].[EstadosCivil]    Script Date: 08/01/2018 16:25:26 ******/
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
/****** Object:  Table [dbo].[GruposSanguineo]    Script Date: 08/01/2018 16:25:26 ******/
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
/****** Object:  Table [dbo].[Operaciones]    Script Date: 08/01/2018 16:25:26 ******/
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
/****** Object:  Table [dbo].[OperacionesFormulario]    Script Date: 08/01/2018 16:25:26 ******/
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
/****** Object:  Table [dbo].[PerfilesOperacionesFormulario]    Script Date: 08/01/2018 16:25:26 ******/
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
/****** Object:  Table [dbo].[Sexos]    Script Date: 08/01/2018 16:25:26 ******/
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
