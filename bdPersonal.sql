USE [master]
GO
/****** Object:  Database [Personal]    Script Date: 11/05/2023 07:39:17 p. m. ******/
CREATE DATABASE [Personal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Personal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Personal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Personal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Personal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Personal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Personal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Personal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Personal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Personal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Personal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Personal] SET ARITHABORT OFF 
GO
ALTER DATABASE [Personal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Personal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Personal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Personal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Personal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Personal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Personal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Personal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Personal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Personal] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Personal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Personal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Personal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Personal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Personal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Personal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Personal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Personal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Personal] SET  MULTI_USER 
GO
ALTER DATABASE [Personal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Personal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Personal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Personal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Personal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Personal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Personal] SET QUERY_STORE = OFF
GO
USE [Personal]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 11/05/2023 07:39:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[Id] [nvarchar](10) NOT NULL,
	[No_Empleado] [nvarchar](30) NOT NULL,
	[Nombre] [nvarchar](20) NOT NULL,
	[Departamento] [nvarchar](50) NOT NULL,
	[Fecha_Hora] [datetime] NOT NULL,
	[Tipo] [text] NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 11/05/2023 07:39:17 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [nvarchar](10) NOT NULL,
	[Nombre] [nvarchar](30) NOT NULL,
	[No_Empleado] [nvarchar](20) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [nvarchar](10) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Personal] SET  READ_WRITE 
GO
