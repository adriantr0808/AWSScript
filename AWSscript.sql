/****** Object:  Table [dbo].[RUTAS]    Script Date: 17/05/2022 12:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RUTAS](
	[ID_RUTA] [int] NOT NULL,
	[NUMERO_RUTA] [int] NOT NULL,
	[HORA_SALIDA_IDA] [nvarchar](50) NULL,
	[HORA_LLEGADA_IDA] [nchar](50) NULL,
	[HORA_SALIDA_VUELTA] [nchar](50) NULL,
	[HORA_LLEGADA_VUELTA] [nchar](50) NULL,
	[ORIGEN] [nchar](50) NULL,
	[DESTINO] [nchar](10) NULL,
 CONSTRAINT [PK_RUTAS] PRIMARY KEY CLUSTERED 
(
	[NUMERO_RUTA] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_LISTRUTAS_INDV]    Script Date: 17/05/2022 12:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[V_LISTRUTAS_INDV]
AS
	select CAST(
	row_number() over (order by ID_RUTA) as int)
	as posicion,
	*
	from rutas

GO
/****** Object:  Table [dbo].[BILLETES]    Script Date: 17/05/2022 12:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILLETES](
	[COD_BILLETE] [int] NOT NULL,
	[ORIGEN] [nchar](50) NULL,
	[DESTINO] [nchar](50) NULL,
	[FECHA_IDA] [datetime] NULL,
	[FECHA_VUELTA] [datetime] NULL,
	[PASAJEROS] [int] NULL,
 CONSTRAINT [PK_BILLETES] PRIMARY KEY CLUSTERED 
(
	[COD_BILLETE] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RELACIONES]    Script Date: 17/05/2022 12:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RELACIONES](
	[COD_BILLETE] [int] NULL,
	[NUMERO_RUTA] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 17/05/2022 12:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[ID_USER] [int] NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[PASSWORD] [varbinary](max) NULL,
	[SALT] [nvarchar](50) NULL,
	[IMAGEN] [nvarchar](255) NULL,
	[RUTA] [nvarchar](255) NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[ID_USER] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (0, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-04-08T15:33:47.413' AS DateTime), CAST(N'2022-04-09T15:33:47.413' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (1, N'Cordoba                                           ', N'Albacete                                          ', CAST(N'2022-06-04T00:00:00.000' AS DateTime), CAST(N'2022-06-05T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (2, N'Malaga                                            ', N'Barcelona                                         ', CAST(N'2022-06-04T00:00:00.000' AS DateTime), CAST(N'2022-06-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (3, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-29T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (4, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (5, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-24T00:00:00.000' AS DateTime), CAST(N'2022-01-25T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (6, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-17T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (7, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-31T00:00:00.000' AS DateTime), CAST(N'2022-02-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (8, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2021-12-27T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (9, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-18T00:00:00.000' AS DateTime), CAST(N'2022-01-26T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (10, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-06T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (11, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2021-12-29T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (12, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-22T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (13, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-13T00:00:00.000' AS DateTime), CAST(N'2022-01-10T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (14, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-12T00:00:00.000' AS DateTime), CAST(N'2022-01-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (15, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-20T00:00:00.000' AS DateTime), CAST(N'2022-01-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (16, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-21T00:00:00.000' AS DateTime), CAST(N'2022-01-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (17, N'Cordoba                                           ', N'Málaga                                            ', CAST(N'2022-01-22T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (18, N'Cordoba                                           ', N'Málaga                                            ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (19, N'Cordoba                                           ', N'Málaga                                            ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (20, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-19T00:00:00.000' AS DateTime), CAST(N'2022-02-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (21, N'Cordoba                                           ', N'Asturias                                          ', CAST(N'2022-01-07T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (22, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-29T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (23, N'Madrid                                            ', N'Asturias                                          ', CAST(N'2022-01-19T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (24, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-11T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (25, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-24T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (26, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (27, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-06T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (28, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-17T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (29, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (30, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-28T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (31, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-17T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (32, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-24T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (33, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-17T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (34, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-17T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (35, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-04T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (36, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (37, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-18T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (38, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (39, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (40, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (41, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (42, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (43, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2021-12-27T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (44, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-26T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (45, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-24T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (46, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (47, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (48, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-11T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (49, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2021-12-27T00:00:00.000' AS DateTime), CAST(N'2022-02-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (50, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-18T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (51, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-17T00:00:00.000' AS DateTime), CAST(N'2022-01-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (52, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (53, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (54, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-19T00:00:00.000' AS DateTime), CAST(N'2022-01-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (55, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (56, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (57, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-17T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (58, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (59, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (60, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (61, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-11T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (62, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-17T00:00:00.000' AS DateTime), CAST(N'2022-01-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (63, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-28T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (64, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-20T00:00:00.000' AS DateTime), CAST(N'2022-01-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (65, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (66, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-20T00:00:00.000' AS DateTime), CAST(N'2022-01-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (67, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (68, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (69, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (70, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (71, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (72, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-26T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (73, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-04T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (74, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-03T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (75, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (76, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (77, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (78, N'Madrid                                            ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (79, N'Madrid                                            ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (80, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-04T00:00:00.000' AS DateTime), CAST(N'2022-01-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (81, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-01-10T00:00:00.000' AS DateTime), CAST(N'2022-01-30T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (82, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-01-10T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (83, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (84, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-07T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (85, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-03-10T00:00:00.000' AS DateTime), CAST(N'2022-02-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (86, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-07T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (87, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-08T00:00:00.000' AS DateTime), CAST(N'2022-03-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (88, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (89, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-08T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (90, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (91, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (92, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-07T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (93, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-03-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (94, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-07T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (95, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-28T00:00:00.000' AS DateTime), CAST(N'2022-02-10T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (96, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (97, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-09T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (98, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-07T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (99, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-09T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (100, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-03-03T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (101, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (102, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (103, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (104, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (105, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (106, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (107, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (108, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (109, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (110, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (111, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (112, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (113, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (114, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (115, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (116, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (117, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (118, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-03-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (119, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (120, N'Córdoba                                           ', N'Málaga                                            ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (121, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (122, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-13T00:00:00.000' AS DateTime), CAST(N'2022-03-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (123, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (124, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (125, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-04T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (126, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-09T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (127, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (128, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-14T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (129, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (130, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (131, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (132, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (133, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (134, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (135, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (136, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (137, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-07T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (138, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (139, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (140, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (141, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (142, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (143, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-09T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (144, N'Madrid                                            ', N'Asturias                                          ', CAST(N'2022-02-08T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (145, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (146, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (147, N'Córdoba                                           ', N'Málaga                                            ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (148, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (149, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (150, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (151, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-18T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (152, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-03-04T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (153, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (154, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (155, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-11T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (156, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-26T00:00:00.000' AS DateTime), CAST(N'2022-02-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (157, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-04T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (158, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-11T00:00:00.000' AS DateTime), CAST(N'2022-02-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (159, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (160, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-18T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (161, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-11T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (162, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-06T00:00:00.000' AS DateTime), CAST(N'2022-02-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (163, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (164, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-12T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (165, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (166, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-02T00:00:00.000' AS DateTime), CAST(N'2022-03-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (167, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-02-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (168, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-11T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (169, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (170, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (171, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-17T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (172, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (173, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-11T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (174, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-12T00:00:00.000' AS DateTime), CAST(N'2022-03-06T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (175, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-26T00:00:00.000' AS DateTime), CAST(N'2022-02-19T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (176, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (177, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (178, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (179, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (180, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (181, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-02T00:00:00.000' AS DateTime), CAST(N'2022-03-08T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (182, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (183, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (184, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-03-12T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (185, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (186, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (187, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-03-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (188, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (189, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (190, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (191, N'Córdoba                                           ', N'Málaga                                            ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (192, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-17T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (193, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-03-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (194, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (195, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (196, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (197, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-04T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (198, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (199, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (200, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-24T00:00:00.000' AS DateTime), CAST(N'2022-04-30T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (201, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-03T00:00:00.000' AS DateTime), CAST(N'2022-03-04T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (202, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-03T00:00:00.000' AS DateTime), CAST(N'2022-03-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (203, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (204, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-27T00:00:00.000' AS DateTime), CAST(N'2022-03-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (205, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-26T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (206, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-03T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (207, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (208, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (209, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (210, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (211, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (212, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (213, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (214, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-03-04T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (215, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-26T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (216, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-26T00:00:00.000' AS DateTime), CAST(N'2022-02-27T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (217, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (218, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (219, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (220, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-04T00:00:00.000' AS DateTime), CAST(N'2022-03-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (221, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-03T00:00:00.000' AS DateTime), CAST(N'2022-03-04T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (222, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-04T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (223, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-04T00:00:00.000' AS DateTime), CAST(N'2022-03-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (224, N'Córdoba                                           ', N'Málaga                                            ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-03-06T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (225, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (226, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-03-04T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (227, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (228, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-13T00:00:00.000' AS DateTime), CAST(N'2022-02-17T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (229, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (230, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-27T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (231, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (232, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (233, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (234, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-04T00:00:00.000' AS DateTime), CAST(N'2022-03-12T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (235, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (236, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-26T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (237, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (238, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-19T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (239, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-04T00:00:00.000' AS DateTime), CAST(N'2022-03-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (240, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-19T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (241, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-19T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (242, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (243, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-17T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (244, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (245, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (246, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-03-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (247, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (248, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (249, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-26T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (250, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2023-01-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (251, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (252, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(N'2022-03-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (253, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-03-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (254, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-19T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (255, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-03T00:00:00.000' AS DateTime), CAST(N'2022-02-17T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (256, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (257, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-17T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (258, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-09T00:00:00.000' AS DateTime), CAST(N'2022-02-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (259, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (260, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-18T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (261, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-26T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (262, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (263, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (264, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (265, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-27T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (266, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-10T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (267, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-12T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (268, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-03-03T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (269, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (270, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (271, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (272, N'Córdoba                                           ', N'Málaga                                            ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (273, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (274, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (275, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (276, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (277, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (278, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-03-04T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (279, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (280, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (281, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-10T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (282, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-17T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (283, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (284, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (285, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-02T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (286, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-03T00:00:00.000' AS DateTime), CAST(N'2022-02-22T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (287, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (288, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-02-17T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (289, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-02-27T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (290, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-13T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (291, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-17T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (292, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-26T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (293, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-05T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (294, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-27T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (295, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-10T00:00:00.000' AS DateTime), CAST(N'2022-02-19T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (296, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (297, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-12T00:00:00.000' AS DateTime), CAST(N'2022-02-12T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (298, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-12T00:00:00.000' AS DateTime), CAST(N'2022-02-12T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (299, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-26T00:00:00.000' AS DateTime), CAST(N'2022-03-04T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (300, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-19T00:00:00.000' AS DateTime), CAST(N'2022-02-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (301, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-11T00:00:00.000' AS DateTime), CAST(N'2022-02-18T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (302, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (303, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-12T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (304, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-03-05T00:00:00.000' AS DateTime), CAST(N'2022-02-12T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (305, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-09T00:00:00.000' AS DateTime), CAST(N'2022-02-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (306, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-23T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (307, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (308, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (309, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-19T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (310, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-02-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (311, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-27T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (312, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (313, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (314, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-16T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (315, N'Madrid                                            ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (316, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-22T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (317, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (318, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2022-02-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (319, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (320, N'Córdoba                                           ', N'Málaga                                            ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (321, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-24T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (322, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (323, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (324, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (325, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-26T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (326, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-02-23T00:00:00.000' AS DateTime), CAST(N'2022-02-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (327, N'Córdoba                                           ', N'Málaga                                            ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-23T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (328, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-18T00:00:00.000' AS DateTime), CAST(N'2022-04-20T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (329, N'Madrid                                            ', N'Asturias                                          ', CAST(N'2022-04-21T00:00:00.000' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (330, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-11T00:00:00.000' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (331, N'Madrid                                            ', N'Málaga                                            ', CAST(N'2022-04-06T00:00:00.000' AS DateTime), CAST(N'2022-07-04T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (332, N'string                                            ', N'string                                            ', CAST(N'2022-04-08T15:38:02.337' AS DateTime), CAST(N'2022-04-09T15:38:02.337' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (333, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-13T00:00:00.000' AS DateTime), CAST(N'2022-04-30T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (334, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (335, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (336, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (337, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (338, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (339, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (340, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (341, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (342, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (343, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-05-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (344, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (345, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-04-30T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (346, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (347, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-13T00:00:00.000' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (348, N'string                                            ', N'string                                            ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (349, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-13T00:00:00.000' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (350, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-13T00:00:00.000' AS DateTime), CAST(N'2022-04-30T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (351, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-21T00:00:00.000' AS DateTime), CAST(N'2022-04-23T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (352, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-28T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (353, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-28T00:00:00.000' AS DateTime), CAST(N'2022-04-29T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (354, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-25T00:00:00.000' AS DateTime), CAST(N'2022-04-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (355, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-25T00:00:00.000' AS DateTime), CAST(N'2022-04-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (356, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (357, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (358, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-15T00:00:00.000' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (359, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (360, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (361, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (362, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-29T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (363, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (364, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-23T00:00:00.000' AS DateTime), CAST(N'2022-04-23T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (366, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-13T00:00:00.000' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (367, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-13T00:00:00.000' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (368, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-13T00:00:00.000' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (369, N'Madrid                                            ', N'Asturias                                          ', CAST(N'2022-04-13T00:00:00.000' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (370, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-20T00:00:00.000' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (371, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-14T00:00:00.000' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (372, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-20T00:00:00.000' AS DateTime), CAST(N'2022-04-29T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (373, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-20T00:00:00.000' AS DateTime), CAST(N'2022-05-06T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (374, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-20T00:00:00.000' AS DateTime), CAST(N'2022-04-21T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (375, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-20T00:00:00.000' AS DateTime), CAST(N'2022-04-23T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (376, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-21T00:00:00.000' AS DateTime), CAST(N'2022-05-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (377, N'Córdoba                                           ', N'Málaga                                            ', CAST(N'2022-04-21T00:00:00.000' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (378, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-21T00:00:00.000' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (379, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-23T00:00:00.000' AS DateTime), CAST(N'2022-04-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (380, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-29T00:00:00.000' AS DateTime), CAST(N'2022-04-30T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (381, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-21T00:00:00.000' AS DateTime), CAST(N'2022-04-22T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (382, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-22T00:00:00.000' AS DateTime), CAST(N'2022-04-29T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (383, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-22T00:00:00.000' AS DateTime), CAST(N'2022-05-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (384, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-22T00:00:00.000' AS DateTime), CAST(N'2022-04-21T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[BILLETES] ([COD_BILLETE], [ORIGEN], [DESTINO], [FECHA_IDA], [FECHA_VUELTA], [PASAJEROS]) VALUES (385, N'Córdoba                                           ', N'Asturias                                          ', CAST(N'2022-04-16T00:00:00.000' AS DateTime), CAST(N'2022-04-21T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (97, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (274, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (100, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (103, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (104, 185)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (275, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (107, 145)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (110, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (111, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (122, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (140, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (142, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (147, 160)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (148, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (149, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (150, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (151, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (156, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (157, 185)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (158, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (159, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (161, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (162, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (163, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (164, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (166, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (167, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (175, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (176, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (177, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (178, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (179, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (181, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (191, 160)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (192, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (193, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (203, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (204, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (206, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (207, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (208, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (209, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (221, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (222, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (223, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (224, 160)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (225, 145)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (226, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (227, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (228, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (229, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (230, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (244, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (245, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (250, 185)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (256, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (261, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (262, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (263, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (264, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (265, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (266, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (280, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (286, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (289, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (293, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (294, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (295, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (296, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (297, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (298, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (299, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (300, 185)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (301, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (302, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (303, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (307, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (308, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (309, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (310, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (312, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (316, 145)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (318, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (320, 160)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (321, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (322, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (323, 150)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (324, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (326, 145)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (328, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (329, 165)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (356, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (369, 165)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (370, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (371, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (376, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (378, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (381, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (382, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (383, 175)
GO
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (139, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (146, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (152, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (155, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (165, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (168, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (169, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (170, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (171, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (172, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (173, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (183, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (195, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (198, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (199, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (200, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (201, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (202, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (210, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (211, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (212, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (213, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (214, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (215, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (216, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (217, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (218, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (219, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (220, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (232, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (233, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (234, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (235, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (236, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (237, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (238, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (239, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (240, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (241, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (246, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (247, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (248, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (251, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (252, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (253, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (255, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (257, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (258, 185)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (273, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (279, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (281, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (284, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (305, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (306, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (330, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (380, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (154, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (174, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (194, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (196, 185)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (231, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (242, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (243, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (260, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (384, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (385, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (268, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (270, 195)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (272, 160)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (292, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (304, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (314, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (360, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (372, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (373, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (374, 180)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (375, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (377, 160)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (311, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (333, 170)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (358, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (359, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (364, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (362, 175)
INSERT [dbo].[RELACIONES] ([COD_BILLETE], [NUMERO_RUTA]) VALUES (379, 175)
GO
INSERT [dbo].[RUTAS] ([ID_RUTA], [NUMERO_RUTA], [HORA_SALIDA_IDA], [HORA_LLEGADA_IDA], [HORA_SALIDA_VUELTA], [HORA_LLEGADA_VUELTA], [ORIGEN], [DESTINO]) VALUES (1, 145, N'10:30', N'13:30                                             ', N'11:30                                             ', N'14:30                                             ', N'Madrid                                            ', N'Málaga    ')
INSERT [dbo].[RUTAS] ([ID_RUTA], [NUMERO_RUTA], [HORA_SALIDA_IDA], [HORA_LLEGADA_IDA], [HORA_SALIDA_VUELTA], [HORA_LLEGADA_VUELTA], [ORIGEN], [DESTINO]) VALUES (2, 150, N'11:30', N'14:30                                             ', N'12:30                                             ', N'15:30                                             ', N'Madrid                                            ', N'Málaga    ')
INSERT [dbo].[RUTAS] ([ID_RUTA], [NUMERO_RUTA], [HORA_SALIDA_IDA], [HORA_LLEGADA_IDA], [HORA_SALIDA_VUELTA], [HORA_LLEGADA_VUELTA], [ORIGEN], [DESTINO]) VALUES (4, 160, N'9:00', N'10:51                                             ', N'11:00                                             ', N'12:51                                             ', N'Córdoba                                           ', N'Málaga    ')
INSERT [dbo].[RUTAS] ([ID_RUTA], [NUMERO_RUTA], [HORA_SALIDA_IDA], [HORA_LLEGADA_IDA], [HORA_SALIDA_VUELTA], [HORA_LLEGADA_VUELTA], [ORIGEN], [DESTINO]) VALUES (5, 165, N'10:00', N'15:13                                             ', N'11:00                                             ', N'16:20                                             ', N'Madrid                                            ', N'Asturias  ')
INSERT [dbo].[RUTAS] ([ID_RUTA], [NUMERO_RUTA], [HORA_SALIDA_IDA], [HORA_LLEGADA_IDA], [HORA_SALIDA_VUELTA], [HORA_LLEGADA_VUELTA], [ORIGEN], [DESTINO]) VALUES (6, 170, N'9:30', N'18:47                                             ', N'9:30                                              ', N'18:47                                             ', N'Córdoba                                           ', N'Asturias  ')
INSERT [dbo].[RUTAS] ([ID_RUTA], [NUMERO_RUTA], [HORA_SALIDA_IDA], [HORA_LLEGADA_IDA], [HORA_SALIDA_VUELTA], [HORA_LLEGADA_VUELTA], [ORIGEN], [DESTINO]) VALUES (7, 175, N'10:00', N'19:23                                             ', N'7:30                                              ', N'16:35                                             ', N'Córdoba                                           ', N'Asturias  ')
INSERT [dbo].[RUTAS] ([ID_RUTA], [NUMERO_RUTA], [HORA_SALIDA_IDA], [HORA_LLEGADA_IDA], [HORA_SALIDA_VUELTA], [HORA_LLEGADA_VUELTA], [ORIGEN], [DESTINO]) VALUES (8, 180, N'9:30', N'18:47                                             ', N'7:30                                              ', N'16:35                                             ', N'Córdoba                                           ', N'Asturias  ')
INSERT [dbo].[RUTAS] ([ID_RUTA], [NUMERO_RUTA], [HORA_SALIDA_IDA], [HORA_LLEGADA_IDA], [HORA_SALIDA_VUELTA], [HORA_LLEGADA_VUELTA], [ORIGEN], [DESTINO]) VALUES (9, 185, N'10:00', N'19:23                                             ', N'9:30                                              ', N'18:47                                             ', N'Córdoba                                           ', N'Asturias  ')
INSERT [dbo].[RUTAS] ([ID_RUTA], [NUMERO_RUTA], [HORA_SALIDA_IDA], [HORA_LLEGADA_IDA], [HORA_SALIDA_VUELTA], [HORA_LLEGADA_VUELTA], [ORIGEN], [DESTINO]) VALUES (10, 190, N'10:30', N'13:33                                             ', N'12:30                                             ', N'15:41                                             ', N'Madrid                                            ', N'Málaga    ')
INSERT [dbo].[RUTAS] ([ID_RUTA], [NUMERO_RUTA], [HORA_SALIDA_IDA], [HORA_LLEGADA_IDA], [HORA_SALIDA_VUELTA], [HORA_LLEGADA_VUELTA], [ORIGEN], [DESTINO]) VALUES (11, 195, N'11:30', N'14:30                                             ', N'11:30                                             ', N'14:30                                             ', N'Madrid                                            ', N'Málaga    ')
GO
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (1, N'ADMIN', N'admin@gmail.com', 0x51E6F6D4CB6505B2665CA608C6587BF879DDA70EFE416B5B4F1634843199B83A, N'Ëi^vl~ºOÞµZÏS59î8¦÷Æ�*?Ëõ;±§N§°þ(X_d2{©²', NULL, NULL)
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (2, N'AdrianPrueba', N'Adrian@gmail.com', 0xC04B2165185E1D61A934BB7D2E0FB38044E5EABE02F538120B045ACDC9B5FC57, N'SP¸
×3nçr¥_U¬w¡ê¤>Ð~,]+æùÚ²ñ95ï=Õ#c«ýT½Íè2S', NULL, NULL)
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (3, N'Adrian', N'adriantr@gmail.com', 0x0391C6B3740DF073E4794E465AE18AF24CB9506E8EA787E7C27639A7DF45D363, N'>ªíQsêIOG:� oDÍ¹Ãë¹¾$]u¤¢ò½Í¦j¦£P3ÌxÀá', NULL, NULL)
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (4, N'Adriandemo', N'adriandemo@gmail.com', 0x8DEB39FF97ADF525A9E2FEDD61C8D883C5A3CE1E7E70EF58BD29E9D2B0D95906, N'«öJ½�¤àøò-¦â¤RH­89AïËzRbuÐjÚÑE
na¸t', NULL, NULL)
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (5, N'DEMO', N'demo@gmail.com', 0x7D31D6889697000AD9AD23709B12E7DC249AF093C5A789CE39A91F3D8BD009C9, N'ÝÌMLrí)õ3^H·PÜÇÂ	§ÜýZÂ³D)­x°ùúP½æ¤«g­¡Ø!', NULL, NULL)
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (6, N'api', N'api@gmail.com', 0x53DC5BB51351C4B2C40B8BC3E2896BC459900C45FD96550A36A16F736E27FF08, N'¹¢øSkÜûüðÝA4Íâg"Vúú.£òÌ¨ª|kºMqoÞ¿''Hb', NULL, NULL)
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (9, N'prueba', N'insomnia3@gmail.com', 0x035D5B579A88A1FC2BD6192B975096CA3D8387B1622F3DA568894760D2E61BE6, N'pH¢¯_·ü¨­jöoQE^YÉÇÝ
NÏ±ßÓ
#MÝ~ÍçÚõ¥tw¥ü
r«òÕ', NULL, NULL)
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (10, N'asdf', N'asdf@gmail.com', 0xD823F0CC0B15948EBB0D104F1C537FB80A2D733B518CCA89A6F67D7025CAC252, N' {Æá"$XOO½+¢¦3 ×vxpKgkB´õóCçÙ&|é¼pÎå ', N'bootstrap-stack.png', N'https://storagetajamarart.blob.core.windows.net/viajes-container/bootstrap-stack.png')
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (11, N'icono', N'icono@gmail.com', 0xE3EB25D37CD2F169F9E4B21346B2EF3ABA7A569806D858DB09B330BA6B994753, N'ÈA(­8+bÉ:¾¢°s1P@Ôz­9|Qw@ÏagÛªêËoþ', N'35137722.png', N'https://storagetajamarart.blob.core.windows.net/viajes-container/35137722.png')
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (12, N'angular', N'angular@gmail.com', 0x95DE87C5612E85A7FAEE23F7D593F4CD051D5325586712B8F2C1D946435B17A2, N'ò.ßöV(¸Hè¼ë1|hAåÀ¹0)ñ32=�ëÐðÍ®Ný
>', N'logo.png', N'https://storagetajamarart.blob.core.windows.net/viajes-container/logo.png')
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (13, N'probando123', N'123@gmail.com', 0x529DD14C371BE63B5E7BC12849EADB8E099EB6F7DD31FDDE8B5F9F9A1702EED9, N'4ûá7ü÷ÈÖPG[ ¾w±Qñf} *�:`¯vêõ!2jÆ/Ï�%', N'solucion.JPG', N'https://storagetajamarart.blob.core.windows.net/viajes-container/solucion.JPG')
INSERT [dbo].[USERS] ([ID_USER], [NAME], [EMAIL], [PASSWORD], [SALT], [IMAGEN], [RUTA]) VALUES (14, N'saw', N'saw@gmail.com', 0xF27C4BC5AF4F3EDAFF575D37231539BAE4C40742CB303ACD5BBCE86EE29A95D5, N'àà&VÔCàkp"äª¼ÌcÑ¤Äê½¤ÏÆEãl.²=¥SÒ¥', N'saw.jpg', N'https://storagetajamarart.blob.core.windows.net/viajes-container/saw.jpg')
GO
ALTER TABLE [dbo].[RELACIONES]  WITH CHECK ADD  CONSTRAINT [FK_RELACIONES_BILLETES] FOREIGN KEY([COD_BILLETE])
REFERENCES [dbo].[BILLETES] ([COD_BILLETE])
GO
ALTER TABLE [dbo].[RELACIONES] CHECK CONSTRAINT [FK_RELACIONES_BILLETES]
GO
ALTER TABLE [dbo].[RELACIONES]  WITH CHECK ADD  CONSTRAINT [FK_RELACIONES_RUTAS] FOREIGN KEY([NUMERO_RUTA])
REFERENCES [dbo].[RUTAS] ([NUMERO_RUTA])
GO
ALTER TABLE [dbo].[RELACIONES] CHECK CONSTRAINT [FK_RELACIONES_RUTAS]
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERT_BILLETES]    Script Date: 17/05/2022 12:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_INSERT_BILLETES]
(@ORIGEN nvarchar(50), @DESTINO nvarchar(50), @FECHAIDA DateTime, @FECHAVUELTA DateTime, @PASAJEROS int)
as
declare @maxid int
select @maxid = MAX(cod_billete)+1 from BILLETES
insert into BILLETES values(@maxid,@ORIGEN,@DESTINO,@FECHAIDA,@FECHAVUELTA,@PASAJEROS	)

GO
/****** Object:  StoredProcedure [dbo].[SP_INSERT_RELACIONES]    Script Date: 17/05/2022 12:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_INSERT_RELACIONES]
(@CODBILLETE int, @NUMERORUTA int)
as


insert into RELACIONES values(@CODBILLETE, @NUMERORUTA)

GO
/****** Object:  StoredProcedure [dbo].[SP_INSERT_USER]    Script Date: 17/05/2022 12:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERT_USER]
(@NAME nvarchar(50),@CORREO nvarchar(50),@PASSWORD nvarchar(50))
as
insert into USERS values((select MAX(id_user)+1 from USERS), @NAME,@CORREO,@PASSWORD)

GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_RUTAS]    Script Date: 17/05/2022 12:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_INSERTAR_RUTAS]
@HSI nvarchar(50), @HLI  nvarchar(50), @HSV nvarchar(50), @HLV nvarchar(50), @O  nvarchar(50), @D  nvarchar(50)
as

insert into  RUTAS values((select max(id_ruta)+1 from rutas),(select max(NUMERO_RUTA)+5  from rutas),@HSI,@HLI,@HSV,@HLV,@O,@D)
GO
/****** Object:  StoredProcedure [dbo].[SP_PAGINARRUTAS]    Script Date: 17/05/2022 12:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE procedure [dbo].[SP_PAGINARRUTAS]
	(@POSICION INT, @registros int out)
	as

	select @registros = count(id_ruta) from V_LISTRUTAS_INDV

	select * from V_LISTRUTAS_INDV where posicion >= @POSICION
	and posicion < (@POSICION +8);
GO






CREATE TABLE `RUTAS`(
	`ID_RUTA` int NOT NULL,
	`NUMERO_RUTA` int NOT NULL,
	`HORA_SALIDA_IDA` varchar(50) NULL,
	`HORA_LLEGADA_IDA` varchar(50) NULL,
	`HORA_SALIDA_VUELTA` varchar(50) NULL,
	`HORA_LLEGADA_VUELTA` varchar(50) NULL,
	`ORIGEN` varchar(50) NULL,
	`DESTINO` varchar(10) NULL,
 CONSTRAINT `PK_RUTAS` PRIMARY KEY 
(
	`NUMERO_RUTA` ASC
)
)
;

CREATE TABLE `USERS`(
	`ID_USER` int NOT NULL,
	`NAME` varchar(50) NULL,
	`EMAIL` varchar(50) NULL,
	`PASSWORD` blob (255) NULL,
	`SALT` varchar(50) NULL,
	`IMAGEN` varchar(255) NULL,
	`RUTA` varchar(255) NULL,
 CONSTRAINT `PK_USERS` PRIMARY KEY 
(
	`ID_USER` ASC
)
)
;


CREATE TABLE `BILLETES`(
	`COD_BILLETE` int NOT NULL,
	`ORIGEN` `varchar(50) NULL,
	`DESTINO` `varchar(50) NULL,
	`FECHA_IDA` datetime NULL,
	`FECHA_VUELTA` datetime NULL,
	`PASAJEROS` int NULL,
 CONSTRAINT `PK_BILLETES` PRIMARY KEY 
(
	`COD_BILLETE` ASC
)
)
;


CREATE TABLE `RELACIONES`(
	`COD_BILLETE` int NULL,
	`NUMERO_RUTA` int NULL
)
;
