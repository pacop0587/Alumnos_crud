USE [master]
GO
/****** Object:  Database [Escuela02]    Script Date: 08/01/2021 11:06:28 p. m. ******/
CREATE DATABASE [Escuela02] ON  PRIMARY 
( NAME = N'Escuela02', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Escuela02.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Escuela02_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Escuela02_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Escuela02] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Escuela02].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Escuela02] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Escuela02] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Escuela02] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Escuela02] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Escuela02] SET ARITHABORT OFF 
GO
ALTER DATABASE [Escuela02] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Escuela02] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Escuela02] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Escuela02] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Escuela02] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Escuela02] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Escuela02] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Escuela02] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Escuela02] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Escuela02] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Escuela02] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Escuela02] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Escuela02] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Escuela02] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Escuela02] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Escuela02] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Escuela02] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Escuela02] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Escuela02] SET  MULTI_USER 
GO
ALTER DATABASE [Escuela02] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Escuela02] SET DB_CHAINING OFF 
GO
USE [Escuela02]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 08/01/2021 11:06:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellido_paterno] [varchar](20) NOT NULL,
	[Apellido_materno] [varchar](20) NOT NULL,
	[Calle] [varchar](20) NOT NULL,
	[Colonia] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 
GO
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido_paterno], [Apellido_materno], [Calle], [Colonia]) VALUES (1, N'Alberto', N'Martinez', N'Alvarez', N'2a norte ote', N'Centro')
GO
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido_paterno], [Apellido_materno], [Calle], [Colonia]) VALUES (2, N'Rocio', N'Solis', N'Jimenez', N'Calle Olivo', N'Teran')
GO
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido_paterno], [Apellido_materno], [Calle], [Colonia]) VALUES (5, N'Silvia', N'Castillo', N'Dominguez', N'1a sur pte', N'Centro')
GO
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido_paterno], [Apellido_materno], [Calle], [Colonia]) VALUES (6, N'Roman', N'Sanchez', N'Tello', N'Av Palma real', N'Las Palmas')
GO
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido_paterno], [Apellido_materno], [Calle], [Colonia]) VALUES (7, N'Fatima', N'Bonilla', N'Fernandez', N'7 ote y 2 ur', N'Magisterial')
GO
SET IDENTITY_INSERT [dbo].[Alumno] OFF
GO
USE [master]
GO
ALTER DATABASE [Escuela02] SET  READ_WRITE 
GO
