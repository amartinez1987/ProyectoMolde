USE [MOLDE]
GO
/****** Object:  Table [dbo].[AplicacionesWeb]    Script Date: 08/01/2018 16:10:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 08/01/2018 16:10:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ControlAplicacion]    Script Date: 08/01/2018 16:10:56 ******/
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
/****** Object:  Table [dbo].[Departamentos]    Script Date: 08/01/2018 16:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_Departamentos_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentosIdentidad]    Script Date: 08/01/2018 16:10:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosCivil]    Script Date: 08/01/2018 16:10:56 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 08/01/2018 16:10:57 ******/
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
/****** Object:  Table [dbo].[GruposSanguineo]    Script Date: 08/01/2018 16:10:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 08/01/2018 16:10:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 08/01/2018 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[departamentoId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_Municipios_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operaciones]    Script Date: 08/01/2018 16:10:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperacionesFormulario]    Script Date: 08/01/2018 16:10:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 08/01/2018 16:10:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfilesOperacionesFormulario]    Script Date: 08/01/2018 16:10:57 ******/
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
/****** Object:  Table [dbo].[Personas]    Script Date: 08/01/2018 16:10:57 ******/
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
	[estatura] [int] NOT NULL,
	[peso] [int] NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[estadoCivilId] [int] NOT NULL,
	[telefonoFijo] [int] NOT NULL,
	[telefonoCelular] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexos]    Script Date: 08/01/2018 16:10:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 08/01/2018 16:10:57 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuariosOperacionesFormulario]    Script Date: 08/01/2018 16:10:57 ******/
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

INSERT [dbo].[AplicacionesWeb] ([id], [nombre], [descripcion], [usuarioId]) VALUES (1, N'Molde', N'm', 1)
INSERT [dbo].[AplicacionesWeb] ([id], [nombre], [descripcion], [usuarioId]) VALUES (32, N'qqqqqqqqq', N'dddd', 3)
INSERT [dbo].[AplicacionesWeb] ([id], [nombre], [descripcion], [usuarioId]) VALUES (35, N'Daniela', N'Daniela', 3)
INSERT [dbo].[AplicacionesWeb] ([id], [nombre], [descripcion], [usuarioId]) VALUES (56, N'aaaaa', N'cccc', 3)
SET IDENTITY_INSERT [dbo].[AplicacionesWeb] OFF
SET IDENTITY_INSERT [dbo].[Departamentos] ON 

INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId]) VALUES (1, N'Bolivar', 3)
INSERT [dbo].[Departamentos] ([id], [nombre], [usuarioId]) VALUES (3, N'Antioquia', 3)
SET IDENTITY_INSERT [dbo].[Departamentos] OFF
SET IDENTITY_INSERT [dbo].[DocumentosIdentidad] ON 

INSERT [dbo].[DocumentosIdentidad] ([id], [sigla], [descripcion], [usuarioId]) VALUES (2, N'CC', N'Cedula de Ciudadania', 3)
SET IDENTITY_INSERT [dbo].[DocumentosIdentidad] OFF
SET IDENTITY_INSERT [dbo].[EstadosCivil] ON 

INSERT [dbo].[EstadosCivil] ([id], [sigla], [descripcion], [usuarioId]) VALUES (1, N'Soltero', N'Solteria', 3)
SET IDENTITY_INSERT [dbo].[EstadosCivil] OFF
SET IDENTITY_INSERT [dbo].[Formularios] ON 

INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (1, N'Herramienta 1', N'index.aspx', N'Herramienta 1', 1, 0, 3, N'Activo', N'', 1)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (2, N'Herramienta 2', N'index.aspx', N'Herramienta 2', 1, 1, 0, N'Activo', N'', 2)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (3, N'Herramienta 3', N'index.aspx', N'Herramienta 3', 1, 0, 0, N'Activo', N'', 3)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (4, N'Herramienta 4', N'index.aspx', N'Herramienta 4', 1, 1, 0, N'Activo', N'', 4)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (5, N'Proyecto 1', N'indexwwww', N'Proyecto 1', 3, 1, 3, N'Activo', N'dsd', 4)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (6, N'Proyecto 2', N'index.aspx', N'Proyecto 2', 2, 1, 0, N'Activo', N'', 2)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (7, N'Departamentos', N'frmListarDepartamentos.asxp', N'Listado Departamentos', 1, 1, 1, N'Activo', N'', 1)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (8, N'Menus', N'frmListaMenus.aspx', N'Listado Menus', 1, 1, 1, N'Activo', N'', 1)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (9, N'Formularios', N'frmListaFormularios.aspx', N'Lista Formularios', 1, 1, 1, N'Activo', N'', 1)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (11, N'Operaciones', N'frmListaOperaciones.aspx', N'Lista Operaciones', 1, 1, 3, N'Activo', N'', 5)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (12, N'OperacionesFormulario', N'frmOperacionesFormulario.aspx', N'Configuración Operaciones Formulario', 1, 0, 3, N'Activo', N'', 8)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (13, N'Perfiles', N'frmListaPerfiles.aspx', N'Lista Perfiles', 1, 1, 3, N'Activo', N'', 9)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (14, N'PerfilesOperacionesFormulario', N'frmPerfilesOperacionesFormulario.aspx', N'Configuración Perfiles Operacionales', 1, 0, 3, N'Activo', N'', 1)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (15, N'GruposSanguineo', N'frmListaGruposSanguineo.aspx', N'Lista Grupos Sanguineos', 2, 1, 3, N'Activo', N'', 1)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (16, N'Sexos', N'frmListaSexos.aspx', N'Lista Sexos', 2, 1, 3, N'Activo', N'', 2)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (17, N'DocumentosIdentidad', N'frmListaDocumentosIdentidad.aspx', N'Lista Documentos Identidad', 2, 1, 3, N'Activo', N'', 3)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (18, N'EstadosCivil', N'frmListaEstadosCivil.aspx', N'Lista Estado Civil', 2, 1, 3, N'Activo', N'', 3)
SET IDENTITY_INSERT [dbo].[Formularios] OFF
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([id], [nombreMenu], [aplicacionWebId], [usuarioId], [estado], [icon], [indexVisibilidad]) VALUES (1, N'Herramientas', 1, 3, N'Activo', N'fa fa-wrench fa-fw', 1)
INSERT [dbo].[Menus] ([id], [nombreMenu], [aplicacionWebId], [usuarioId], [estado], [icon], [indexVisibilidad]) VALUES (2, N'Proyectos', 1, 3, N'Activo', N'fa fa-wrench fa-fw', 2)
INSERT [dbo].[Menus] ([id], [nombreMenu], [aplicacionWebId], [usuarioId], [estado], [icon], [indexVisibilidad]) VALUES (3, N'Prototipos', 1, 3, N'Activo', N'fa fa-wrench fa-fw', 3)
INSERT [dbo].[Menus] ([id], [nombreMenu], [aplicacionWebId], [usuarioId], [estado], [icon], [indexVisibilidad]) VALUES (6, N'Administracion Molde', 1, 1, N'Activo', N'', 1)
INSERT [dbo].[Menus] ([id], [nombreMenu], [aplicacionWebId], [usuarioId], [estado], [icon], [indexVisibilidad]) VALUES (7, N'prueba', 35, 3, N'Activo', N'd', 1)
INSERT [dbo].[Menus] ([id], [nombreMenu], [aplicacionWebId], [usuarioId], [estado], [icon], [indexVisibilidad]) VALUES (8, N'Prueb3', 32, 3, N'Activo', N'd', 2)
SET IDENTITY_INSERT [dbo].[Menus] OFF
SET IDENTITY_INSERT [dbo].[Operaciones] ON 

INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (1, N'Nuevo', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (2, N'Editar', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (3, N'Activar', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (4, N'Inactivar', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (5, N'Eliminar', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (7, N'Ver', 3)
SET IDENTITY_INSERT [dbo].[Operaciones] OFF
SET IDENTITY_INSERT [dbo].[OperacionesFormulario] ON 

INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (10, 4, 4, N'A', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (11, 4, 1, N'A', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (12, 5, 1, N'A', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (13, 7, 1, N'Nuevo Departamento', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (14, 7, 2, N'Editar Departamento', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (15, 7, 5, N'Eliminar Departamento', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (17, 8, 4, N'Inactivar Menus', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (18, 8, 1, N'Nuevo Menu', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (19, 8, 2, N'Editar Menu', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (20, 8, 3, N'Activar Menu', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (21, 9, 1, N'Nuevo Formulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (22, 9, 2, N'Editar Formulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (23, 9, 3, N'Activar Formulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (25, 9, 4, N'Inactivar Formulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (26, 11, 1, N'Nuevo Operacion', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (27, 11, 2, N'Editar Opreracion', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (28, 11, 5, N'Eliminar Operacion', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (29, 12, 5, N'Eliminar Operaciones Formulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (30, 12, 1, N'Nueva Operaciones Formulario', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (34, 2, 1, N'Nuevo Herramienta 2', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (35, 2, 2, N'Editar Herramienta 2', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (36, 2, 3, N'Activar Herramienta 2', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (39, 3, 3, N'Activar Herramienta 3', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (40, 1, 2, N'Editar Herramienta 1', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (41, 13, 1, N'Nuevo Perfiles', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (42, 13, 3, N'Activar Perfiles', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (43, 13, 4, N'Inactivar Perfiles', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (44, 13, 2, N'Editar Perfiles', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (45, 14, 1, N'Nuevo PerfilesOperacionesFormulario', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (46, 14, 5, N'Eliminar PerfilesOperacionesFormulario', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (47, 15, 1, N'Nuevo GruposSanguineo', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (48, 15, 2, N'Editar GruposSanguineo', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (49, 15, 5, N'Eliminar GruposSanguineo', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (53, 16, 1, N'Nuevo Sexos', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (54, 16, 2, N'Editar Sexos', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (55, 16, 5, N'Eliminar Sexos', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (56, 16, 7, N'Ver Sexos', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (57, 17, 1, N'Nuevo DocumentosIdentidad', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (58, 17, 2, N'Editar DocumentosIdentidad', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (59, 17, 5, N'Eliminar DocumentosIdentidad', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (60, 18, 1, N'Nuevo EstadosCivil', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (61, 18, 2, N'Editar EstadosCivil', 3)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (62, 18, 5, N'Eliminar EstadosCivil', 3)
SET IDENTITY_INSERT [dbo].[OperacionesFormulario] OFF
SET IDENTITY_INSERT [dbo].[Perfiles] ON 

INSERT [dbo].[Perfiles] ([id], [nombrePerfil], [descripcion], [estado], [usuarioId]) VALUES (1, N'Molde', N'M', N'Activo', 1)
INSERT [dbo].[Perfiles] ([id], [nombrePerfil], [descripcion], [estado], [usuarioId]) VALUES (2, N'MoldeAdmin_', N'Perfil con todas las operaciones a las diferentes aplicaciones_', N'Activo', 3)
INSERT [dbo].[Perfiles] ([id], [nombrePerfil], [descripcion], [estado], [usuarioId]) VALUES (3, N'Prueba', N'asdf', N'Activo', 3)
SET IDENTITY_INSERT [dbo].[Perfiles] OFF
SET IDENTITY_INSERT [dbo].[PerfilesOperacionesFormulario] ON 

INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (2, 10, 1, 3)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (3, 11, 1, 3)
SET IDENTITY_INSERT [dbo].[PerfilesOperacionesFormulario] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [clave], [idPersona], [estado], [usuarioId], [perfilId]) VALUES (3, N'amartinez@coosalud.com', N'YQBzAGQAZgA=', NULL, N'Activo', 1, 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
SET IDENTITY_INSERT [dbo].[UsuariosOperacionesFormulario] ON 

INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (5, 3, 13, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (6, 3, 14, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (7, 3, 15, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (11, 3, 17, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (12, 3, 18, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (13, 3, 19, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (14, 3, 20, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (15, 3, 21, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (16, 3, 22, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (17, 3, 25, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (18, 3, 23, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (19, 3, 26, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (20, 3, 27, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (21, 3, 28, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (22, 3, 29, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (23, 3, 30, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (24, 3, 41, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (25, 3, 42, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (26, 3, 43, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (27, 3, 44, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (28, 3, 45, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (29, 3, 46, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (30, 3, 47, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (33, 3, 48, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (34, 3, 49, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (35, 3, 56, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (36, 3, 55, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (37, 3, 54, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (38, 3, 53, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (39, 3, 57, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (40, 3, 58, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (41, 3, 59, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (42, 3, 60, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (43, 3, 61, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (44, 3, 62, 1)
SET IDENTITY_INSERT [dbo].[UsuariosOperacionesFormulario] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_AplicacionesWeb_Nombre]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[AplicacionesWeb] ADD  CONSTRAINT [U_dbo_AplicacionesWeb_Nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_Barrios_Municipios_NombreMunicipioId]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[Barrios] ADD  CONSTRAINT [U_Barrios_Municipios_NombreMunicipioId] UNIQUE NONCLUSTERED 
(
	[nombre] ASC,
	[municipioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Departamentos_Nombre]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[Departamentos] ADD  CONSTRAINT [U_dbo_Departamentos_Nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_DocumentosIdentidad_Sigla]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[DocumentosIdentidad] ADD  CONSTRAINT [U_dbo_DocumentosIdentidad_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_EstadosCivil_Sigla]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[EstadosCivil] ADD  CONSTRAINT [U_dbo_EstadosCivil_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_GruposSanguineo_Sigla]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[GruposSanguineo] ADD  CONSTRAINT [U_dbo_GruposSanguineo_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Menus_NombreMenuAplicacionWeb]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [U_dbo_Menus_NombreMenuAplicacionWeb] UNIQUE NONCLUSTERED 
(
	[nombreMenu] ASC,
	[aplicacionWebId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Municipios_MunicipioDepartamentoId]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[Municipios] ADD  CONSTRAINT [U_dbo_Municipios_MunicipioDepartamentoId] UNIQUE NONCLUSTERED 
(
	[nombre] ASC,
	[departamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Operaciones_NombreOperacion]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[Operaciones] ADD  CONSTRAINT [U_dbo_Operaciones_NombreOperacion] UNIQUE NONCLUSTERED 
(
	[nombreOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [U_dbo_OperacionesFormulario_FormularioIdOperacionId]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[OperacionesFormulario] ADD  CONSTRAINT [U_dbo_OperacionesFormulario_FormularioIdOperacionId] UNIQUE NONCLUSTERED 
(
	[formularioId] ASC,
	[operacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Perfiles_NombrePerfil]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[Perfiles] ADD  CONSTRAINT [U_dbo_Perfiles_NombrePerfil] UNIQUE NONCLUSTERED 
(
	[nombrePerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [U_dbo_PerfilesOperacionesFormulario_OperacionFormularioIdPerfilId]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[PerfilesOperacionesFormulario] ADD  CONSTRAINT [U_dbo_PerfilesOperacionesFormulario_OperacionFormularioIdPerfilId] UNIQUE NONCLUSTERED 
(
	[operacionFormularioId] ASC,
	[perfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Personas_NumeroDocumento]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[Personas] ADD  CONSTRAINT [U_dbo_Personas_NumeroDocumento] UNIQUE NONCLUSTERED 
(
	[numeroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_sexos_Sigla]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[Sexos] ADD  CONSTRAINT [U_dbo_sexos_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Usuarios_NombreUsuario]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [U_dbo_Usuarios_NombreUsuario] UNIQUE NONCLUSTERED 
(
	[nombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [U_dbo_UsuariosOperacionesFormulario_UsuarioIdOperacionFormulario]    Script Date: 08/01/2018 16:10:57 ******/
ALTER TABLE [dbo].[UsuariosOperacionesFormulario] ADD  CONSTRAINT [U_dbo_UsuariosOperacionesFormulario_UsuarioIdOperacionFormulario] UNIQUE NONCLUSTERED 
(
	[usuarioId] ASC,
	[operacionFormularioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
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
/****** Object:  Trigger [dbo].[TR_DELETE_AplicacionesWeb]    Script Date: 08/01/2018 16:10:57 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_AplicacionesWeb]    Script Date: 08/01/2018 16:10:57 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_AplicacionesWeb]    Script Date: 08/01/2018 16:10:57 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Departamentos]    Script Date: 08/01/2018 16:10:57 ******/
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
        id,usuarioId,nombre,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombre,suser_name(),getdate(),'Deleting'
        from deleted
    end
end
GO
ALTER TABLE [dbo].[Departamentos] ENABLE TRIGGER [TR_DELETE_Departamentos]
GO
/****** Object:  Trigger [dbo].[TR_INSERT_Departamentos]    Script Date: 08/01/2018 16:10:57 ******/
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
        id,usuarioId,nombre,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombre,suser_name(),getdate(),'insert'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Departamentos] ENABLE TRIGGER [TR_INSERT_Departamentos]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Departamentos]    Script Date: 08/01/2018 16:10:57 ******/
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
        id,usuarioId,nombre,userNameBd,fechaHora,operacion
        )
        select
                id,usuarioId,nombre,suser_name(),getdate(),'Editing'
        from inserted
    end
end
GO
ALTER TABLE [dbo].[Departamentos] ENABLE TRIGGER [TR_UPDATE_Departamentos]
GO
/****** Object:  Trigger [dbo].[TR_DELETE_DocumentosIdentidad]    Script Date: 08/01/2018 16:10:57 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_DocumentosIdentidad]    Script Date: 08/01/2018 16:10:57 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_DocumentosIdentidad]    Script Date: 08/01/2018 16:10:57 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_EstadosCivil]    Script Date: 08/01/2018 16:10:57 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_EstadosCivil]    Script Date: 08/01/2018 16:10:57 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_EstadosCivil]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_GruposSanguineo]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_GruposSanguineo]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_GruposSanguineo]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Operaciones]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Operaciones]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Operaciones]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_OperacionesFormulario]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_OperacionesFormulario]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_OperacionesFormulario]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_PerfilesOperacionesFormulario]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_PerfilesOperacionesFormulario]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_PerfilesOperacionesFormulario]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Sexos]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Sexos]    Script Date: 08/01/2018 16:10:58 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Sexos]    Script Date: 08/01/2018 16:10:58 ******/
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo para indicar si en el menu se debe visualizar o no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formularios', @level2type=N'COLUMN',@level2name=N'esVisible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo para visualizar un icono cuando despliegue en el menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formularios', @level2type=N'COLUMN',@level2name=N'iconOpcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'El nombre de Usuario debe ser el correo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuarios', @level2type=N'COLUMN',@level2name=N'nombreUsuario'
GO
