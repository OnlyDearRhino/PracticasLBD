USE [master]
GO
/****** Object:  Database [Consultorio]    Script Date: 4/14/2020 5:36:12 PM ******/
CREATE DATABASE [Consultorio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Consultorio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Consultorio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Consultorio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Consultorio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Consultorio] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Consultorio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Consultorio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Consultorio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Consultorio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Consultorio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Consultorio] SET ARITHABORT OFF 
GO
ALTER DATABASE [Consultorio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Consultorio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Consultorio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Consultorio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Consultorio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Consultorio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Consultorio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Consultorio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Consultorio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Consultorio] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Consultorio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Consultorio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Consultorio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Consultorio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Consultorio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Consultorio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Consultorio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Consultorio] SET RECOVERY FULL 
GO
ALTER DATABASE [Consultorio] SET  MULTI_USER 
GO
ALTER DATABASE [Consultorio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Consultorio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Consultorio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Consultorio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Consultorio] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Consultorio', N'ON'
GO
ALTER DATABASE [Consultorio] SET QUERY_STORE = OFF
GO
USE [Consultorio]
GO
/****** Object:  Table [dbo].[Administrativos]    Script Date: 4/14/2020 5:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrativos](
	[idEmpelado] [int] NOT NULL,
	[NumeroEm] [int] NOT NULL,
	[idTipoAd] [int] NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[ApPat] [varchar](50) NOT NULL,
	[ApMat] [varchar](50) NOT NULL,
	[FechaNaci] [datetime] NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatPacientes]    Script Date: 4/14/2020 5:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatPacientes](
	[IdPaciente] [int] NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[ApPat] [varchar](50) NOT NULL,
	[ApMat] [varchar](50) NOT NULL,
	[FechaNaci] [datetime] NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctores]    Script Date: 4/14/2020 5:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctores](
	[idEmpelado] [int] NOT NULL,
	[NumeroEm] [int] NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[ApPat] [varchar](50) NOT NULL,
	[ApMat] [varchar](50) NOT NULL,
	[FechaNaci] [datetime] NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfermeros]    Script Date: 4/14/2020 5:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfermeros](
	[idEmpelado] [int] NOT NULL,
	[NumeroEm] [int] NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[ApPat] [varchar](50) NOT NULL,
	[ApMat] [varchar](50) NOT NULL,
	[FechaNaci] [datetime] NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialistas]    Script Date: 4/14/2020 5:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialistas](
	[idEmpelado] [int] NOT NULL,
	[NumeroEm] [int] NOT NULL,
	[Especialidad] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[ApPat] [varchar](50) NOT NULL,
	[ApMat] [varchar](50) NOT NULL,
	[FechaNaci] [datetime] NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 4/14/2020 5:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receta](
	[Nombre] [int] NOT NULL,
	[Especialidad] [varchar](50) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[ApPat] [varchar](50) NOT NULL,
	[ApMat] [varchar](50) NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[Peso] [int] NOT NULL,
	[Temp] [int] NOT NULL,
	[NombreDoc] [varchar](50) NOT NULL,
	[Medicamento] [varchar](50) NOT NULL,
	[Indicaciones] [varchar](60) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 4/14/2020 5:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[idTipoSer] [int] NOT NULL,
	[Tipo] [varchar](1) NOT NULL,
	[Precio] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 4/14/2020 5:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Total] [float] NOT NULL,
	[TipoSer] [varchar](50) NOT NULL,
	[Folio] [int] NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[Hora] [tinyint] NOT NULL,
	[Subtotal] [float] NOT NULL,
	[Iva] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipAd]    Script Date: 4/14/2020 5:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipAd](
	[idTipo] [int] NOT NULL,
	[Tipo] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (1, 61, 1, N'Eduardo', N'Torres', N'Martinez', NULL, 20, N'M')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (2, 62, 2, N'Alfredo', N'Antonio', N'Heraclio', NULL, 20, N'M')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (3, 63, 3, N'Lizbeth', N'Cantu', N'Rocha', NULL, 22, N'F')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (4, 64, 4, N'Dan', N'Castaneda', N'Gobea', NULL, 22, N'M')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (5, 65, 1, N'Valeria', N'Mata', N'Martinez', NULL, 22, N'F')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (6, 66, 2, N'Miguel', N'Rocha', N'Martinez', NULL, 21, N'M')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (7, 67, 3, N'Nanzy', N'Paredes', N'Martinez', NULL, 24, N'F')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (8, 68, 4, N'Iganio', N'Escobedo', N'Garza', NULL, 25, N'M')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (9, 69, 1, N'Eliza', N'Delgadillo', N'Trujillo', NULL, 26, N'F')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (10, 70, 2, N'Elena', N'Delgadillo', N'Trujillo', NULL, 26, N'F')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (11, 71, 1, N'Eduardo', N'Torres', N'Martinez', NULL, 20, N'M')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (12, 72, 2, N'Alfredo', N'Antonio', N'Heraclio', NULL, 20, N'M')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (13, 73, 3, N'Lizbeth', N'Cantu', N'Rocha', NULL, 22, N'F')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (14, 74, 4, N'Dan', N'Castaneda', N'Gobea', NULL, 22, N'M')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (15, 75, 1, N'Valeria', N'Mata', N'Martinez', NULL, 22, N'F')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (16, 76, 2, N'Miguel', N'Rocha', N'Martinez', NULL, 21, N'M')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (17, 77, 3, N'Nanzy', N'Paredes', N'Martinez', NULL, 24, N'F')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (18, 78, 4, N'Iganio', N'Escobedo', N'Garza', NULL, 25, N'M')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (19, 79, 1, N'Eliza', N'Delgadillo', N'Trujillo', NULL, 26, N'F')
INSERT [dbo].[Administrativos] ([idEmpelado], [NumeroEm], [idTipoAd], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (20, 80, 2, N'Elena', N'Delgadillo', N'Trujillo', NULL, 26, N'F')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (1, N'Eduardo', N'Torres', N'Martinez', NULL, 20, N'M')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (2, N'Alfredo', N'Antonio', N'Heraclio', NULL, 20, N'M')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (3, N'Lizbeth', N'Cantu', N'Rocha', NULL, 22, N'F')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (4, N'Dan', N'Castaneda', N'Gobea', NULL, 12, N'M')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (5, N'Valeria', N'Mata', N'Martinez', NULL, 23, N'F')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (6, N'Miguel', N'Rocha', N'Martinez', NULL, 21, N'M')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (7, N'Nanzy', N'Paredes', N'Martinez', NULL, 45, N'F')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (8, N'Iganio', N'Escobedo', N'Garza', NULL, 25, N'M')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (9, N'Eliza', N'Delgadillo', N'Trujillo', NULL, 16, N'F')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (10, N'Elena', N'Delgadillo', N'Trujillo', NULL, 26, N'F')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (11, N'Eduardo', N'Torres', N'Martinez', NULL, 26, N'M')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (12, N'Alfredo', N'Antonio', N'Heraclio', NULL, 20, N'M')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (13, N'Lizbeth', N'Cantu', N'Rocha', NULL, 22, N'F')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (14, N'Dan', N'Castaneda', N'Gobea', NULL, 22, N'M')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (15, N'Valeria', N'Mata', N'Martinez', NULL, 22, N'F')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (16, N'Miguel', N'Rocha', N'Martinez', NULL, 21, N'M')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (17, N'Nanzy', N'Paredes', N'Martinez', NULL, 54, N'F')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (18, N'Iganio', N'Escobedo', N'Garza', NULL, 15, N'M')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (19, N'Eliza', N'Delgadillo', N'Trujillo', NULL, 16, N'F')
INSERT [dbo].[DatPacientes] ([IdPaciente], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (20, N'Elena', N'Delgadillo', N'Trujillo', NULL, 16, N'F')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (1, 1, N'Carlos', N'Cabrera', N'Martinez', NULL, 28, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (2, 2, N'Gabriel', N'Cabrera', N'Cabrera', NULL, 36, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (3, 3, N'Estafania', N'Rojas', N'Martinez', NULL, 28, N'F')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (4, 4, N'Vicente', N'Martinez', N'Gobea', NULL, 30, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (5, 5, N'Valeria', N'Martinez', N'Martinez', NULL, 32, N'F')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (6, 6, N'Roberto', N'Rodriguez', N'Martinez', NULL, 31, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (7, 7, N'Citlalli', N'Ugarte', N'Martinez', NULL, 34, N'F')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (8, 8, N'Rodolfo', N'Juarez', N'Martinez', NULL, 28, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (9, 9, N'Edgar', N'Buena', N'Cara', NULL, 28, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (10, 10, N'Samhanta', N'Buen', N'Rostro', NULL, 29, N'F')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (11, 11, N'Carlos', N'Cabrera', N'Martinez', NULL, 28, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (12, 12, N'Gabriel', N'Cabrera', N'Cabrera', NULL, 36, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (13, 13, N'Estafania', N'Rojas', N'Martinez', NULL, 28, N'F')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (14, 14, N'Vicente', N'Martinez', N'Gobea', NULL, 30, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (15, 15, N'Valeria', N'Martinez', N'Martinez', NULL, 32, N'F')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (16, 16, N'Roberto', N'Rodriguez', N'Martinez', NULL, 31, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (17, 17, N'Citlalli', N'Ugarte', N'Martinez', NULL, 34, N'F')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (18, 18, N'Rodolfo', N'Juarez', N'Martinez', NULL, 28, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (19, 19, N'Edgar', N'Buena', N'Cara', NULL, 28, N'M')
INSERT [dbo].[Doctores] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (20, 20, N'Samhanta', N'Buen', N'Rostro', NULL, 29, N'F')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (1, 21, N'Eduardo', N'Torres', N'Martinez', NULL, 20, N'M')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (2, 22, N'Alfredo', N'Antonio', N'Heraclio', NULL, 20, N'M')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (3, 23, N'Lizbeth', N'Cantu', N'Rocha', NULL, 22, N'F')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (4, 24, N'Dan', N'Castaneda', N'Gobea', NULL, 22, N'M')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (5, 25, N'Valeria', N'Mata', N'Martinez', NULL, 22, N'F')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (6, 26, N'Miguel', N'Rocha', N'Martinez', NULL, 21, N'M')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (7, 27, N'Nanzy', N'Paredes', N'Martinez', NULL, 24, N'F')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (8, 28, N'Iganio', N'Escobedo', N'Garza', NULL, 25, N'M')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (9, 29, N'Eliza', N'Delgadillo', N'Trujillo', NULL, 26, N'F')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (10, 30, N'Elena', N'Delgadillo', N'Trujillo', NULL, 26, N'F')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (11, 31, N'Eduardo', N'Torres', N'Martinez', NULL, 20, N'M')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (12, 32, N'Alfredo', N'Antonio', N'Heraclio', NULL, 20, N'M')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (13, 33, N'Lizbeth', N'Cantu', N'Rocha', NULL, 22, N'F')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (14, 34, N'Dan', N'Castaneda', N'Gobea', NULL, 22, N'M')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (15, 35, N'Valeria', N'Mata', N'Martinez', NULL, 22, N'F')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (16, 36, N'Miguel', N'Rocha', N'Martinez', NULL, 21, N'M')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (17, 37, N'Nanzy', N'Paredes', N'Martinez', NULL, 24, N'F')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (18, 38, N'Iganio', N'Escobedo', N'Garza', NULL, 25, N'M')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (19, 39, N'Eliza', N'Delgadillo', N'Trujillo', NULL, 26, N'F')
INSERT [dbo].[Enfermeros] ([idEmpelado], [NumeroEm], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (20, 40, N'Elena', N'Delgadillo', N'Trujillo', NULL, 26, N'F')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (1, 41, N'Cardiologia', N'Carlos', N'Cabrera', N'Martinez', NULL, 28, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (2, 42, N'Neurologo', N'Gabriel', N'Cabrera', N'Cabrera', NULL, 36, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (3, 43, N'Cardiologia infantil', N'Estafania', N'Rojas', N'Martinez', NULL, 28, N'F')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (4, 45, N'Cirugia', N'Vicente', N'Martinez', N'Gobea', NULL, 30, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (5, 45, N'Cirugia infantil', N'Valeria', N'Martinez', N'Martinez', NULL, 32, N'F')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (6, 20, N'Dermatologia', N'Roberto', N'Rodriguez', N'Martinez', NULL, 31, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (7, 47, N'Farmacologia clinica', N'Citlalli', N'Ugarte', N'Martinez', NULL, 34, N'F')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (8, 96, N'Ginecologia', N'Rodolfo', N'Juarez', N'Martinez', NULL, 28, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (9, 49, N'Medicina legal', N'Edgar', N'Buena', N'Cara', NULL, 28, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (10, 50, N'Medicina', N'Samhanta', N'Buen', N'Rostro', NULL, 29, N'F')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (11, 51, N'Cardiologia', N'Carlos', N'Cabrera', N'Martinez', NULL, 28, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (12, 52, N'Neurologo', N'Gabriel', N'Cabrera', N'Cabrera', NULL, 36, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (13, 53, N'Cardiologia infantil', N'Estafania', N'Rojas', N'Martinez', NULL, 28, N'F')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (14, 54, N'Cirugia', N'Vicente', N'Martinez', N'Gobea', NULL, 30, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (15, 55, N'Cirugia infantil', N'Valeria', N'Martinez', N'Martinez', NULL, 32, N'F')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (16, 56, N'Dermatologia', N'Roberto', N'Rodriguez', N'Martinez', NULL, 31, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (17, 57, N'Farmacologia clinica', N'Citlalli', N'Ugarte', N'Martinez', NULL, 34, N'F')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (18, 58, N'Ginecologia', N'Rodolfo', N'Juarez', N'Martinez', NULL, 28, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (19, 59, N'Medicina legal', N'Edgar', N'Buena', N'Cara', NULL, 28, N'M')
INSERT [dbo].[Especialistas] ([idEmpelado], [NumeroEm], [Especialidad], [Nombres], [ApPat], [ApMat], [FechaNaci], [Edad], [Sexo]) VALUES (20, 60, N'Medicina', N'Samhanta', N'Buen', N'Rostro', NULL, 29, N'F')
USE [master]
GO
ALTER DATABASE [Consultorio] SET  READ_WRITE 
GO
