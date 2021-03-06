USE [master]
GO
/****** Object:  Database [Creo_que_es_la_practica_8]    Script Date: 5/16/2020 5:29:51 PM ******/
CREATE DATABASE [Creo_que_es_la_practica_8]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Creo_que_es_la_practica_8', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Creo_que_es_la_practica_8.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Creo_que_es_la_practica_8_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Creo_que_es_la_practica_8_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Creo_que_es_la_practica_8].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET ARITHABORT OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET RECOVERY FULL 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET  MULTI_USER 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Creo_que_es_la_practica_8', N'ON'
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET QUERY_STORE = OFF
GO
ALTER DATABASE [Creo_que_es_la_practica_8] SET  READ_WRITE 
GO
