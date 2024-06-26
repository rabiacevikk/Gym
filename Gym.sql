USE [master]
GO
/****** Object:  Database [gym]    Script Date: 28.02.2021 10:19:46 ******/
CREATE DATABASE [gym]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gym', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\gym.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'gym_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\gym_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [gym] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gym].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gym] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gym] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gym] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gym] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gym] SET ARITHABORT OFF 
GO
ALTER DATABASE [gym] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gym] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gym] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gym] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gym] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gym] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gym] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gym] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gym] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gym] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gym] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gym] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gym] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gym] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gym] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gym] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gym] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gym] SET RECOVERY FULL 
GO
ALTER DATABASE [gym] SET  MULTI_USER 
GO
ALTER DATABASE [gym] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gym] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gym] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gym] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [gym] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [gym] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'gym', N'ON'
GO
ALTER DATABASE [gym] SET QUERY_STORE = OFF
GO
USE [gym]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 28.02.2021 10:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[EID] [int] IDENTITY(1,1) NOT NULL,
	[EquipName] [varchar](250) NOT NULL,
	[EDescription] [varchar](450) NOT NULL,
	[MUsed] [varchar](250) NOT NULL,
	[DDate] [varchar](150) NOT NULL,
	[Cost] [bigint] NOT NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[EID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewMember]    Script Date: 28.02.2021 10:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewMember](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](150) NOT NULL,
	[Lname] [varchar](150) NOT NULL,
	[Gender] [varchar](20) NOT NULL,
	[Dob] [varchar](100) NOT NULL,
	[Mobile] [varchar](200) NOT NULL,
	[Email] [varchar](150) NULL,
	[JoinDate] [varchar](150) NOT NULL,
	[Gymtime] [varchar](120) NOT NULL,
	[Maddress] [varchar](250) NOT NULL,
	[MembershipTime] [varchar](120) NOT NULL,
 CONSTRAINT [PK_NewMember] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewStaff]    Script Date: 28.02.2021 10:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewStaff](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](150) NOT NULL,
	[Lname] [varchar](150) NOT NULL,
	[Gender] [varchar](20) NOT NULL,
	[Dob] [varchar](100) NOT NULL,
	[Mobile] [varchar](150) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[JoinDate] [varchar](150) NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[City] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NewStaff] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([EID], [EquipName], [EDescription], [MUsed], [DDate], [Cost]) VALUES (3, N'Dumbell', N'Used in every exercise', N'Arms', N'28.02.2021', 2500)
INSERT [dbo].[Equipment] ([EID], [EquipName], [EDescription], [MUsed], [DDate], [Cost]) VALUES (4, N'Peck deck', N'It is a workout machine for chest', N'Arms and chest', N'28.02.2021', 50000)
INSERT [dbo].[Equipment] ([EID], [EquipName], [EDescription], [MUsed], [DDate], [Cost]) VALUES (5, N'Bench', N'It is used in a most of the workout.', N'Arms and chest', N'28.02.2021', 3000)
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[NewMember] ON 

INSERT [dbo].[NewMember] ([MID], [Fname], [Lname], [Gender], [Dob], [Mobile], [Email], [JoinDate], [Gymtime], [Maddress], [MembershipTime]) VALUES (1, N'Rabia', N'Çevik', N'Female', N'11.10.2000', N'(531) 726-0234', N'rabiacevikk528@gmail.com', N'27.02.2021', N'08AM-09AM', N'İstanbul', N'6 Month')
INSERT [dbo].[NewMember] ([MID], [Fname], [Lname], [Gender], [Dob], [Mobile], [Email], [JoinDate], [Gymtime], [Maddress], [MembershipTime]) VALUES (2, N'Meryem', N'Çevik', N'Female', N'27.12.2006', N'(537) 666-6666', N'meryem556@hotmail.com', N'27.02.2021', N'08AM-09AM', N'İstanbul', N'6 Month')
INSERT [dbo].[NewMember] ([MID], [Fname], [Lname], [Gender], [Dob], [Mobile], [Email], [JoinDate], [Gymtime], [Maddress], [MembershipTime]) VALUES (4, N'Dürdane', N'Çevik', N'Female', N'11.08.1984', N'(537) 234-5566', N'durdane_45@hotmail.com', N'27.02.2021', N'05PM-06PM', N'Basaksehir/İstanbul ', N'3 Month')
INSERT [dbo].[NewMember] ([MID], [Fname], [Lname], [Gender], [Dob], [Mobile], [Email], [JoinDate], [Gymtime], [Maddress], [MembershipTime]) VALUES (5, N'Ayşe', N'Duran', N'Female', N'10.03.2000', N'(536) 677-8899', N'aysegul6677@hotmail.com', N'27.02.2021', N'05PM-06PM', N'İstanbul', N'6 Month')
SET IDENTITY_INSERT [dbo].[NewMember] OFF
GO
SET IDENTITY_INSERT [dbo].[NewStaff] ON 

INSERT [dbo].[NewStaff] ([SID], [Fname], [Lname], [Gender], [Dob], [Mobile], [Email], [JoinDate], [Country], [City]) VALUES (1, N'Celal', N'Can', N'Male', N'4.11.1998', N'(531) 445-5667', N'celal5667@hotmail.com', N'27.02.2021', N'Turkey', N'İstanbul')
INSERT [dbo].[NewStaff] ([SID], [Fname], [Lname], [Gender], [Dob], [Mobile], [Email], [JoinDate], [Country], [City]) VALUES (2, N'Su', N'Korkmaz', N'Female', N'7.07.1995', N'(545) 455-6545', N'su_56@hotmail.com', N'27.02.2021', N'Turkey', N'Ankara')
SET IDENTITY_INSERT [dbo].[NewStaff] OFF
GO
USE [master]
GO
ALTER DATABASE [gym] SET  READ_WRITE 
GO
