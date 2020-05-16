USE [master]
GO
/****** Object:  Database [Consultorio]    Script Date: 5/16/2020 5:33:45 PM ******/
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
/****** Object:  Table [dbo].[Administrativos]    Script Date: 5/16/2020 5:33:45 PM ******/
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
/****** Object:  Table [dbo].[DatPacientes]    Script Date: 5/16/2020 5:33:45 PM ******/
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
/****** Object:  Table [dbo].[Doctores]    Script Date: 5/16/2020 5:33:45 PM ******/
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
/****** Object:  Table [dbo].[Enfermeros]    Script Date: 5/16/2020 5:33:45 PM ******/
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
/****** Object:  Table [dbo].[Especialistas]    Script Date: 5/16/2020 5:33:45 PM ******/
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
/****** Object:  Table [dbo].[Receta]    Script Date: 5/16/2020 5:33:45 PM ******/
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
/****** Object:  Table [dbo].[Servicios]    Script Date: 5/16/2020 5:33:45 PM ******/
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
/****** Object:  Table [dbo].[Ticket]    Script Date: 5/16/2020 5:33:45 PM ******/
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
/****** Object:  Table [dbo].[TipAd]    Script Date: 5/16/2020 5:33:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipAd](
	[idTipo] [int] NOT NULL,
	[Tipo] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Consultorio] SET  READ_WRITE 
GO
