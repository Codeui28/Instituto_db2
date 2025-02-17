USE [Paez_Franco_db2]
GO
/****** Object:  Table [dbo].[tbl_alumnos]    Script Date: 14/6/2024 18:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_alumnos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[dni] [varchar](50) NULL,
	[tipo_doc] [int] NULL,
	[direccion] [varchar](50) NULL,
	[pais] [varchar](50) NULL,
	[provincia] [varchar](50) NULL,
	[localidad] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_alumnos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_cargo]    Script Date: 14/6/2024 18:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cargo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_cargo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_carreras]    Script Date: 14/6/2024 18:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_carreras](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[facultad] [int] NULL,
 CONSTRAINT [PK_tbl_carreras] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_facultad]    Script Date: 14/6/2024 18:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_facultad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[universidad] [int] NULL,
 CONSTRAINT [PK_tbl_facultad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_materias]    Script Date: 14/6/2024 18:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_materias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[carrera] [int] NULL,
 CONSTRAINT [PK_tbl_materias] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_profesor_carga_notas]    Script Date: 14/6/2024 18:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_profesor_carga_notas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profesor] [int] NULL,
	[alumno] [int] NULL,
	[materia] [int] NULL,
	[tipo_examen] [int] NULL,
	[nota] [varchar](50) NULL,
	[fecha] [varchar](50) NULL,
	[libro] [varchar](50) NULL,
	[folio] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_profesor_carga_notas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_profesor_dicta_materias]    Script Date: 14/6/2024 18:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_profesor_dicta_materias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profesor] [int] NULL,
	[carrera] [int] NULL,
	[materia] [int] NULL,
	[cargo] [int] NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [PK_tbl_profesor_dicta_materias] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_profesores]    Script Date: 14/6/2024 18:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_profesores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[nro_dni] [varchar](50) NULL,
	[tipo_doc] [int] NULL,
	[sexo] [int] NULL,
	[titulo] [int] NULL,
 CONSTRAINT [PK_tbl_profesores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_tipo_examen]    Script Date: 14/6/2024 18:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_tipo_examen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_tipo_examen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_universidad]    Script Date: 14/6/2024 18:17:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_universidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_universidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_carreras]  WITH CHECK ADD  CONSTRAINT [FK_tbl_carreras_tbl_facultad] FOREIGN KEY([facultad])
REFERENCES [dbo].[tbl_facultad] ([id])
GO
ALTER TABLE [dbo].[tbl_carreras] CHECK CONSTRAINT [FK_tbl_carreras_tbl_facultad]
GO
ALTER TABLE [dbo].[tbl_facultad]  WITH CHECK ADD  CONSTRAINT [FK_tbl_facultad_tbl_universidad] FOREIGN KEY([universidad])
REFERENCES [dbo].[tbl_universidad] ([id])
GO
ALTER TABLE [dbo].[tbl_facultad] CHECK CONSTRAINT [FK_tbl_facultad_tbl_universidad]
GO
ALTER TABLE [dbo].[tbl_profesor_carga_notas]  WITH CHECK ADD  CONSTRAINT [FK_tbl_profesor_carga_notas_tbl_alumnos] FOREIGN KEY([alumno])
REFERENCES [dbo].[tbl_alumnos] ([id])
GO
ALTER TABLE [dbo].[tbl_profesor_carga_notas] CHECK CONSTRAINT [FK_tbl_profesor_carga_notas_tbl_alumnos]
GO
ALTER TABLE [dbo].[tbl_profesor_carga_notas]  WITH CHECK ADD  CONSTRAINT [FK_tbl_profesor_carga_notas_tbl_materias] FOREIGN KEY([materia])
REFERENCES [dbo].[tbl_materias] ([id])
GO
ALTER TABLE [dbo].[tbl_profesor_carga_notas] CHECK CONSTRAINT [FK_tbl_profesor_carga_notas_tbl_materias]
GO
ALTER TABLE [dbo].[tbl_profesor_carga_notas]  WITH CHECK ADD  CONSTRAINT [FK_tbl_profesor_carga_notas_tbl_profesores] FOREIGN KEY([profesor])
REFERENCES [dbo].[tbl_profesores] ([id])
GO
ALTER TABLE [dbo].[tbl_profesor_carga_notas] CHECK CONSTRAINT [FK_tbl_profesor_carga_notas_tbl_profesores]
GO
ALTER TABLE [dbo].[tbl_profesor_carga_notas]  WITH CHECK ADD  CONSTRAINT [FK_tbl_profesor_carga_notas_tbl_tipo_examen] FOREIGN KEY([tipo_examen])
REFERENCES [dbo].[tbl_tipo_examen] ([id])
GO
ALTER TABLE [dbo].[tbl_profesor_carga_notas] CHECK CONSTRAINT [FK_tbl_profesor_carga_notas_tbl_tipo_examen]
GO
ALTER TABLE [dbo].[tbl_profesor_dicta_materias]  WITH CHECK ADD  CONSTRAINT [FK_tbl_profesor_dicta_materias_tbl_cargo] FOREIGN KEY([cargo])
REFERENCES [dbo].[tbl_cargo] ([id])
GO
ALTER TABLE [dbo].[tbl_profesor_dicta_materias] CHECK CONSTRAINT [FK_tbl_profesor_dicta_materias_tbl_cargo]
GO
ALTER TABLE [dbo].[tbl_profesor_dicta_materias]  WITH CHECK ADD  CONSTRAINT [FK_tbl_profesor_dicta_materias_tbl_carreras] FOREIGN KEY([carrera])
REFERENCES [dbo].[tbl_carreras] ([id])
GO
ALTER TABLE [dbo].[tbl_profesor_dicta_materias] CHECK CONSTRAINT [FK_tbl_profesor_dicta_materias_tbl_carreras]
GO
ALTER TABLE [dbo].[tbl_profesor_dicta_materias]  WITH CHECK ADD  CONSTRAINT [FK_tbl_profesor_dicta_materias_tbl_materias] FOREIGN KEY([materia])
REFERENCES [dbo].[tbl_materias] ([id])
GO
ALTER TABLE [dbo].[tbl_profesor_dicta_materias] CHECK CONSTRAINT [FK_tbl_profesor_dicta_materias_tbl_materias]
GO
ALTER TABLE [dbo].[tbl_profesor_dicta_materias]  WITH CHECK ADD  CONSTRAINT [FK_tbl_profesor_dicta_materias_tbl_profesores] FOREIGN KEY([profesor])
REFERENCES [dbo].[tbl_profesores] ([id])
GO
ALTER TABLE [dbo].[tbl_profesor_dicta_materias] CHECK CONSTRAINT [FK_tbl_profesor_dicta_materias_tbl_profesores]
GO
