USE [Molde]
GO
/****** Object:  Table [dbo].[AplicacionesWeb]    Script Date: 11/12/2017 9:44:19 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_AplicacionesWeb_Nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 11/12/2017 9:44:19 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_Barrios_Municipios_NombreMunicipioId] UNIQUE NONCLUSTERED 
(
	[nombre] ASC,
	[municipioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ControlAplicacion]    Script Date: 11/12/2017 9:44:19 ******/
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
/****** Object:  Table [dbo].[Departamentos]    Script Date: 11/12/2017 9:44:19 ******/
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
 CONSTRAINT [PK_Departamentos_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Departamentos_Nombre] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentosIdentidad]    Script Date: 11/12/2017 9:44:19 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_DocumentosIdentidad_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadosCivil]    Script Date: 11/12/2017 9:44:19 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_EstadosCivil_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 11/12/2017 9:44:19 ******/
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
 CONSTRAINT [PK_Formularios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GruposSanguineo]    Script Date: 11/12/2017 9:44:19 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_GruposSanguineo_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 11/12/2017 9:44:19 ******/
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 11/12/2017 9:44:19 ******/
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
 CONSTRAINT [PK_Municipios_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Municipios_MunicipioDepartamentoId] UNIQUE NONCLUSTERED 
(
	[nombre] ASC,
	[departamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Operaciones]    Script Date: 11/12/2017 9:44:19 ******/
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OperacionesFormulario]    Script Date: 11/12/2017 9:44:19 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_OperacionesFormulario_FormularioIdOperacionId] UNIQUE NONCLUSTERED 
(
	[formularioId] ASC,
	[operacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 11/12/2017 9:44:19 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Perfiles_NombrePerfil] UNIQUE NONCLUSTERED 
(
	[nombrePerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PerfilesOperacionesFormulario]    Script Date: 11/12/2017 9:44:19 ******/
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
/****** Object:  Table [dbo].[Personas]    Script Date: 11/12/2017 9:44:19 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Personas_NumeroDocumento] UNIQUE NONCLUSTERED 
(
	[numeroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sexos]    Script Date: 11/12/2017 9:44:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sexos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sigla] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[usuarioId] [int] NOT NULL,
 CONSTRAINT [PK_sexos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_sexos_Sigla] UNIQUE NONCLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/12/2017 9:44:19 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_dbo_Usuarios_NombreUsuario] UNIQUE NONCLUSTERED 
(
	[nombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuariosOperacionesFormulario]    Script Date: 11/12/2017 9:44:19 ******/
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
GO
ALTER TABLE [dbo].[OperacionesFormulario] CHECK CONSTRAINT [FK_OperacionesFormulario_Formularios]
GO
ALTER TABLE [dbo].[OperacionesFormulario]  WITH CHECK ADD  CONSTRAINT [FK_OperacionesFormulario_Operaciones] FOREIGN KEY([operacionId])
REFERENCES [dbo].[Operaciones] ([id])
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
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_sexos] FOREIGN KEY([sexoId])
REFERENCES [dbo].[sexos] ([id])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_sexos]
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
GO
ALTER TABLE [dbo].[UsuariosOperacionesFormulario] CHECK CONSTRAINT [FK_UsuariosOperacionesFormulario_OperacionesFormulario]
GO
ALTER TABLE [dbo].[UsuariosOperacionesFormulario]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosOperacionesFormulario_Usuarios] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[Usuarios] ([id])
GO
ALTER TABLE [dbo].[UsuariosOperacionesFormulario] CHECK CONSTRAINT [FK_UsuariosOperacionesFormulario_Usuarios]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo para indicar si en el menu se debe visualizar o no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Formularios', @level2type=N'COLUMN',@level2name=N'esVisible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'El nombre de Usuario debe ser el correo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuarios', @level2type=N'COLUMN',@level2name=N'nombreUsuario'
GO
