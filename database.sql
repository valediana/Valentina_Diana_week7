USE [master]
GO
/****** Object:  Database [Studenti]    Script Date: 19/11/2021 14:12:54 ******/
CREATE DATABASE [Studenti]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Studenti', FILENAME = N'C:\Users\valem\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\Studenti.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Studenti_log', FILENAME = N'C:\Users\valem\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\Studenti.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Studenti] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Studenti].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Studenti] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Studenti] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Studenti] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Studenti] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Studenti] SET ARITHABORT ON 
GO
ALTER DATABASE [Studenti] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Studenti] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Studenti] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Studenti] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Studenti] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Studenti] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Studenti] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Studenti] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Studenti] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Studenti] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Studenti] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Studenti] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Studenti] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Studenti] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Studenti] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Studenti] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Studenti] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Studenti] SET RECOVERY FULL 
GO
ALTER DATABASE [Studenti] SET  MULTI_USER 
GO
ALTER DATABASE [Studenti] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Studenti] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Studenti] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Studenti] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Studenti] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Studenti] SET QUERY_STORE = OFF
GO
USE [Studenti]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Studenti]
GO
/****** Object:  Table [dbo].[Studente]    Script Date: 19/11/2021 14:12:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studente](
	[ID] [int] NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Cognome] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Studente] ([ID], [Nome], [Cognome]) VALUES (1, N'Maria', N'Verdi')
INSERT [dbo].[Studente] ([ID], [Nome], [Cognome]) VALUES (2, N'Andrea', N'Gialli')
INSERT [dbo].[Studente] ([ID], [Nome], [Cognome]) VALUES (3, N'Anna', N'Rossi')
GO
USE [master]
GO
ALTER DATABASE [Studenti] SET  READ_WRITE 
GO
