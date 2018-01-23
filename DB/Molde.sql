USE [Molde]
GO
/****** Object:  Table [dbo].[AplicacionesWeb]    Script Date: 22/01/2018 22:56:24 ******/
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
/****** Object:  Table [dbo].[Barrios]    Script Date: 22/01/2018 22:56:25 ******/
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
/****** Object:  Table [dbo].[ControlAplicacion]    Script Date: 22/01/2018 22:56:25 ******/
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
/****** Object:  Table [dbo].[Departamentos]    Script Date: 22/01/2018 22:56:25 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentosIdentidad]    Script Date: 22/01/2018 22:56:25 ******/
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
/****** Object:  Table [dbo].[EstadosCivil]    Script Date: 22/01/2018 22:56:25 ******/
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
/****** Object:  Table [dbo].[Formularios]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Table [dbo].[GruposSanguineo]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Table [dbo].[Menus]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Table [dbo].[Municipios]    Script Date: 22/01/2018 22:56:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operaciones]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Table [dbo].[OperacionesFormulario]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Table [dbo].[Perfiles]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Table [dbo].[PerfilesOperacionesFormulario]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Table [dbo].[Personas]    Script Date: 22/01/2018 22:56:26 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexos]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Table [dbo].[Usuarios]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Table [dbo].[UsuariosOperacionesFormulario]    Script Date: 22/01/2018 22:56:26 ******/
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
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (2, N'Barrios', N'frmListaBarrios.aspx', N' Lista Barrios', 2, 1, 1, N'Activo', N'fa fa-street-view', 2)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (3, N'Departamentos', N'frmListaDepartamentos.aspx', N' Lista Departamentos', 2, 1, 1, N'Activo', N'fa fa-map', 4)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (4, N'DocumentosIdentidad', N'frmListaDocumentosIdentidad.aspx', N' Lista Documentos Identidad', 2, 1, 1, N'Activo', N'fa fa-cc', 5)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (5, N'EstadosCivil', N'frmListaEstadosCivil.aspx', N' Lista EstadosCivil', 2, 1, 1, N'Activo', N'fa fa-info', 6)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (6, N'Formularios', N'frmListaFormularios.aspx', N' Lista Formularios', 1, 1, 1, N'Activo', N'fa fa-windows', 7)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (7, N'GruposSanguineo', N'frmListaGruposSanguineo.aspx', N' Lista GruposSanguineo', 2, 1, 1, N'Activo', N'fa fa-square-o', 8)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (8, N'Menus', N'frmListaMenus.aspx', N' Lista Menus', 1, 1, 1, N'Activo', N'fa fa-th-list', 9)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (9, N'Municipios', N'frmListaMunicipios.aspx', N' Lista Municipios', 2, 1, 1, N'Activo', N'fa fa-map-signs', 10)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (10, N'Operaciones', N'frmListaOperaciones.aspx', N' Lista Operaciones', 1, 1, 1, N'Activo', N'fa fa-gear', 11)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (11, N'OperacionesFormulario', N'GestionOperacionesFormulario.aspx', N' Administracion Operaciones Formulario', 1, 0, 1, N'Activo', N'', 12)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (12, N'Perfiles', N'frmListaPerfiles.aspx', N' Lista Perfiles', 1, 1, 1, N'Activo', N'fa fa-user-plus', 13)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (13, N'PerfilesOperacionesFormulario', N'GestionOperacionesFormulario.aspx', N' Administracion Perfiles Operaciones Formulario', 1, 0, 1, N'Activo', N'', 14)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (14, N'Personas', N'GestionPersonas.aspx', N' Administracion Personas', 1, 0, 1, N'Activo', N'', 15)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (15, N'Sexos', N'frmListaSexos.aspx', N' Lista Sexos', 2, 1, 1, N'Activo', N'fa fa-venus-mars', 16)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (16, N'Usuarios', N'frmListaUsuarios.aspx', N' Lista Usuarios', 1, 1, 1, N'Activo', N'fa fa-user', 18)
INSERT [dbo].[Formularios] ([id], [nombreFormulario], [urlFormulario], [nombreMostrar], [menuId], [esVisible], [usuarioId], [estados], [iconOpcion], [indexVisibilidad]) VALUES (17, N'UsuariosOperacionesFormulario', N'GestionUsuariosOperacionesFormulario', N' Aministracion Usuario Operaciones', 1, 0, 1, N'Activo', N'', 19)
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
SET IDENTITY_INSERT [dbo].[Operaciones] ON 

INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (1, N'Nuevo', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (2, N'Editar', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (3, N'Activar', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (4, N'Inactivar', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (5, N'Eliminar', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (6, N'Ver', 1)
INSERT [dbo].[Operaciones] ([id], [nombreOperacion], [usuarioId]) VALUES (7, N'CambiarClave', 1)
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
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (66, 15, 1, N'Nuevo Sexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (67, 15, 2, N'Editar Sexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (68, 15, 5, N'Eliminar Sexos', 1)
INSERT [dbo].[OperacionesFormulario] ([id], [formularioId], [operacionId], [descripcion], [usuarioId]) VALUES (69, 15, 6, N'Ver Sexos', 1)
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
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (136, 66, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (137, 67, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (138, 68, 2, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (139, 69, 2, 1)
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
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (151, 63, 1, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (152, 65, 1, 1)
INSERT [dbo].[PerfilesOperacionesFormulario] ([id], [operacionFormularioId], [perfilId], [usuarioId]) VALUES (153, 62, 1, 1)
SET IDENTITY_INSERT [dbo].[PerfilesOperacionesFormulario] OFF
SET IDENTITY_INSERT [dbo].[Personas] ON 

INSERT [dbo].[Personas] ([id], [numeroDocumento], [documentoIdentidadId], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [fechaNacimiento], [municipioId], [grupoSanguineoId], [sexoId], [fechaExpedicionCedula], [municipioExpedicionId], [barrioId], [direcccion], [estatura], [peso], [correo], [estadoCivilId], [telefonoFijo], [telefonoCelular], [usuarioId]) VALUES (1, N'1143325945', 3, N'Anibal', N'Guillermo', N'Martinez', N'Aguas', CAST(N'1987-12-09' AS Date), 150, 5, 1, CAST(N'2000-11-11' AS Date), 150, 1, N'amartinez@coosalud.com', CAST(1.00 AS Numeric(18, 2)), CAST(72.00 AS Numeric(18, 2)), N'amartinez@coosalud.com', 1, 3012204605, 3012204605, 2)
SET IDENTITY_INSERT [dbo].[Personas] OFF
SET IDENTITY_INSERT [dbo].[Sexos] ON 

INSERT [dbo].[Sexos] ([id], [sigla], [descripcion], [usuarioId]) VALUES (1, N'M', N'Masculino', 1)
INSERT [dbo].[Sexos] ([id], [sigla], [descripcion], [usuarioId]) VALUES (2, N'F', N'Femenino', 1)
SET IDENTITY_INSERT [dbo].[Sexos] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [clave], [idPersona], [estado], [usuarioId], [perfilId]) VALUES (1, N'MoldeAdmin@molde.com', N'YQBzAGQAZgA=', NULL, N'Activo', 1, 2)
INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [clave], [idPersona], [estado], [usuarioId], [perfilId]) VALUES (2, N'amartinez@coosalud.com', N'YQBzAGQAZgA=', 1, N'Activo', 1, 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
SET IDENTITY_INSERT [dbo].[UsuariosOperacionesFormulario] ON 

INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (10, 1, 49, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (11, 1, 51, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (12, 1, 77, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (13, 1, 5, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (14, 1, 6, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (15, 1, 7, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (16, 1, 8, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (17, 1, 9, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (18, 1, 10, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (19, 1, 11, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (20, 1, 12, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (21, 1, 13, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (22, 1, 14, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (23, 1, 15, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (24, 1, 16, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (25, 1, 17, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (26, 1, 18, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (27, 1, 19, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (28, 1, 20, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (29, 1, 21, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (30, 1, 22, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (31, 1, 23, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (32, 1, 24, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (33, 1, 27, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (34, 1, 28, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (35, 1, 29, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (36, 1, 30, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (37, 1, 31, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (38, 1, 32, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (39, 1, 33, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (40, 1, 34, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (41, 1, 35, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (42, 1, 36, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (43, 1, 37, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (44, 1, 38, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (45, 1, 39, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (46, 1, 40, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (47, 1, 41, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (48, 1, 42, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (49, 1, 43, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (50, 1, 44, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (51, 1, 45, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (52, 1, 46, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (53, 1, 47, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (54, 1, 48, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (55, 1, 50, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (56, 1, 52, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (57, 1, 53, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (58, 1, 54, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (59, 1, 55, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (60, 1, 56, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (61, 1, 57, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (62, 1, 58, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (63, 1, 59, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (64, 1, 60, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (65, 1, 61, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (66, 1, 62, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (67, 1, 63, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (68, 1, 64, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (69, 1, 65, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (70, 1, 66, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (71, 1, 67, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (72, 1, 68, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (73, 1, 69, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (74, 1, 75, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (75, 1, 76, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (76, 1, 78, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (77, 1, 79, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (78, 1, 80, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (79, 1, 81, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (80, 1, 82, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (81, 1, 83, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (82, 1, 84, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (83, 1, 85, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (86, 2, 63, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (87, 2, 65, 1)
INSERT [dbo].[UsuariosOperacionesFormulario] ([id], [usuarioId], [operacionFormularioId], [usuarioIdApl]) VALUES (88, 2, 62, 1)
SET IDENTITY_INSERT [dbo].[UsuariosOperacionesFormulario] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_AplicacionesWeb_Nombre]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[AplicacionesWeb] ADD  CONSTRAINT [U_dbo_AplicacionesWeb_Nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_Barrios_Municipios_NombreMunicipioId]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[Barrios] ADD  CONSTRAINT [U_Barrios_Municipios_NombreMunicipioId] UNIQUE NONCLUSTERED 
(
	[nombre] ASC,
	[municipioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Departamento_CodigoDane]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[Departamentos] ADD  CONSTRAINT [U_dbo_Departamento_CodigoDane] UNIQUE NONCLUSTERED 
(
	[codigoDane] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Departamento_Nombre]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[Departamentos] ADD  CONSTRAINT [U_dbo_Departamento_Nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_DocumentosIdentidad_Sigla]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[DocumentosIdentidad] ADD  CONSTRAINT [U_dbo_DocumentosIdentidad_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_EstadosCivil_Sigla]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[EstadosCivil] ADD  CONSTRAINT [U_dbo_EstadosCivil_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_GruposSanguineo_Sigla]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[GruposSanguineo] ADD  CONSTRAINT [U_dbo_GruposSanguineo_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Menus_NombreMenuAplicacionWeb]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [U_dbo_Menus_NombreMenuAplicacionWeb] UNIQUE NONCLUSTERED 
(
	[nombreMenu] ASC,
	[aplicacionWebId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Municipios_CodigoDane]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[Municipios] ADD  CONSTRAINT [U_dbo_Municipios_CodigoDane] UNIQUE NONCLUSTERED 
(
	[codigoDane] ASC,
	[departamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Operaciones_NombreOperacion]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[Operaciones] ADD  CONSTRAINT [U_dbo_Operaciones_NombreOperacion] UNIQUE NONCLUSTERED 
(
	[nombreOperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [U_dbo_OperacionesFormulario_FormularioIdOperacionId]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[OperacionesFormulario] ADD  CONSTRAINT [U_dbo_OperacionesFormulario_FormularioIdOperacionId] UNIQUE NONCLUSTERED 
(
	[formularioId] ASC,
	[operacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Perfiles_NombrePerfil]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[Perfiles] ADD  CONSTRAINT [U_dbo_Perfiles_NombrePerfil] UNIQUE NONCLUSTERED 
(
	[nombrePerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [U_dbo_PerfilesOperacionesFormulario_OperacionFormularioIdPerfilId]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[PerfilesOperacionesFormulario] ADD  CONSTRAINT [U_dbo_PerfilesOperacionesFormulario_OperacionFormularioIdPerfilId] UNIQUE NONCLUSTERED 
(
	[operacionFormularioId] ASC,
	[perfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Personas_NumeroDocumento]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[Personas] ADD  CONSTRAINT [U_dbo_Personas_NumeroDocumento] UNIQUE NONCLUSTERED 
(
	[numeroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_sexos_Sigla]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[Sexos] ADD  CONSTRAINT [U_dbo_sexos_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [U_dbo_Usuarios_NombreUsuario]    Script Date: 22/01/2018 22:56:26 ******/
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [U_dbo_Usuarios_NombreUsuario] UNIQUE NONCLUSTERED 
(
	[nombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [U_dbo_UsuariosOperacionesFormulario_UsuarioIdOperacionFormulario]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_AplicacionesWeb]    Script Date: 22/01/2018 22:56:26 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_AplicacionesWeb]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_AplicacionesWeb]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Barrios]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Barrios]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Barrios]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Departamentos]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Departamentos]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Departamentos]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_DocumentosIdentidad]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_DocumentosIdentidad]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_DocumentosIdentidad]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_EstadosCivil]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_EstadosCivil]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_EstadosCivil]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Formularios]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Formularios]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Formularios]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_GruposSanguineo]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_GruposSanguineo]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_GruposSanguineo]    Script Date: 22/01/2018 22:56:28 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Menus]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Menus]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Menus]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Municipios]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Municipios]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Municipios]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Operaciones]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Operaciones]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Operaciones]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_OperacionesFormulario]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_OperacionesFormulario]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_OperacionesFormulario]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Perfiles]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Perfiles]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Perfiles]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_PerfilesOperacionesFormulario]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_PerfilesOperacionesFormulario]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_PerfilesOperacionesFormulario]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Personas]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Personas]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Personas]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Sexos]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Sexos]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Sexos]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_Usuarios]    Script Date: 22/01/2018 22:56:29 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_Usuarios]    Script Date: 22/01/2018 22:56:30 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_Usuarios]    Script Date: 22/01/2018 22:56:30 ******/
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
/****** Object:  Trigger [dbo].[TR_DELETE_UsuariosOperacionesFormulario]    Script Date: 22/01/2018 22:56:30 ******/
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
/****** Object:  Trigger [dbo].[TR_INSERT_UsuariosOperacionesFormulario]    Script Date: 22/01/2018 22:56:30 ******/
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
/****** Object:  Trigger [dbo].[TR_UPDATE_UsuariosOperacionesFormulario]    Script Date: 22/01/2018 22:56:30 ******/
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
