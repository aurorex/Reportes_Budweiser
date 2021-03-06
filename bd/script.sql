USE [master]
GO
/****** Object:  Database [budweiserData]    Script Date: 5/24/2019 11:56:43 PM ******/
CREATE DATABASE [budweiserData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'budweiserData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS2012\MSSQL\DATA\budweiserData.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'budweiserData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS2012\MSSQL\DATA\budweiserData_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [budweiserData] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [budweiserData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [budweiserData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [budweiserData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [budweiserData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [budweiserData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [budweiserData] SET ARITHABORT OFF 
GO
ALTER DATABASE [budweiserData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [budweiserData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [budweiserData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [budweiserData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [budweiserData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [budweiserData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [budweiserData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [budweiserData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [budweiserData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [budweiserData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [budweiserData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [budweiserData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [budweiserData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [budweiserData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [budweiserData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [budweiserData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [budweiserData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [budweiserData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [budweiserData] SET  MULTI_USER 
GO
ALTER DATABASE [budweiserData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [budweiserData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [budweiserData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [budweiserData] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [budweiserData]
GO
/****** Object:  Table [dbo].[Encuestas]    Script Date: 5/24/2019 11:56:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Encuestas](
	[ID] [uniqueidentifier] NOT NULL,
	[Titulo] [varchar](max) NOT NULL,
	[ValidaHasta] [datetime] NOT NULL,
 CONSTRAINT [PK_Encuestas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HistorialConexiones]    Script Date: 5/24/2019 11:56:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialConexiones](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FechaConexion] [datetime] NOT NULL,
	[DispositivoUsuarioID] [int] NOT NULL,
 CONSTRAINT [PK_HistorialConexiones] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 5/24/2019 11:56:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Preguntas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Pregunta] [varchar](max) NOT NULL,
	[Opciones] [varchar](max) NOT NULL,
	[EncuestaID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REspuestas]    Script Date: 5/24/2019 11:56:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REspuestas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [uniqueidentifier] NOT NULL,
	[PreguntaID] [int] NOT NULL,
	[Respuesta] [varchar](50) NOT NULL,
	[FechaRespuesta] [datetime] NOT NULL,
 CONSTRAINT [PK_REspuestas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDispositivo]    Script Date: 5/24/2019 11:56:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDispositivo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NombreDispositivo] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TipoDispositivo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuarioAdministrativo]    Script Date: 5/24/2019 11:56:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsuarioAdministrativo](
	[ID] [uniqueidentifier] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[FechaCaducidad] [datetime] NOT NULL,
 CONSTRAINT [PK_UsuarioAdministrativo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuarioDispositivo]    Script Date: 5/24/2019 11:56:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioDispositivo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DispositivoID] [int] NOT NULL,
	[UsuarioID] [uniqueidentifier] NOT NULL,
	[UltimaConexion] [datetime] NOT NULL,
 CONSTRAINT [PK_UsuarioDispositivo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsuariosApp]    Script Date: 5/24/2019 11:56:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsuariosApp](
	[ID] [uniqueidentifier] NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Sexo] [varchar](10) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[UltimaVezDeUso] [datetime] NOT NULL,
 CONSTRAINT [PK_UsuariosApp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[HistorialConexiones]  WITH CHECK ADD  CONSTRAINT [FK_HistorialConexiones_UsuarioDispositivo] FOREIGN KEY([DispositivoUsuarioID])
REFERENCES [dbo].[UsuarioDispositivo] ([ID])
GO
ALTER TABLE [dbo].[HistorialConexiones] CHECK CONSTRAINT [FK_HistorialConexiones_UsuarioDispositivo]
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Encuestas] FOREIGN KEY([EncuestaID])
REFERENCES [dbo].[Encuestas] ([ID])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Encuestas]
GO
ALTER TABLE [dbo].[REspuestas]  WITH CHECK ADD  CONSTRAINT [FK_REspuestas_Preguntas] FOREIGN KEY([PreguntaID])
REFERENCES [dbo].[Preguntas] ([ID])
GO
ALTER TABLE [dbo].[REspuestas] CHECK CONSTRAINT [FK_REspuestas_Preguntas]
GO
ALTER TABLE [dbo].[REspuestas]  WITH CHECK ADD  CONSTRAINT [FK_REspuestas_UsuariosApp] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[UsuariosApp] ([ID])
GO
ALTER TABLE [dbo].[REspuestas] CHECK CONSTRAINT [FK_REspuestas_UsuariosApp]
GO
ALTER TABLE [dbo].[UsuarioDispositivo]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioDispositivo_TipoDispositivo] FOREIGN KEY([DispositivoID])
REFERENCES [dbo].[TipoDispositivo] ([ID])
GO
ALTER TABLE [dbo].[UsuarioDispositivo] CHECK CONSTRAINT [FK_UsuarioDispositivo_TipoDispositivo]
GO
ALTER TABLE [dbo].[UsuarioDispositivo]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioDispositivo_UsuariosApp] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[UsuariosApp] ([ID])
GO
ALTER TABLE [dbo].[UsuarioDispositivo] CHECK CONSTRAINT [FK_UsuarioDispositivo_UsuariosApp]
GO
USE [master]
GO
ALTER DATABASE [budweiserData] SET  READ_WRITE 
GO
