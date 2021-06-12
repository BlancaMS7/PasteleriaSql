USE [master]
GO
/****** Object:  Database [PasteleriaSql]    Script Date: 12/06/2021 4:27:05 ******/
CREATE DATABASE [PasteleriaSql]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PasteleriaSql', FILENAME = N'D:\sql server\sql serv express\MSSQL15.SQLEXPRESS\MSSQL\DATA\PasteleriaSql.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PasteleriaSql_log', FILENAME = N'D:\sql server\sql serv express\MSSQL15.SQLEXPRESS\MSSQL\DATA\PasteleriaSql_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PasteleriaSql] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PasteleriaSql].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PasteleriaSql] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PasteleriaSql] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PasteleriaSql] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PasteleriaSql] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PasteleriaSql] SET ARITHABORT OFF 
GO
ALTER DATABASE [PasteleriaSql] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PasteleriaSql] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PasteleriaSql] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PasteleriaSql] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PasteleriaSql] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PasteleriaSql] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PasteleriaSql] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PasteleriaSql] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PasteleriaSql] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PasteleriaSql] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PasteleriaSql] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PasteleriaSql] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PasteleriaSql] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PasteleriaSql] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PasteleriaSql] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PasteleriaSql] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PasteleriaSql] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PasteleriaSql] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PasteleriaSql] SET  MULTI_USER 
GO
ALTER DATABASE [PasteleriaSql] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PasteleriaSql] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PasteleriaSql] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PasteleriaSql] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PasteleriaSql] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PasteleriaSql] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PasteleriaSql] SET QUERY_STORE = OFF
GO
USE [PasteleriaSql]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 12/06/2021 4:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombreCliente] [varchar](100) NULL,
	[direccionCliente] [varchar](100) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consumiciones]    Script Date: 12/06/2021 4:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumiciones](
	[idConsumicion] [int] IDENTITY(1,1) NOT NULL,
	[cantidadConsumicion] [int] NULL,
	[PrecioConsumicion] [varchar](50) NULL,
	[idClienteFk5] [int] NULL,
	[idTrabajadorFk6] [int] NULL,
 CONSTRAINT [PK_Consumiciones_1] PRIMARY KEY CLUSTERED 
(
	[idConsumicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Encargos]    Script Date: 12/06/2021 4:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Encargos](
	[IdEncargo] [int] IDENTITY(1,1) NOT NULL,
	[cantidadEncargo] [int] NULL,
	[DireccionEncargo] [varchar](100) NULL,
 CONSTRAINT [PK_Encargos] PRIMARY KEY CLUSTERED 
(
	[IdEncargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jefe]    Script Date: 12/06/2021 4:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jefe](
	[IdJefe] [int] IDENTITY(1,1) NOT NULL,
	[nombreJefe] [varchar](50) NULL,
 CONSTRAINT [PK_Jefe] PRIMARY KEY CLUSTERED 
(
	[IdJefe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pasteleros]    Script Date: 12/06/2021 4:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasteleros](
	[idPastelero] [int] IDENTITY(1,1) NOT NULL,
	[nombrePastelero] [varchar](100) NULL,
	[direccionPastelero] [varchar](100) NULL,
	[idTrabajadorFk2] [int] NULL,
 CONSTRAINT [PK_Pasteleros] PRIMARY KEY CLUSTERED 
(
	[idPastelero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repartidores]    Script Date: 12/06/2021 4:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repartidores](
	[idRepartidor] [int] IDENTITY(1,1) NOT NULL,
	[nombreRepartidor] [varchar](100) NULL,
	[direccionRepartidor] [varchar](100) NULL,
	[idTrabajadorFk3] [int] NULL,
	[idEncargoFk4] [int] NULL,
 CONSTRAINT [PK_Repartidores] PRIMARY KEY CLUSTERED 
(
	[idRepartidor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 12/06/2021 4:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajadores](
	[idTrabajador] [int] IDENTITY(1,1) NOT NULL,
	[nombreTrabajador] [varchar](100) NULL,
	[direccionTrabajador] [varchar](100) NULL,
	[idJefeFk1] [int] NULL,
 CONSTRAINT [PK_Trabajadores] PRIMARY KEY CLUSTERED 
(
	[idTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 
GO
INSERT [dbo].[Clientes] ([idCliente], [nombreCliente], [direccionCliente]) VALUES (1, N'Alvaro Garcia', N'Calle del Pescado 21 4B')
GO
INSERT [dbo].[Clientes] ([idCliente], [nombreCliente], [direccionCliente]) VALUES (2, N'Miguel Gonzalez', N'Avenida desengaño 23')
GO
INSERT [dbo].[Clientes] ([idCliente], [nombreCliente], [direccionCliente]) VALUES (3, N'Ana Blanco', N'Calle Andalucia 65')
GO
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Consumiciones] ON 
GO
INSERT [dbo].[Consumiciones] ([idConsumicion], [cantidadConsumicion], [PrecioConsumicion], [idClienteFk5], [idTrabajadorFk6]) VALUES (1, 12, N'20', 1, 2)
GO
INSERT [dbo].[Consumiciones] ([idConsumicion], [cantidadConsumicion], [PrecioConsumicion], [idClienteFk5], [idTrabajadorFk6]) VALUES (2, 20, N'40', 2, 3)
GO
INSERT [dbo].[Consumiciones] ([idConsumicion], [cantidadConsumicion], [PrecioConsumicion], [idClienteFk5], [idTrabajadorFk6]) VALUES (3, 1, N'30', 3, 1)
GO
SET IDENTITY_INSERT [dbo].[Consumiciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Encargos] ON 
GO
INSERT [dbo].[Encargos] ([IdEncargo], [cantidadEncargo], [DireccionEncargo]) VALUES (1, 20, N'Calle del Pescado 21 4B')
GO
INSERT [dbo].[Encargos] ([IdEncargo], [cantidadEncargo], [DireccionEncargo]) VALUES (2, 2, N'Urbanizacion Alambique II 209')
GO
SET IDENTITY_INSERT [dbo].[Encargos] OFF
GO
SET IDENTITY_INSERT [dbo].[Jefe] ON 
GO
INSERT [dbo].[Jefe] ([IdJefe], [nombreJefe]) VALUES (1, N'Carlos Martinez')
GO
SET IDENTITY_INSERT [dbo].[Jefe] OFF
GO
SET IDENTITY_INSERT [dbo].[Pasteleros] ON 
GO
INSERT [dbo].[Pasteleros] ([idPastelero], [nombrePastelero], [direccionPastelero], [idTrabajadorFk2]) VALUES (1, N'Maria Gomez', N'Urbanizacion Los girasoles 24', 1)
GO
INSERT [dbo].[Pasteleros] ([idPastelero], [nombrePastelero], [direccionPastelero], [idTrabajadorFk2]) VALUES (2, N'Alberto Ramirez', N'Avenida San Sebastian 29 1B', 2)
GO
INSERT [dbo].[Pasteleros] ([idPastelero], [nombrePastelero], [direccionPastelero], [idTrabajadorFk2]) VALUES (3, N'Laura Sanchez', N'Calle Salvador Dalí', 3)
GO
SET IDENTITY_INSERT [dbo].[Pasteleros] OFF
GO
SET IDENTITY_INSERT [dbo].[Repartidores] ON 
GO
INSERT [dbo].[Repartidores] ([idRepartidor], [nombreRepartidor], [direccionRepartidor], [idTrabajadorFk3], [idEncargoFk4]) VALUES (1, N'Macarena Alvarez', N'Calle Lavanda 87', NULL, NULL)
GO
INSERT [dbo].[Repartidores] ([idRepartidor], [nombreRepartidor], [direccionRepartidor], [idTrabajadorFk3], [idEncargoFk4]) VALUES (2, N'Jaime Rodriguez', N'Avenida San Francisco 5 12B', NULL, NULL)
GO
INSERT [dbo].[Repartidores] ([idRepartidor], [nombreRepartidor], [direccionRepartidor], [idTrabajadorFk3], [idEncargoFk4]) VALUES (3, N'Sara Sanchez', N'Avenida de Marruecos 18 10A', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Repartidores] OFF
GO
SET IDENTITY_INSERT [dbo].[Trabajadores] ON 
GO
INSERT [dbo].[Trabajadores] ([idTrabajador], [nombreTrabajador], [direccionTrabajador], [idJefeFk1]) VALUES (1, N'Pepe Perez', N'calle Pablo Picasso 34', 1)
GO
INSERT [dbo].[Trabajadores] ([idTrabajador], [nombreTrabajador], [direccionTrabajador], [idJefeFk1]) VALUES (2, N'Antonio Sanchez', N'calle Diego Velázquez 43', 1)
GO
INSERT [dbo].[Trabajadores] ([idTrabajador], [nombreTrabajador], [direccionTrabajador], [idJefeFk1]) VALUES (3, N'Ana Martinez', N'Avenida Juan Gris 23B', 1)
GO
SET IDENTITY_INSERT [dbo].[Trabajadores] OFF
GO
ALTER TABLE [dbo].[Consumiciones]  WITH CHECK ADD  CONSTRAINT [FK_Consumiciones_Trabajadores] FOREIGN KEY([idTrabajadorFk6])
REFERENCES [dbo].[Trabajadores] ([idTrabajador])
GO
ALTER TABLE [dbo].[Consumiciones] CHECK CONSTRAINT [FK_Consumiciones_Trabajadores]
GO
ALTER TABLE [dbo].[Pasteleros]  WITH CHECK ADD  CONSTRAINT [FK_Pasteleros_Trabajadores] FOREIGN KEY([idTrabajadorFk2])
REFERENCES [dbo].[Trabajadores] ([idTrabajador])
GO
ALTER TABLE [dbo].[Pasteleros] CHECK CONSTRAINT [FK_Pasteleros_Trabajadores]
GO
ALTER TABLE [dbo].[Repartidores]  WITH CHECK ADD  CONSTRAINT [FK_Repartidores_Encargos] FOREIGN KEY([idEncargoFk4])
REFERENCES [dbo].[Encargos] ([IdEncargo])
GO
ALTER TABLE [dbo].[Repartidores] CHECK CONSTRAINT [FK_Repartidores_Encargos]
GO
ALTER TABLE [dbo].[Trabajadores]  WITH CHECK ADD  CONSTRAINT [FK_Trabajadores_Jefe] FOREIGN KEY([idJefeFk1])
REFERENCES [dbo].[Jefe] ([IdJefe])
GO
ALTER TABLE [dbo].[Trabajadores] CHECK CONSTRAINT [FK_Trabajadores_Jefe]
GO
USE [master]
GO
ALTER DATABASE [PasteleriaSql] SET  READ_WRITE 
GO
