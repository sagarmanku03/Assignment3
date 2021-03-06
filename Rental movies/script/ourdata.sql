USE [master]
GO
/****** Object:  Database [ourdata]    Script Date: 12/2/2020 11:27:54 AM ******/
CREATE DATABASE [ourdata]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ourdata', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ourdata.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ourdata_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ourdata_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ourdata] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ourdata].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ourdata] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ourdata] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ourdata] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ourdata] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ourdata] SET ARITHABORT OFF 
GO
ALTER DATABASE [ourdata] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ourdata] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ourdata] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ourdata] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ourdata] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ourdata] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ourdata] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ourdata] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ourdata] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ourdata] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ourdata] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ourdata] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ourdata] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ourdata] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ourdata] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ourdata] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ourdata] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ourdata] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ourdata] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ourdata] SET  MULTI_USER 
GO
ALTER DATABASE [ourdata] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ourdata] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ourdata] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ourdata] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ourdata]
GO
/****** Object:  StoredProcedure [dbo].[Fetching]    Script Date: 12/2/2020 11:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Fetching]
@Id int

AS
SET NOCOUNT ON;
SELECT * FROM Customerdata WHERE CustomerId =@Id

GO
/****** Object:  Table [dbo].[Customerdata]    Script Date: 12/2/2020 11:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customerdata](
	[CustomerId] [int] NOT NULL,
	[Firstname] [varchar](50) NULL,
	[Lastname] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Phone_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Moviedata]    Script Date: 12/2/2020 11:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moviedata](
	[MovieId] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Genre] [nvarchar](50) NULL,
	[Rating] [nvarchar](50) NULL,
	[Copies] [nvarchar](50) NULL,
	[Plot] [ntext] NULL,
	[Rental_Cost] [money] NULL,
	[Relase_Date] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rentaldata]    Script Date: 12/2/2020 11:27:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rentaldata](
	[RMId] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[MovieId] [int] NULL,
	[Renteddate] [varchar](50) NULL,
	[Returndate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customerdata] ([CustomerId], [Firstname], [Lastname], [Address], [Phone_no]) VALUES (1, N'Pamela ', N'Cunningham', N'232  Williamson Avenue', 478552)
INSERT [dbo].[Customerdata] ([CustomerId], [Firstname], [Lastname], [Address], [Phone_no]) VALUES (2, N'Joseph', N'Babb', N'26  Arawa Street', 254169)
INSERT [dbo].[Customerdata] ([CustomerId], [Firstname], [Lastname], [Address], [Phone_no]) VALUES (3, N'Magen', N'Cotton', N'128  Sophies Way', 984263)
INSERT [dbo].[Customerdata] ([CustomerId], [Firstname], [Lastname], [Address], [Phone_no]) VALUES (4, N'Charles', N'Cortez', N'266  Paisley Place', 581474)
INSERT [dbo].[Customerdata] ([CustomerId], [Firstname], [Lastname], [Address], [Phone_no]) VALUES (5, N'Lowell', N'Chasteen', N'99  Rainbow Drive', 638541)
INSERT [dbo].[Moviedata] ([MovieId], [Title], [Genre], [Rating], [Copies], [Plot], [Rental_Cost], [Relase_Date]) VALUES (1, N'Ocean Eleven', N'Comedy', N'8.1', N'42', N'Story of theif', 2.0000, N'6 dec 2001')
INSERT [dbo].[Moviedata] ([MovieId], [Title], [Genre], [Rating], [Copies], [Plot], [Rental_Cost], [Relase_Date]) VALUES (2, N'Captain Marvel', N'Sci-fic', N'8.8', N'49', N'Girl with super power', 5.0000, N'27 feb 2019')
INSERT [dbo].[Moviedata] ([MovieId], [Title], [Genre], [Rating], [Copies], [Plot], [Rental_Cost], [Relase_Date]) VALUES (3, N'Sin City', N'Crime', N'9', N'25', N'The Customer Is Always Right', 2.0000, N'28 march 2005')
INSERT [dbo].[Moviedata] ([MovieId], [Title], [Genre], [Rating], [Copies], [Plot], [Rental_Cost], [Relase_Date]) VALUES (4, N'The Customer Is Always Right', N'Animated superhero', N'7.7', N'33', N'High school graduate story', 2.0000, N'7 nov 2014')
INSERT [dbo].[Rentaldata] ([RMId], [CustomerId], [MovieId], [Renteddate], [Returndate]) VALUES (1, 4, 3, N'12-11-2020', N'')
INSERT [dbo].[Rentaldata] ([RMId], [CustomerId], [MovieId], [Renteddate], [Returndate]) VALUES (2, 1, 2, N'15-11-2020', N'16-11-2020')
INSERT [dbo].[Rentaldata] ([RMId], [CustomerId], [MovieId], [Renteddate], [Returndate]) VALUES (3, 2, 3, N'14-11-2020', N'')
INSERT [dbo].[Rentaldata] ([RMId], [CustomerId], [MovieId], [Renteddate], [Returndate]) VALUES (4, 3, 1, N'17-11-2020', N'')
INSERT [dbo].[Rentaldata] ([RMId], [CustomerId], [MovieId], [Renteddate], [Returndate]) VALUES (5, 5, 4, N'18-11-2020', N'118-11-2020')
INSERT [dbo].[Rentaldata] ([RMId], [CustomerId], [MovieId], [Renteddate], [Returndate]) VALUES (6, 1, 1, N'19-11-2020', N'')
ALTER TABLE [dbo].[Rentaldata]  WITH CHECK ADD  CONSTRAINT [FK_Rentaldata_Customerata] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customerdata] ([CustomerId])
GO
ALTER TABLE [dbo].[Rentaldata] CHECK CONSTRAINT [FK_Rentaldata_Customerata]
GO
ALTER TABLE [dbo].[Rentaldata]  WITH CHECK ADD  CONSTRAINT [FK_Rentaldata_Moviedata] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Moviedata] ([MovieId])
GO
ALTER TABLE [dbo].[Rentaldata] CHECK CONSTRAINT [FK_Rentaldata_Moviedata]
GO
USE [master]
GO
ALTER DATABASE [ourdata] SET  READ_WRITE 
GO
