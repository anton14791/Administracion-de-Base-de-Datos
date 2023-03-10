USE [BD_ALMACEN]
GO
/****** Object:  User [almacen1]    Script Date: 17/09/2022 18:39:32 ******/
CREATE USER [almacen1] FOR LOGIN [almacen1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [almacen2]    Script Date: 17/09/2022 18:39:32 ******/
CREATE USER [almacen2] FOR LOGIN [almacen2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 17/09/2022 18:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NomCategoria] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([IdCategoria], [NomCategoria]) VALUES (1, N'Abarrotes')
INSERT [dbo].[Categoria] ([IdCategoria], [NomCategoria]) VALUES (2, N'Abarrotes')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
