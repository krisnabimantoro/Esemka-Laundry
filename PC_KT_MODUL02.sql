USE [master]
GO
/****** Object:  Database [PC_KT_MODUL02]    Script Date: 10/21/2020 12:45:42 PM ******/
CREATE DATABASE [PC_KT_MODUL02]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PC_KT_MODUL02', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PC_KT_MODUL02.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PC_KT_MODUL02_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PC_KT_MODUL02_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PC_KT_MODUL02] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PC_KT_MODUL02].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PC_KT_MODUL02] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET ARITHABORT OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PC_KT_MODUL02] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PC_KT_MODUL02] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PC_KT_MODUL02] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PC_KT_MODUL02] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PC_KT_MODUL02] SET  MULTI_USER 
GO
ALTER DATABASE [PC_KT_MODUL02] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PC_KT_MODUL02] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PC_KT_MODUL02] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PC_KT_MODUL02] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PC_KT_MODUL02] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PC_KT_MODUL02] SET QUERY_STORE = OFF
GO
USE [PC_KT_MODUL02]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/21/2020 12:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/21/2020 12:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Address] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailDeposit]    Script Date: 10/21/2020 12:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailDeposit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDeposit] [int] NOT NULL,
	[IdService] [int] NOT NULL,
	[IdPrepaidPackage] [int] NOT NULL,
	[PriceUnit] [int] NOT NULL,
	[TotalUnit] [int] NOT NULL,
	[CompletedDatetime] [datetime] NULL,
 CONSTRAINT [PK_DetailDeposit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/21/2020 12:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](200) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[DateofBirth] [date] NOT NULL,
	[IdJob] [int] NOT NULL,
	[Salary] [float] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeaderDeposit]    Script Date: 10/21/2020 12:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeaderDeposit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[IdEmployee] [int] NOT NULL,
	[TransactionDatetime] [date] NOT NULL,
	[CompleteEstimationDatetime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HeaderDeposit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 10/21/2020 12:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Job_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 10/21/2020 12:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdService] [int] NOT NULL,
	[TotalUnit] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrepaidPackage]    Script Date: 10/21/2020 12:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrepaidPackage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[IdPackage] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[StartDatetime] [datetime] NOT NULL,
	[CompletedDatetime] [nvarchar](255) NULL,
 CONSTRAINT [PK_PrepaidPackage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 10/21/2020 12:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IdCategory] [int] NOT NULL,
	[IdUnit] [int] NOT NULL,
	[PriceUnit] [int] NOT NULL,
	[EstimationDuration] [int] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 10/21/2020 12:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Laundry Kiloan')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Laundry Satuan')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Laundry Perlengkapan Bayi')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Laundry Helm')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Laundry Sepatu')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (1, N'Xavier Duignan', N'+6285054833171', N'0589 Pierstorff Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (2, N'Dagny Hubbock', N'+6287861901474', N'66994 Mesta Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (3, N'Consalve Wilprecht', N'+6287845774437', N'5 Derek Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (4, N'Clemmy McGaughay', N'+628555547594', N'01479 Eagan Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (5, N'Diann Bezants', N'+6283031526920', N'298 Scott Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (6, N'Gaby Monkhouse', N'+62835142347', N'99923 Gina Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (7, N'Ellene Cruwys', N'+6283803659351', N'6 Sage Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (8, N'Etti Dolley', N'+628260782303', N'5 Weeping Birch Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (9, N'Saxon Muckian', N'+62826124369', N'58 Rutledge Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (10, N'Mateo Coppen', N'+628628452026', N'02946 Sullivan Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (11, N'Angeline Bourtoumieux', N'+6289704306428', N'0 Dunning Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (12, N'Elita Maylor', N'+628668243824', N'225 Delaware Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (13, N'Leodora Cluelow', N'+628818355205', N'99839 Namekagon Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (14, N'Elisabetta Pleming', N'+62882795400', N'0877 Ilene Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (15, N'Jolie Rahlof', N'+628865211168', N'9342 Chinook Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (16, N'Elsi Schuster', N'+6284696672855', N'223 Forster Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (17, N'Hodge Beseke', N'+62886624912', N'211 Anderson Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (18, N'Eileen Annice', N'+628614249425', N'1853 Lakewood Gardens Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (19, N'Berny Kilner', N'+6284647769898', N'49 Pleasure Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (20, N'Carmencita Applewhaite', N'+6286232152968', N'88570 Armistice Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (21, N'Adriano Bustard', N'+62839988418', N'3926 Dwight Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (22, N'Othello Inchbald', N'+62847565272', N'70174 Killdeer Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (23, N'Carlin Aloshkin', N'+628312363420', N'71 Oxford Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (24, N'Berne Petrescu', N'+62886591878', N'93 Mockingbird Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (25, N'Nanci Orme', N'+62886145346', N'62969 Westend Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (26, N'Aloysia Simants', N'+62874384016', N'61 Southridge Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (27, N'Bay Stroud', N'+628155937013', N'85287 North Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (28, N'Pryce Eley', N'+628637257537', N'493 Thackeray Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (29, N'Fabiano Brearty', N'+628489069664', N'526 Schiller Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (30, N'Terrence McCoole', N'+628866769719', N'889 Linden Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (31, N'Arte Tingly', N'+62862962747', N'22 Talmadge Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (32, N'Ronni Clarabut', N'+6286331582998', N'8115 Blackbird Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (33, N'Calida Dawtre', N'+628865373166', N'18318 Chive Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (34, N'Meggi Furley', N'+6288668167230', N'4 Harbort Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (35, N'Bernard Pearce', N'+628868854761', N'981 Lakewood Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (36, N'Hunfredo Gooble', N'+6284621026648', N'3747 Thackeray Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (37, N'Wrennie Clendinning', N'+6283807758048', N'7 Hermina Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (38, N'Jenn Rought', N'+6282445787755', N'6 Roth Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (39, N'Gaby Streather', N'+6284960733086', N'6 Bellgrove Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (40, N'Denys Marchington', N'+62837370890', N'3 Monica Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (41, N'Papagena Holyland', N'+6289944761590', N'178 Lukken Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (42, N'Chad Purshouse', N'+62863507406', N'404 Ronald Regan Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (43, N'Myrtie Mixhel', N'+62886904618', N'9432 Sunfield Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (44, N'Llewellyn Brennan', N'+6286233286831', N'51279 Vermont Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (45, N'Derk Lemerle', N'+6283511182201', N'0623 Buhler Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (46, N'Shae Saker', N'+628420979760', N'613 Westerfield Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (47, N'Barnie De Robertis', N'+62835127586', N'5921 Charing Cross Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (48, N'Lanita Crummay', N'+6285491274648', N'11831 Truax Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (49, N'Gilbertina Aylett', N'+628868124116', N'79 Bartelt Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (50, N'Clarinda De La Hay', N'+628556524206', N'4 Petterle Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (51, N'Tanney Chillingworth', N'+6287493969313', N'24239 Darwin Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (52, N'Ninnette Larchier', N'+628867683962', N'53862 Cardinal Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (53, N'Minne Sutherel', N'+628335176269', N'897 Hansons Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (54, N'Deeyn Broadhurst', N'+628625875076', N'07 Thackeray Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (55, N'Tait Maudlen', N'+628222499815', N'10974 Sullivan Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (56, N'Jessalyn Mallam', N'+6289982404150', N'86 Corry Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (57, N'Marna Ogle', N'+6287979802726', N'5736 Jenna Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (58, N'Grant Oldacres', N'+6286316911232', N'34 Forster Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (59, N'Ursula Rodson', N'+6283519308064', N'198 Northwestern Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (60, N'Byrom Emmitt', N'+6282239702880', N'9 Dennis Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (61, N'Bianca Firle', N'+628626181631', N'3565 Tennessee Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (62, N'Nikkie Milbourn', N'+62855247758', N'447 Marquette Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (63, N'Donica Ranaghan', N'+6289387260878', N'62 Elmside Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (64, N'Corrianne Whiffin', N'+628140966561', N'097 Roxbury Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (65, N'Adam Pollett', N'+6282348579717', N'86 Chinook Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (66, N'Brier Cianelli', N'+6285723170887', N'76 Schiller Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (67, N'Dee dee Blowing', N'+62862560397', N'31 2nd Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (68, N'Mickie Ostridge', N'+62838077557', N'4 Florence Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (69, N'Vinita Zavattiero', N'+62861939302', N'2525 Forest Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (70, N'Winona Pickle', N'+6286246758787', N'69352 Sutteridge Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (71, N'Patrica Langran', N'+628485589970', N'84627 Roth Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (72, N'Yvette McShirrie', N'+6284819559833', N'78647 Darwin Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (73, N'Skippie Oldacres', N'+62862976840', N'5 Manley Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (74, N'Arley Cometti', N'+62886532110', N'88 Derek Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (75, N'Stacee Faloon', N'+628996208959', N'1 Declaration Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (76, N'Tremayne Buckenhill', N'+628778813109', N'5760 Washington Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (77, N'Aridatha Caughtry', N'+6284873958162', N'30 Londonderry Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (78, N'Ambrosio Side', N'+62863701494', N'85 Southridge Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (79, N'Dwain Beggini', N'+62863360127', N'6 Goodland Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (80, N'Randi Wernham', N'+628721238485', N'878 Glacier Hill Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (81, N'West Gierck', N'+628868033439', N'16310 Annamark Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (82, N'Adolphus Jobey', N'+62879103951', N'914 Anzinger Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (83, N'Sibel Beacon', N'+62893439899', N'88007 Moulton Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (84, N'Karole Pestell', N'+628488069358', N'35884 Declaration Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (85, N'Marina Tatton', N'+6285044359519', N'20613 Annamark Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (86, N'Yvonne Whiskin', N'+62863463194', N'231 Russell Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (87, N'Marlee Tanner', N'+62846342564', N'4946 Milwaukee Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (88, N'Zerk Lotwich', N'+628861518801', N'9 Chive Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (89, N'Brinn Shervil', N'+6288642135068', N'0708 Calypso Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (90, N'Mommy Borth', N'+628867241339', N'1 Corry Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (91, N'Fulton Vance', N'+62851150713', N'271 Jana Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (92, N'Bibby Pury', N'+6285567533453', N'339 Packers Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (93, N'Corri Dohrmann', N'+62826470650', N'92 Lerdahl Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (94, N'Roosevelt Harmson', N'+62878769017', N'77 Amoth Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (95, N'Keir Kinnon', N'+62862436278', N'82 Commercial Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (96, N'Marti Luchetti', N'+6288653976525', N'0731 Marquette Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (97, N'Layton Pedrozzi', N'+628151588348', N'62 Mcbride Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (98, N'Thomas Royse', N'+62871873211', N'718 Johnson Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (99, N'Piggy Geillier', N'+62862463810', N'9369 Fairview Lane')
GO
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (100, N'Waldo Feldstein', N'+6282374307101', N'8 Prairie Rose Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (101, N'Aleda Daunay', N'+62886736404', N'5 Golf Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (102, N'Torre Maharey', N'+628130214007', N'79138 Jana Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (103, N'Egan Renehan', N'+62833566189', N'8 Arizona Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (104, N'Linda MacFie', N'+628519549286', N'48 Bluestem Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (105, N'Bud Ricciardello', N'+62857591861', N'678 Cordelia Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (106, N'Cristobal Bath', N'+62863203510', N'040 Rutledge Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (107, N'Zebedee Devote', N'+62827764668', N'20755 Norway Maple Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (108, N'Maribel Gabbat', N'+6285257785433', N'16892 Melody Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (109, N'Tabbi Finicj', N'+628862517069', N'8084 Gale Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (110, N'Elbertine Mahedy', N'+62863448416', N'1252 John Wall Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (111, N'Dione Biaggi', N'+6286362996250', N'0 Tennyson Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (112, N'Aimil Feaveer', N'+62897654872', N'6 Maywood Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (113, N'Babette Matt', N'+628338553728', N'17963 Scoville Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (114, N'Luce Kuhn', N'+62876777975', N'15313 Granby Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (115, N'Rodrique Gibbard', N'+628579682106', N'9 Warbler Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (116, N'Konrad Baulch', N'+6288670724459', N'9566 Dorton Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (117, N'Nancey Kinleyside', N'+628729281197', N'9 Crownhardt Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (118, N'Lorine Fenkel', N'+628861569615', N'6 Sundown Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (119, N'Lenna Kingett', N'+628554522764', N'4280 Walton Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (120, N'Gage Batterbee', N'+628529245011', N'6719 Ronald Regan Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (121, N'Bent Shuttleworth', N'+628691701194', N'1054 Mcbride Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (122, N'Laetitia Garrad', N'+6288618010499', N'620 Rowland Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (123, N'Andree De Hooch', N'+628766986454', N'38 Dixon Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (124, N'Winny Sculley', N'+6281951124377', N'50 Annamark Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (125, N'Iormina Jouen', N'+6283587194554', N'30 Mallory Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (126, N'Pauline Cordier', N'+6286236398550', N'6618 Clove Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (127, N'Jae Izakson', N'+62855606424', N'43 Elka Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (128, N'Tamqrah Jiras', N'+628358530258', N'57 Hoffman Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (129, N'Melvyn Raithbie', N'+62863200767', N'1563 Florence Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (130, N'Kevyn Copp', N'+6288687814736', N'12675 Messerschmidt Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (131, N'Winnie Yushmanov', N'+6289769595190', N'36455 North Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (132, N'Debbi Meiklejohn', N'+62855391797', N'46651 Tennessee Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (133, N'Waverly Pask', N'+628249690524', N'04783 Luster Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (134, N'Jordana Garlett', N'+628621514335', N'2 Sunnyside Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (135, N'Loise Cordell', N'+628389198863', N'207 Basil Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (136, N'Stefano Chafer', N'+6287116791787', N'86263 Dottie Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (137, N'Megen MacDonagh', N'+628468594626', N'129 Monterey Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (138, N'Jock Iacomini', N'+62876708602', N'39479 Utah Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (139, N'Conway Malacrida', N'+6286327614343', N'35 Eliot Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (140, N'Baird Sibary', N'+62835173945', N'992 Kim Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (141, N'Gwenora Gowthorpe', N'+6281915670997', N'50 Arrowood Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (142, N'Charlotta Ivashev', N'+6286393051433', N'754 Dovetail Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (143, N'Terry Mace', N'+6287746152446', N'35 Sunbrook Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (144, N'Clay Igo', N'+628152790378', N'7 Independence Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (145, N'Lavina Rickaert', N'+6283523427224', N'17333 Golden Leaf Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (146, N'Nadiya Tarbett', N'+6288644851293', N'43 Grayhawk Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (147, N'Vite Denkel', N'+6283809579936', N'31 Eastwood Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (148, N'Bellina Sollowaye', N'+6285120966943', N'4387 Buhler Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (149, N'Merrile Gabits', N'+62855463701', N'3998 Oriole Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (150, N'Ethan Frend', N'+6286234590075', N'092 Westridge Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (151, N'Torie Grizard', N'+62886995694', N'61743 Susan Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (152, N'Les Conerding', N'+62862268826', N'58 Springs Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (153, N'Pip Weyland', N'+6283195914625', N'831 Tony Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (154, N'Gunter Skinn', N'+628976714396', N'61494 Northridge Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (155, N'Marchelle Abrahim', N'+62855869489', N'38478 Spaight Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (156, N'Claudell Lettsom', N'+628473612428', N'418 Derek Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (157, N'Clemmie Fulstow', N'+628635565661', N'311 Stuart Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (158, N'Fowler Husher', N'+62863997796', N'19 Prentice Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (159, N'Shawn La Torre', N'+628629681046', N'62963 Kings Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (160, N'Dedra Wasylkiewicz', N'+62886141224', N'10298 Riverside Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (161, N'Agnella Preble', N'+62886900368', N'17 Clemons Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (162, N'Jane Ruddiforth', N'+62881224694', N'8 Sutteridge Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (163, N'Abe Gonnet', N'+62835810144', N'1973 Oak Valley Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (164, N'Stephie Gillie', N'+628503545288', N'6 Kedzie Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (165, N'Saudra Tunsley', N'+6282166519770', N'4657 Hooker Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (166, N'Arlena Mauger', N'+628626539164', N'4630 Mccormick Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (167, N'Merrielle Eller', N'+628931722613', N'7 Larry Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (168, N'Dorolisa Woodroof', N'+6286362816013', N'2036 Hazelcrest Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (169, N'Alberik Lintall', N'+62813142063', N'20 Burning Wood Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (170, N'Jordana Fronzek', N'+628486539984', N'1928 Lien Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (171, N'Marys Fealey', N'+6282375889323', N'0 Nelson Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (172, N'Kerk Layborn', N'+6286217567990', N'20073 Badeau Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (173, N'Laurena Snowdon', N'+628637255508', N'7 Moland Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (174, N'Christin Kirgan', N'+62835153787', N'99 Daystar Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (175, N'Wallas Messiter', N'+62838035247', N'1 Buell Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (176, N'Marylinda Sharkey', N'+628727114905', N'61181 Jay Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (177, N'Delphine Jina', N'+628862223090', N'84 Carioca Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (178, N'Yule Stanway', N'+6284611344770', N'532 Orin Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (179, N'Leonhard Sigmund', N'+62853534676', N'192 Commercial Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (180, N'Fenelia Urquhart', N'+628591603717', N'82 Moose Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (181, N'Florry Rochester', N'+6283534348838', N'30 Anthes Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (182, N'Dyan Trustie', N'+6286235746498', N'7150 Rockefeller Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (183, N'Gusella Foch', N'+6283038579813', N'4286 Oriole Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (184, N'Kelsey Malser', N'+628623026773', N'70389 Westerfield Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (185, N'Kienan Fewkes', N'+628503833489', N'76232 Corry Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (186, N'Guilbert Barham', N'+6285345689135', N'559 Brown Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (187, N'Garv Dowty', N'+628639991672', N'69 Hintze Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (188, N'Abbi Macveigh', N'+628691549768', N'1 Roth Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (189, N'Leroi Methringham', N'+6289621655382', N'7 Westend Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (190, N'Ermentrude Tickel', N'+6288508576712', N'453 Meadow Valley Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (191, N'Marlie Robichon', N'+628380351600', N'5856 Elgar Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (192, N'Gabbie Battell', N'+62842032197', N'18852 Beilfuss Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (193, N'Sonnie Gomes', N'+628982529804', N'224 Jay Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (194, N'Angeline Di Giacomettino', N'+628374334469', N'7 Badeau Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (195, N'Ludovika Rois', N'+6284614759439', N'5024 Rockefeller Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (196, N'Merrie Kobke', N'+62863555334', N'6197 Esch Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (197, N'Jeffie Dowdle', N'+62877088200', N'6528 Barby Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (198, N'Malanie Laffranconi', N'+62878196416', N'7 Thierer Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (199, N'Yancey Farington', N'+628761865341', N'0 Gulseth Point')
GO
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (200, N'Turner Holhouse', N'+62862519187', N'92364 Mesta Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (201, N'Ingram Ackermann', N'+62848715713', N'04 Stoughton Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (202, N'Wilton Ballintyne', N'+6288617790252', N'12 Dahle Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (203, N'Lotti Leys', N'+62886122117', N'92 Corben Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (204, N'Randall Lumley', N'+6288642771415', N'7263 Pawling Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (205, N'My Cutress', N'+628733378498', N'416 Aberg Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (206, N'Farlie Kibbee', N'+6288693686102', N'21 Alpine Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (207, N'Lula Wanklin', N'+628389389260', N'40 Spohn Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (208, N'Ingaborg Cholton', N'+628191260965', N'55599 Mariners Cove Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (209, N'Sean Hallgate', N'+62886770168', N'4449 Clove Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (210, N'Welbie Scutts', N'+628778922444', N'92358 Troy Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (211, N'Rustin Royce', N'+6283551664179', N'122 Sutherland Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (212, N'Vinson Shickle', N'+628468138520', N'158 Old Gate Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (213, N'Tallou Purrington', N'+628746694948', N'58686 Erie Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (214, N'Hilliary Sieghard', N'+628966657147', N'32 Lawn Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (215, N'Kaspar McCalister', N'+6284201971275', N'844 Center Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (216, N'Mae Lewinton', N'+6288666010748', N'00560 Sutherland Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (217, N'Fey Scoterbosh', N'+628994311529', N'6254 Victoria Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (218, N'Eamon Dachs', N'+62816123419', N'28 Delladonna Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (219, N'Flin Beswick', N'+6288625550200', N'5476 Hansons Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (220, N'Beilul Andress', N'+6287645691633', N'49405 Norway Maple Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (221, N'Beatrix Aveson', N'+62862247418', N'32 Linden Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (222, N'Hughie Josovitz', N'+6288638484671', N'800 Manitowish Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (223, N'Joanie Seaton', N'+62852403316', N'322 Garrison Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (224, N'Christabella Fores', N'+628867273119', N'45 Atwood Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (225, N'Roderic Ferbrache', N'+628866441567', N'89 Armistice Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (226, N'Rosaleen Yielding', N'+62837546861', N'8576 American Ash Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (227, N'Andras Bowditch', N'+6288628910711', N'444 Mayfield Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (228, N'Aymer Croser', N'+628631992434', N'51500 Briar Crest Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (229, N'Odell Minot', N'+6286268439464', N'45 Carberry Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (230, N'Sheffield Fitzmaurice', N'+628140896157', N'3958 Longview Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (231, N'Willette Ellerby', N'+62872009553', N'71873 1st Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (232, N'Lenee Breward', N'+62847293918', N'257 Graedel Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (233, N'Frank La Rosa', N'+62848458966', N'95 Everett Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (234, N'Iggy Santen', N'+62855233177', N'87760 Ridgeway Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (235, N'Jeannette Sillis', N'+628547853424', N'7494 Kipling Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (236, N'Derward Mullin', N'+628816636737', N'6428 Mallory Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (237, N'Nicki Lerven', N'+628970550706', N'4 Bultman Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (238, N'Jeanine Bergstrand', N'+628869357207', N'31 Grover Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (239, N'Aubry Eglise', N'+62848811864', N'95599 Golf Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (240, N'Bartolomeo Kestle', N'+62862343750', N'0419 Ridgeview Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (241, N'Iolande Lorent', N'+628227694334', N'5 Sloan Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (242, N'Durant Eaddy', N'+62855100741', N'90 Katie Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (243, N'Nicolais Iacivelli', N'+628966843212', N'708 Melrose Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (244, N'Nevin Ousby', N'+628855548906', N'5 Sommers Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (245, N'Stephan Nicklen', N'+628634641129', N'4637 Laurel Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (246, N'Forbes Coulthard', N'+6282676887507', N'35 Talmadge Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (247, N'Hildy Stourton', N'+62876378652', N'49 Mitchell Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (248, N'Lillian Durward', N'+62897657664', N'3163 Granby Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (249, N'Chet Stoppe', N'+62873177698', N'8 Brown Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (250, N'Dredi Bogart', N'+6289631297131', N'98432 Anniversary Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (251, N'Bentley Le Frank', N'+62877508059', N'6050 Atwood Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (252, N'Sheppard Aird', N'+6288623828896', N'77 Dawn Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (253, N'Sheffie Bates', N'+628994212721', N'09133 Fordem Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (254, N'Star Depka', N'+6288181798172', N'47 Truax Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (255, N'Arda Vlasyuk', N'+6282616515782', N'8 Kinsman Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (256, N'Marylin Ferbrache', N'+6286366349745', N'9890 Garrison Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (257, N'Daffi Jeandon', N'+62838077639', N'349 Dayton Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (258, N'Yard Roskell', N'+62879702570', N'503 Arapahoe Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (259, N'Deva Stanners', N'+62826921889', N'1 Sloan Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (260, N'Cinderella Chritchley', N'+6288623690286', N'9 Knutson Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (261, N'Carson Emmines', N'+6284204277439', N'0 Upham Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (262, N'Land McCarroll', N'+628867949039', N'28860 Hazelcrest Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (263, N'Vonni Gouth', N'+628863534653', N'58 Northport Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (264, N'Omero Goldberg', N'+6284694348123', N'181 Rigney Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (265, N'Juana Pipworth', N'+628351682676', N'0 Maryland Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (266, N'Jemmy Cruwys', N'+628175137314', N'446 Ruskin Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (267, N'Melania Creeber', N'+628822957221', N'10 Sunfield Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (268, N'Delbert Savidge', N'+6285078109426', N'479 Pleasure Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (269, N'Tucker Buttel', N'+6282655748430', N'1 Cordelia Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (270, N'Arlan Tribe', N'+6286225478787', N'76 Toban Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (271, N'Doy Gaven', N'+628664071913', N'4 Mcguire Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (272, N'Garrik Convery', N'+6283898369083', N'866 Del Mar Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (273, N'Erskine Cabell', N'+6288666891502', N'059 Coolidge Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (274, N'Kandy Garlee', N'+628461042631', N'7905 Dawn Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (275, N'Brannon Binestead', N'+62842028060', N'11632 Welch Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (276, N'Selle Cleminshaw', N'+6286394379828', N'61227 Autumn Leaf Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (277, N'Thor Bolingbroke', N'+628216794551', N'4815 Tennyson Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (278, N'Roda Simenel', N'+6285590241316', N'75755 Jenifer Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (279, N'Gasparo Issard', N'+6284614563904', N'23544 Paget Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (280, N'Tomasina Laurens', N'+628267796401', N'7469 Spohn Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (281, N'Estel Boyton', N'+628637325054', N'4 Northport Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (282, N'Rania Renol', N'+62850976595', N'3 Village Green Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (283, N'Anders House', N'+628577615454', N'67001 Stuart Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (284, N'Rourke Brasener', N'+628621764297', N'468 Shopko Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (285, N'Arvy Cammish', N'+6288624684748', N'66240 Scoville Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (286, N'Gris Benting', N'+62862729899', N'79820 Wayridge Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (287, N'Marena Farnsworth', N'+628235616949', N'847 Sundown Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (288, N'Byron Dewdney', N'+628861764380', N'0262 Roxbury Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (289, N'Oswald Dessant', N'+6288667235886', N'3440 Heath Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (290, N'Efren Brolechan', N'+6288640516461', N'7343 New Castle Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (291, N'Jasun Brawn', N'+62886232518', N'368 Northport Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (292, N'Zed Brierly', N'+6286226112779', N'4 Mcbride Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (293, N'Corabel Winters', N'+628717335290', N'5728 Merchant Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (294, N'Isador Olsson', N'+628465156538', N'31436 Superior Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (295, N'Prue Fradson', N'+628557438367', N'48563 Elmside Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (296, N'Ella Fairy', N'+62862442434', N'13 Nelson Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (297, N'Darlleen Simo', N'+628622928536', N'83343 Vahlen Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (298, N'Saunderson McCalum', N'+628355147546', N'16121 Manley Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (299, N'Spencer Pontin', N'+628812134879', N'79 Pearson Point')
GO
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (300, N'Colas Guilloton', N'+6281312580905', N'9 Hanson Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (301, N'Etty Gauld', N'+628269787809', N'92 Arapahoe Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (302, N'Stinky Blowin', N'+6288694893659', N'06227 Basil Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (303, N'Kellia Dast', N'+6283814303197', N'2 Crest Line Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (304, N'Filmore Crosthwaite', N'+6284867964008', N'50674 Forest Dale Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (305, N'Cherilynn Enderwick', N'+6286249414197', N'06 Gateway Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (306, N'Barclay Mardle', N'+62866114536', N'03670 East Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (307, N'Godfree Dearnaley', N'+6283512465142', N'52 Hudson Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (308, N'Ethelda Studd', N'+628627175652', N'546 Canary Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (309, N'Keene Rayhill', N'+628627251668', N'3370 Washington Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (310, N'Rosalie Gauge', N'+628351700975', N'42636 Montana Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (311, N'Layne Lesor', N'+628864312404', N'43 Badeau Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (312, N'Marcelline Farlamb', N'+62862387309', N'8961 Elgar Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (313, N'Lyle Terne', N'+6283511319903', N'240 Mockingbird Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (314, N'Laird McCuthais', N'+62886709988', N'64 Fremont Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (315, N'Jerome Kellet', N'+628623747261', N'85 Sauthoff Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (316, N'Maurits Bryant', N'+6284671474084', N'6606 Forest Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (317, N'Barry Stanier', N'+628553436778', N'6431 Lukken Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (318, N'Janis Dearnaley', N'+628622946710', N'52345 Pine View Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (319, N'Tamarah Durek', N'+628864389466', N'86220 Rockefeller Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (320, N'Rey Boichat', N'+628575333252', N'92101 Oriole Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (321, N'Giffard Barry', N'+628869062197', N'8759 Pierstorff Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (322, N'Fleming Billo', N'+6283512042614', N'33728 Hovde Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (323, N'Patton Jacob', N'+6286633694475', N'698 Coleman Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (324, N'Thornton Malster', N'+6287411855843', N'053 Columbus Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (325, N'Bancroft Garmey', N'+62848816897', N'1633 Acker Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (326, N'Daryn Ungerecht', N'+6284203732014', N'82 Blackbird Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (327, N'Bernard Wallsworth', N'+62886112763', N'9 Shelley Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (328, N'Janis Damant', N'+62848605924', N'7353 Dovetail Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (329, N'Olly Barles', N'+628277163310', N'899 Jay Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (330, N'Felike Hollyar', N'+62885574715', N'6096 Burrows Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (331, N'Wyndham Castillo', N'+6288628316889', N'7413 Pankratz Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (332, N'Lillis Craigmyle', N'+628636469401', N'33 Eagan Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (333, N'Evangelin Yirrell', N'+628868594898', N'39 Golf Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (334, N'Joy Thompstone', N'+6287585904125', N'0919 Summerview Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (335, N'Aube Debnam', N'+6283348956052', N'665 Mesta Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (336, N'Grannie Feitosa', N'+6284731467045', N'964 Lakewood Gardens Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (337, N'Theodosia Nash', N'+62855805254', N'69 Straubel Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (338, N'Ryun Lyvon', N'+628604127386', N'38481 Waywood Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (339, N'Lanie Eichmann', N'+6288694692923', N'27 Cherokee Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (340, N'Gloriana Gladwin', N'+6286388832860', N'89645 Dovetail Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (341, N'Shawn Hryskiewicz', N'+628627829293', N'60152 Colorado Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (342, N'Walliw Strainge', N'+6281718485332', N'34 Westend Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (343, N'Abigail Langworthy', N'+62879215190', N'65280 Hoffman Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (344, N'Marven Yuryichev', N'+62851498215', N'03 Michigan Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (345, N'Scarlet Schuh', N'+628666436326', N'00 Milwaukee Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (346, N'Saudra Tatlock', N'+6286292591165', N'4 Crownhardt Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (347, N'Hildagard Halshaw', N'+62862126658', N'0507 Cody Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (348, N'Winifred Dufoure', N'+628333622760', N'57 Melby Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (349, N'Laurena Heinreich', N'+6287991151840', N'0 Petterle Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (350, N'Tracie Dovidaitis', N'+62858960466', N'60128 Gulseth Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (351, N'Shirlee Pichmann', N'+62874661156', N'059 6th Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (352, N'Shayna Nosworthy', N'+628380192347', N'0360 7th Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (353, N'Thain Vanetti', N'+628261636836', N'93 Glacier Hill Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (354, N'Jodi Puckinghorne', N'+6283519554940', N'55 Hayes Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (355, N'Erhard Grimestone', N'+628661119161', N'25 Arrowood Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (356, N'Kaile Markwick', N'+6287852227998', N'3 Hooker Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (357, N'Luelle Plastow', N'+628868498448', N'70 Ronald Regan Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (358, N'Maggy Caughan', N'+6282538423729', N'7739 Corben Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (359, N'Berte Bolles', N'+628880672490', N'757 Warrior Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (360, N'Micaela Climance', N'+628749819109', N'04926 Bluejay Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (361, N'Evin Ham', N'+628863656646', N'7 Onsgard Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (362, N'Virgil Proughten', N'+62873168983', N'062 Texas Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (363, N'Myriam Hurdedge', N'+628819099189', N'347 Fulton Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (364, N'Athena Borsnall', N'+62886971364', N'1164 Elka Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (365, N'Janette Measey', N'+628514415929', N'21414 Bashford Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (366, N'Paulie Worshall', N'+628933587903', N'8151 Maryland Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (367, N'Teddi Barraclough', N'+62824210372', N'8238 Shasta Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (368, N'Yurik McOwan', N'+62886180932', N'19834 Erie Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (369, N'Fulton Lammerding', N'+6286649617795', N'349 Kingsford Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (370, N'Brady Cosbey', N'+62855251937', N'725 Pine View Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (371, N'Serena Trinkwon', N'+6288637643849', N'9848 Bartillon Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (372, N'Kirby Vispo', N'+6283723813096', N'5 Leroy Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (373, N'Malchy Isenor', N'+6288652586145', N'2 Derek Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (374, N'Cornela Almey', N'+6282307348564', N'00084 Jana Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (375, N'Madelon Hutchins', N'+62846695864', N'5 Scofield Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (376, N'Ardra Stowe', N'+62823475264', N'7 Hauk Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (377, N'Fredi Redit', N'+628863758375', N'3 Prentice Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (378, N'Alfie De Francesco', N'+62857333537', N'11088 Pearson Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (379, N'Minnnie Sandon', N'+628797499775', N'39740 Hoard Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (380, N'Vernen Yellop', N'+62886691957', N'244 Spaight Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (381, N'Sherilyn Pinckney', N'+6283559808896', N'02626 Morning Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (382, N'Zollie Battleson', N'+6289608859767', N'14169 Victoria Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (383, N'Gibb Scandrick', N'+62886157447', N'802 Reinke Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (384, N'Giles Kacheler', N'+6283992124340', N'43 Brentwood Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (385, N'Abbe Robion', N'+62819377423', N'4763 Little Fleur Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (386, N'Rand Cromblehome', N'+62879523588', N'14 Debs Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (387, N'Godfry Rathbone', N'+6283806288033', N'4064 Weeping Birch Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (388, N'Ely Franck', N'+62886863262', N'50 Troy Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (389, N'Rossie Redferne', N'+6283362456955', N'62755 Logan Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (390, N'Yuri Brasher', N'+62862108973', N'99 Schlimgen Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (391, N'Lyndy Whittlesey', N'+6286222914905', N'32750 Melvin Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (392, N'Jory Garatty', N'+628753961138', N'8 New Castle Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (393, N'Cordi Oughtright', N'+62862359710', N'1 Susan Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (394, N'Gardner Prothero', N'+628869176429', N'613 Judy Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (395, N'Annalise Corzor', N'+6286332324693', N'50 Jackson Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (396, N'Gregoor Mart', N'+628842512664', N'05354 Helena Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (397, N'Dore Elcoat', N'+6287226635077', N'45 David Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (398, N'Albrecht McComiskie', N'+62842047250', N'03091 Sommers Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (399, N'Nannette Wick', N'+628574697716', N'86766 Washington Center')
GO
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (400, N'Noni Vater', N'+628733111935', N'2751 Riverside Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (401, N'Erminie Teresia', N'+628863608494', N'552 Dayton Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (402, N'Ricca Kingswell', N'+62886697311', N'7 Lake View Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (403, N'Rosanna Benediktsson', N'+628864291674', N'5 Packers Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (404, N'Bernarr Geroldi', N'+6288693561943', N'6 Bartillon Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (405, N'Lutero Dacre', N'+628817912009', N'58 Hallows Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (406, N'Rossie Audenis', N'+628482717298', N'40 Mifflin Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (407, N'Dominick Aprahamian', N'+6288641881260', N'65 Reinke Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (408, N'Cyndie Reams', N'+62886132901', N'71 Pierstorff Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (409, N'Theadora Roubert', N'+6284207849378', N'7 Kings Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (410, N'Alix Pyper', N'+628965946943', N'553 Portage Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (411, N'Buck Simunek', N'+6286383097743', N'5172 Rieder Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (412, N'Minne Feakins', N'+6286219360961', N'1400 Ludington Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (413, N'Christin Dillaway', N'+62842019092', N'135 Lakewood Gardens Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (414, N'Arlena Cleghorn', N'+628604261554', N'29 Michigan Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (415, N'Claudelle Bleasdille', N'+628784280941', N'41975 Debs Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (416, N'Jesse Klesl', N'+62838554564', N'5 Erie Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (417, N'Magdaia Klimshuk', N'+6285430371792', N'98 Randy Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (418, N'Skipp Kilbride', N'+62862387503', N'48 Oak Valley Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (419, N'Town Lindenfeld', N'+628386284754', N'324 Union Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (420, N'Hermione Firpi', N'+628867741092', N'9554 Upham Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (421, N'Roscoe Bodd', N'+62862490105', N'88231 Lawn Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (422, N'Genovera Eastgate', N'+6283342633872', N'78667 Fulton Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (423, N'Jefferey Marian', N'+62833185875', N'34059 Linden Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (424, N'Alvis Petyankin', N'+62886425569', N'63069 Jenifer Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (425, N'Zelda Pimme', N'+6287203876430', N'34000 Elka Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (426, N'Christophe Dunne', N'+62886786737', N'81441 Johnson Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (427, N'Kenny Lodin', N'+62863744978', N'41 Grayhawk Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (428, N'Bax Birdall', N'+62855759285', N'739 Drewry Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (429, N'Brenden Sail', N'+628338285338', N'9098 Sullivan Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (430, N'Lavinia Alessandrucci', N'+62838048051', N'204 Twin Pines Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (431, N'Daisie Pottie', N'+62899465489', N'55780 Basil Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (432, N'Fayina Batterbee', N'+62824280489', N'65823 Spaight Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (433, N'Stefanie Cummungs', N'+62862165868', N'536 Washington Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (434, N'Cedric Punch', N'+62842076930', N'537 Ludington Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (435, N'Ellette Staziker', N'+62886146225', N'4450 Meadow Ridge Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (436, N'Hailee Gynne', N'+6283554923850', N'8 Kingsford Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (437, N'Flory Howsego', N'+62848952322', N'0427 Vahlen Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (438, N'Jacqueline Leward', N'+628866491916', N'9 Waywood Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (439, N'Gabriella Adcock', N'+628775733192', N'38 Scott Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (440, N'Lammond Groom', N'+6285526341339', N'00 Beilfuss Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (441, N'Frederico Penk', N'+62859164062', N'92692 Haas Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (442, N'Dorotea Drains', N'+62826316946', N'1983 Fuller Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (443, N'Bert Ezzy', N'+6281512987004', N'3204 Macpherson Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (444, N'Jaye Brazear', N'+6284839972345', N'887 Nevada Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (445, N'Marion Blight', N'+62821289047', N'21 Canary Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (446, N'Geneva Jewson', N'+628335785400', N'9 Ridge Oak Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (447, N'Gena Pexton', N'+628865534892', N'6 Ridgeview Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (448, N'Christalle Sygroves', N'+62886464116', N'3 Sachs Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (449, N'Berkie Esh', N'+628815882421', N'09 Shoshone Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (450, N'Cairistiona Sennett', N'+628572831866', N'010 5th Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (451, N'Farlay Donke', N'+6288634928275', N'6 Brickson Park Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (452, N'Kessia Sillett', N'+62886791550', N'1 Dexter Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (453, N'Kalinda Beenham', N'+6282348301101', N'503 Amoth Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (454, N'Bunni Jina', N'+62833370137', N'69521 Surrey Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (455, N'Zoe McCloughlin', N'+6286222324164', N'8636 Vidon Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (456, N'Naoma Auger', N'+6285933987222', N'671 Packers Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (457, N'Bettine Brown', N'+6288629619024', N'76815 Clyde Gallagher Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (458, N'Doria McKennan', N'+62886399949', N'77833 Oneill Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (459, N'Yelena Clemenzo', N'+6283539966989', N'1 Cascade Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (460, N'Afton Hellin', N'+628749969329', N'25 Muir Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (461, N'Agretha Ciccone', N'+62862240950', N'072 Morningstar Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (462, N'Vicky Penbarthy', N'+62863594907', N'20 Sauthoff Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (463, N'Gweneth Penhalewick', N'+62892803450', N'902 Merchant Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (464, N'Mickie Insley', N'+628555492098', N'21 Forest Dale Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (465, N'Tim Irnis', N'+6284656580595', N'8 Heath Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (466, N'Pepi Diddams', N'+628337943316', N'876 Forest Dale Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (467, N'Wilmer Finnigan', N'+628864853731', N'58 5th Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (468, N'Tanney Banaszkiewicz', N'+62862326331', N'61756 Forster Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (469, N'Ethe Wassung', N'+6283802713943', N'8751 Center Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (470, N'Nobe Genge', N'+6283872229837', N'02 Westend Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (471, N'Charil Ary', N'+628552568383', N'9830 Graedel Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (472, N'Cristabel Asel', N'+6284203545363', N'5499 Dottie Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (473, N'Robenia Brellin', N'+62837061333', N'94 Dottie Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (474, N'Rodina Blakey', N'+62874344138', N'704 Judy Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (475, N'Tye Zottoli', N'+6285029453604', N'6 Longview Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (476, N'Jon Munnis', N'+6286897633687', N'543 Scoville Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (477, N'Ware Lowne', N'+62848469619', N'9204 Dexter Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (478, N'Der Tumioto', N'+62859171763', N'9812 Kipling Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (479, N'Murial Hatch', N'+6286215489934', N'07 Warrior Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (480, N'Jammal Timlin', N'+6288698268371', N'85 Mallory Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (481, N'Beniamino Turfrey', N'+62838018528', N'2750 Columbus Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (482, N'Corabelle Faireclough', N'+62862697590', N'7721 Emmet Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (483, N'Felice Stork', N'+62886802959', N'713 Vera Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (484, N'Fidole Goare', N'+62842084893', N'2 New Castle Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (485, N'Rosie Outlaw', N'+6283803733136', N'4 Kropf Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (486, N'Phyllis Baker', N'+6287291242534', N'00610 Iowa Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (487, N'Alfonso Jurisch', N'+628141512163', N'0 Schurz Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (488, N'Carmelia Chatelain', N'+628867708187', N'4951 Sloan Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (489, N'Milena McCalister', N'+6285324375892', N'70 Novick Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (490, N'Caril Whodcoat', N'+6287598819945', N'8 Sloan Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (491, N'Josie Rathbourne', N'+628635647414', N'784 Delaware Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (492, N'Aurea Gotcliff', N'+628636946322', N'57418 Linden Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (493, N'Kristy Dodsley', N'+6285525290420', N'874 Service Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (494, N'Giacobo Brockett', N'+628595144463', N'9 Holmberg Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (495, N'Patten Samways', N'+6285315894768', N'40100 Crest Line Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (496, N'Gerrard Kerrey', N'+62849408111', N'3350 Hayes Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (497, N'Gannie Pearn', N'+6283518076712', N'3323 Spaight Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (498, N'Trudie Mc Gaughey', N'+6288684818231', N'29557 Di Loreto Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (499, N'Valle Hyde', N'+62886196619', N'2474 Jenna Plaza')
GO
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (500, N'Godfrey Arnald', N'+628307681677', N'937 Main Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (501, N'Graham Reeders', N'+6286315857585', N'1326 East Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (502, N'Conrad Macenzy', N'+62886367588', N'383 Harper Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (503, N'Justis Seden', N'+628678315691', N'7974 Ludington Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (504, N'Erik Nuton', N'+62886912133', N'622 Stoughton Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (505, N'Brantley Farahar', N'+628861846592', N'3720 Bashford Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (506, N'Vasily Gashion', N'+6283313268554', N'75876 Independence Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (507, N'Artus Kinforth', N'+6283163030916', N'25 Lyons Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (508, N'Betta Slator', N'+628420162629', N'43595 Kipling Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (509, N'Margeaux Allibone', N'+628336324142', N'7310 Ryan Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (510, N'Lutero Pirrey', N'+62886383960', N'5 Tomscot Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (511, N'Charmaine Newarte', N'+62877732315', N'53577 Petterle Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (512, N'Mandy Stedson', N'+6288658221421', N'8110 Westerfield Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (513, N'Zacherie Okenfold', N'+62848227914', N'2862 Gulseth Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (514, N'Jemimah Bernardelli', N'+62823440837', N'7 Forest Run Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (515, N'Doralyn Farrans', N'+628306013383', N'697 Badeau Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (516, N'Nolan Denington', N'+628863534932', N'207 Mandrake Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (517, N'Tann Laidel', N'+6286286058564', N'174 Farwell Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (518, N'Doti Hancell', N'+628487977839', N'0 Mccormick Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (519, N'Shannon Stapforth', N'+62851760408', N'77 Autumn Leaf Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (520, N'Archambault Fernie', N'+628624405278', N'383 Main Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (521, N'Colet McPheat', N'+628522372124', N'68 Troy Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (522, N'Lida Braine', N'+62827606561', N'59601 Mitchell Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (523, N'Shoshana Orht', N'+62835140450', N'7 Dennis Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (524, N'Troy Osipov', N'+6286250484409', N'38382 Nova Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (525, N'Lanae Cokayne', N'+628637243664', N'70 Anthes Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (526, N'Wendye Hallad', N'+628972546826', N'1 4th Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (527, N'Nettie Kevlin', N'+62835157321', N'33261 David Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (528, N'Gwynne Grisenthwaite', N'+6283589892869', N'5635 Mallard Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (529, N'Clarice Hynson', N'+6284922590405', N'67 Michigan Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (530, N'Thorsten Souch', N'+6288622041676', N'1072 Birchwood Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (531, N'Jobie McTerlagh', N'+62897075421', N'75976 Main Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (532, N'Anabel Le Jean', N'+6283367097093', N'39 Sunfield Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (533, N'Hayley Pooley', N'+6282759245335', N'19796 Vernon Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (534, N'Calli Dimblebee', N'+628866403427', N'9049 Village Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (535, N'Khalil Lukes', N'+6283078232791', N'28543 Oxford Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (536, N'Lona Birdwhistell', N'+628317309627', N'5 Dexter Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (537, N'Polly Iskowitz', N'+62825655443', N'336 Carey Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (538, N'Elisha Breton', N'+62812536729', N'29 Sutherland Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (539, N'Nolly Abbay', N'+6288656337829', N'1036 Longview Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (540, N'Kellsie Carlone', N'+628869348507', N'227 Reindahl Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (541, N'Easter Keyes', N'+628471609557', N'7 Hayes Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (542, N'Melisent Harrap', N'+628559233828', N'4531 Corscot Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (543, N'Lotty Veasey', N'+6283022429399', N'2 Birchwood Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (544, N'Michail Ackroyd', N'+62874662118', N'52959 Nevada Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (545, N'Allistir Brandel', N'+6286326842852', N'82036 Derek Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (546, N'Andrea MacCurlye', N'+62863668172', N'8 Eliot Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (547, N'Bucky Sainsberry', N'+6286349147104', N'083 Norway Maple Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (548, N'Niko Wisedale', N'+628866893738', N'4 Scoville Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (549, N'Wayne Bangiard', N'+6286393736635', N'67 Blaine Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (550, N'Eliot Baugh', N'+6286703606895', N'858 6th Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (551, N'Priscilla Najera', N'+6288226973034', N'67 Clyde Gallagher Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (552, N'Page Dunsire', N'+6286386283980', N'4302 Roth Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (553, N'Wash Armistead', N'+628351272399', N'6 Vera Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (554, N'Jeri Ravenscroftt', N'+62886181510', N'167 Fallview Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (555, N'Adolpho Nono', N'+628766153955', N'52784 Memorial Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (556, N'Flemming Rushmer', N'+6288664856987', N'60 Manitowish Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (557, N'Florance MacCallester', N'+62886483419', N'5 Armistice Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (558, N'Amii Rushbrooke', N'+628334914236', N'2641 Trailsway Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (559, N'Gertrud MacKnight', N'+62871411212', N'9 Iowa Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (560, N'Ewen Scholey', N'+62855210909', N'97129 Fallview Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (561, N'Aurthur Colegrove', N'+62835160645', N'3347 Fairfield Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (562, N'Amelia Americi', N'+62837475687', N'4 Anniversary Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (563, N'Kevina Sockell', N'+6286287335891', N'46 Karstens Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (564, N'Eula Oneil', N'+628779150088', N'9 Hudson Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (565, N'Sapphira Boobier', N'+628849107383', N'78151 Emmet Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (566, N'Lishe Stancliffe', N'+62848321228', N'3811 Glacier Hill Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (567, N'Shelton Brotherwood', N'+62898152916', N'92 Division Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (568, N'Brear Wyre', N'+6284677989707', N'3749 Schmedeman Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (569, N'Petr Coston', N'+62835162245', N'3 Dayton Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (570, N'Ethel Edgley', N'+62833725927', N'11367 Schurz Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (571, N'Bren Littlekit', N'+628865028613', N'01821 Tony Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (572, N'Yolane Kerwen', N'+628276276954', N'25 Colorado Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (573, N'Kirbie Garrity', N'+628864793649', N'6578 Bayside Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (574, N'Netta Ziemsen', N'+62886966812', N'737 Sunfield Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (575, N'Bard Yexley', N'+62850794870', N'1 Graceland Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (576, N'Ilka Duding', N'+6285383516169', N'1 Fairfield Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (577, N'Jake Ughelli', N'+6286877832523', N'8 Green Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (578, N'Heall McCotter', N'+628254611474', N'9 Duke Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (579, N'Kerry Mateus', N'+6287756980078', N'75556 Kenwood Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (580, N'Anne-corinne Kennedy', N'+62886481532', N'18343 Red Cloud Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (581, N'Gideon Vardie', N'+62886282365', N'1937 Florence Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (582, N'Court Ganford', N'+62862475290', N'8 Namekagon Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (583, N'Tab Ebbings', N'+62860755833', N'91781 Utah Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (584, N'Ryan Chazotte', N'+62812809202', N'32 Maywood Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (585, N'Blinnie Neillans', N'+6282601112511', N'90 Crest Line Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (586, N'Fanechka Pecht', N'+6288616564440', N'16194 Beilfuss Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (587, N'Virgil Lougheid', N'+628338135577', N'1 Mitchell Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (588, N'Jeri Zarfai', N'+6285460781293', N'48 Oneill Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (589, N'Shel Sink', N'+628862718265', N'1 Luster Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (590, N'Chaunce Lockitt', N'+62857533870', N'88375 Sundown Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (591, N'Allis Ivatt', N'+628774358591', N'187 Moland Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (592, N'Mina Boles', N'+62886846337', N'2599 Pepper Wood Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (593, N'Broddie Ros', N'+628420388546', N'5 Knutson Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (594, N'Clarabelle Phillpot', N'+62898964187', N'57475 Ridge Oak Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (595, N'Gill Giddy', N'+628866623619', N'79 Carioca Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (596, N'Frederic MacGowing', N'+628549403364', N'49744 Rutledge Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (597, N'Emmi Easlea', N'+62830106823', N'5 Oxford Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (598, N'Audrie Renny', N'+62849317934', N'85 Northwestern Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (599, N'Dorice Hawkshaw', N'+6286352580733', N'7252 Arizona Road')
GO
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (600, N'Guendolen Rattenbury', N'+62850328619', N'7822 Doe Crossing Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (601, N'Flore Dodd', N'+62835126818', N'87 Florence Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (602, N'Pinchas Di Ruggero', N'+6285684892112', N'8360 Bayside Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (603, N'Frayda Kits', N'+6288670540361', N'80223 Nobel Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (604, N'Chrissie Gonthier', N'+62847488759', N'554 Artisan Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (605, N'Shanda MacCartney', N'+62835116744', N'25817 Mitchell Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (606, N'Delano Beckensall', N'+628574712060', N'8 Texas Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (607, N'Cosme Sayle', N'+6287547491304', N'29776 Algoma Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (608, N'Reuben Sebrens', N'+628811044736', N'37747 Buhler Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (609, N'Serena Tregust', N'+628869435966', N'2 Mayer Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (610, N'Norry Gamwell', N'+62825444157', N'581 Express Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (611, N'Carmella Duesbury', N'+6285271865220', N'77971 Westport Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (612, N'Louis Gillogley', N'+62884992561', N'5782 Warrior Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (613, N'Vinny Gepson', N'+628866937318', N'18 Fordem Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (614, N'Clevey McLemon', N'+6288650911449', N'2336 Stephen Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (615, N'Mable Schooley', N'+628863952767', N'9 Cambridge Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (616, N'Augusto Salway', N'+6289292331073', N'5 Vahlen Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (617, N'Agnola Steger', N'+62817638392', N'4426 Sommers Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (618, N'Cindelyn Richardt', N'+628497077157', N'0 Nobel Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (619, N'Dory Hillborne', N'+6285536095411', N'928 Spohn Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (620, N'Phylys Sterman', N'+62886119935', N'4 South Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (621, N'Bink Wohlers', N'+628625683330', N'3 Debra Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (622, N'Kally Cudiff', N'+6285577292772', N'2999 Tennessee Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (623, N'Bendite Trattles', N'+62886643551', N'1 Hazelcrest Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (624, N'Maddi McDermott', N'+628154624374', N'71 Grasskamp Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (625, N'Obadiah Gurnett', N'+628764232948', N'11 North Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (626, N'Brand Christopherson', N'+62838093891', N'867 Northland Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (627, N'Gelya Croce', N'+6283314828223', N'6887 Spaight Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (628, N'Amelita Outerbridge', N'+6286267788517', N'20 Havey Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (629, N'Ruttger Waberer', N'+628273276361', N'9640 Nova Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (630, N'Myron Kitchin', N'+62842084897', N'6 Melvin Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (631, N'Madison Sporton', N'+62837488574', N'9834 Cambridge Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (632, N'Omero Kinney', N'+628624412876', N'1571 Acker Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (633, N'Filbert Rout', N'+62886964786', N'4 Bluejay Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (634, N'Keary Heinrici', N'+62886410257', N'1 Grim Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (635, N'Falito Reilinger', N'+628581906077', N'70897 Raven Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (636, N'Crichton Ruscoe', N'+628944946060', N'8305 Norway Maple Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (637, N'Malynda Rossin', N'+62886478938', N'2 Northview Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (638, N'Beryle Measor', N'+6282516963610', N'2927 Spohn Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (639, N'Cleopatra Freeborn', N'+62854404953', N'855 Shelley Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (640, N'Tobi Ornils', N'+62848854101', N'47 Meadow Valley Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (641, N'Tyrus Kersey', N'+628156170383', N'71 Oxford Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (642, N'Cleo Beverstock', N'+62815735827', N'835 Armistice Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (643, N'Kriste Pawlowicz', N'+62857786596', N'33326 Doe Crossing Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (644, N'Meggi De Blase', N'+62899549656', N'45878 Texas Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (645, N'William Gurton', N'+6283088277004', N'8822 Roxbury Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (646, N'Vale Sharply', N'+628355764457', N'76065 Eagan Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (647, N'Keriann Gamble', N'+6287539955746', N'198 School Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (648, N'Ilise Erwin', N'+62886941124', N'389 School Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (649, N'Carlie Rasper', N'+628621673393', N'330 Rieder Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (650, N'Michaeline Le Cornu', N'+62862674109', N'2 Johnson Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (651, N'Keary Streetfield', N'+6284624944370', N'403 Tennessee Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (652, N'Delphinia Gathercole', N'+628970845970', N'80717 Kenwood Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (653, N'Roberto Skotcher', N'+628351818139', N'396 Jenifer Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (654, N'Gussi Portingale', N'+62886430823', N'68 Steensland Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (655, N'Jefferey Stubbe', N'+6286214090218', N'77 Annamark Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (656, N'Ajay Jeffryes', N'+6283809371159', N'31531 Utah Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (657, N'Charlotta Kyrkeman', N'+628334114173', N'25 Hollow Ridge Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (658, N'Teodorico Tiebe', N'+62855209427', N'671 Scoville Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (659, N'Mindy Hennington', N'+628351952925', N'0 Ruskin Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (660, N'Charmian Douce', N'+628623116841', N'92 Eastlawn Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (661, N'Rutherford Dupey', N'+6285518422565', N'05291 Service Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (662, N'Dreddy Cock', N'+62838921735', N'054 Division Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (663, N'Carey Sealey', N'+6286384049791', N'8419 Arizona Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (664, N'Jobie McBeith', N'+6283716675662', N'65094 American Ash Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (665, N'Flory Haggas', N'+628869108296', N'41566 Talisman Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (666, N'Wini Rohlfing', N'+628624171027', N'8 Commercial Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (667, N'Grenville Teulier', N'+62826025045', N'8 Charing Cross Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (668, N'Tiffanie Golagley', N'+628374108116', N'7434 7th Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (669, N'Terza Healeas', N'+62852383512', N'528 Gina Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (670, N'Kyle Tarbath', N'+6287735811572', N'826 Sage Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (671, N'Lind Casper', N'+6288697150603', N'2197 Blaine Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (672, N'Natal Beacock', N'+6288626855965', N'92668 Truax Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (673, N'Hunter Crennan', N'+628121564592', N'64661 Carberry Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (674, N'Mordy Wyant', N'+628301881076', N'60 Loomis Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (675, N'Gustav Hammerberg', N'+628386472874', N'27 Lake View Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (676, N'Sibylla Broadhead', N'+62852663516', N'45 Northfield Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (677, N'Euphemia Malins', N'+6283097491331', N'25 Calypso Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (678, N'Chickie Canas', N'+62886900767', N'56 Hazelcrest Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (679, N'Augustus Gilley', N'+628461193023', N'506 Alpine Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (680, N'Zacharias Giovannardi', N'+62895547892', N'7380 Heffernan Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (681, N'Wilek Wassell', N'+62862430382', N'8 Badeau Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (682, N'Lissi Allday', N'+62886558898', N'37 Anniversary Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (683, N'Nissa MacCartair', N'+6283743927916', N'8355 Everett Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (684, N'Lelia Tootal', N'+62862982345', N'3273 Anniversary Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (685, N'Hieronymus Gaynes', N'+628866885903', N'5 Sauthoff Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (686, N'Beverly Philipp', N'+6288623040725', N'2 Veith Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (687, N'Marsha Deller', N'+62862531192', N'06 Cottonwood Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (688, N'Lacy Gallgher', N'+62862849204', N'335 School Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (689, N'Domini Schoolcroft', N'+628304784936', N'78728 Talisman Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (690, N'Hayyim Panas', N'+628622174846', N'29 Bartillon Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (691, N'Jessy Dever', N'+62886582144', N'5575 Sutteridge Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (692, N'Thorin Panks', N'+62886603823', N'01 Artisan Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (693, N'Jessika Lightowler', N'+6285751228285', N'381 Vahlen Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (694, N'Lishe Heinrici', N'+628868108259', N'4979 Marquette Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (695, N'Lilyan McClymont', N'+628819772180', N'75322 Pepper Wood Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (696, N'Melisande Creddon', N'+628548835424', N'0014 Kinsman Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (697, N'Humfrey Farrans', N'+628504537706', N'6 Caliangt Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (698, N'Jarret Bosenworth', N'+628866768429', N'5448 Gulseth Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (699, N'Humfrey Trude', N'+628481919881', N'46946 Melvin Center')
GO
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (700, N'Rahal Tomas', N'+6284848291183', N'3 Harbort Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (701, N'Kliment Mallalieu', N'+6284653197367', N'31725 Hudson Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (702, N'Consalve Canto', N'+62814514936', N'85 Schmedeman Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (703, N'Smith Lillo', N'+62886267867', N'36609 Crownhardt Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (704, N'Shela Hosburn', N'+6285232694728', N'1 Monica Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (705, N'Emelita Lashmar', N'+6287635388586', N'6 Northfield Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (706, N'Valdemar Dikelin', N'+628477456887', N'21 Morningstar Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (707, N'Vania Juarez', N'+628714284736', N'5020 Sunfield Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (708, N'Tani Kinavan', N'+6285937029064', N'36 Garrison Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (709, N'Gusty Brech', N'+6281626484242', N'992 Ludington Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (710, N'Mayor Goshawk', N'+6287314214787', N'05 Katie Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (711, N'Kinna Ricioppo', N'+62838927877', N'4703 Russell Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (712, N'Elly Story', N'+628351475823', N'3 Doe Crossing Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (713, N'Chris Hews', N'+62886916360', N'4858 Spaight Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (714, N'Fredric Vanyarkin', N'+6283804343761', N'7 Dovetail Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (715, N'Demeter Finnan', N'+6287885718224', N'5361 Lerdahl Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (716, N'Herve Sposito', N'+6282288931946', N'90263 Tennyson Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (717, N'Abrahan Rusted', N'+62886588152', N'328 Stephen Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (718, N'Gaynor Astie', N'+6283362579094', N'6512 Welch Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (719, N'Dyane Jorden', N'+62886771149', N'14472 Lotheville Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (720, N'Wilhelm Hollerin', N'+62814056609', N'45806 Stuart Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (721, N'Greg Warren', N'+628861502413', N'03 Sherman Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (722, N'Marsh Lambrick', N'+62881653682', N'6 Caliangt Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (723, N'Andeee Iddins', N'+6287266887921', N'81155 Arrowood Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (724, N'Baxy Benettolo', N'+6283517636109', N'49 Boyd Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (725, N'Chase Boucher', N'+628625999213', N'75913 Continental Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (726, N'Dulcia Windle', N'+6283513064140', N'87482 Parkside Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (727, N'Loralyn Harder', N'+6288612420041', N'01748 Orin Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (728, N'Anselm Donovan', N'+628816213632', N'17821 Montana Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (729, N'Carolan Peye', N'+6283358491978', N'7439 Stoughton Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (730, N'Guglielma Rooms', N'+628868814148', N'93 Graceland Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (731, N'Thadeus Middleton', N'+628636392952', N'01293 Mandrake Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (732, N'Gayel Siene', N'+6282126227668', N'4842 Sutherland Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (733, N'Susette Kirkman', N'+628760944071', N'5531 School Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (734, N'Tori Jerdan', N'+6285289344248', N'77038 Muir Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (735, N'Wally Klimas', N'+628212812776', N'73467 Truax Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (736, N'Konstance McMorland', N'+62886753774', N'34829 Arkansas Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (737, N'Billye Liptrot', N'+62862857204', N'365 Luster Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (738, N'Kelley Oakey', N'+62886790305', N'4732 Larry Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (739, N'Jeremiah Kindall', N'+62817793955', N'0534 Moulton Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (740, N'Clotilda Flett', N'+628811492018', N'51969 Commercial Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (741, N'Erma Dechelle', N'+6286296374760', N'42 Holmberg Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (742, N'Gennifer Jordeson', N'+62838943745', N'37 Mayfield Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (743, N'Newton Allanby', N'+62833827330', N'7 Messerschmidt Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (744, N'Cherie Lighten', N'+6283896516191', N'86319 Artisan Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (745, N'Eduardo Smithers', N'+62851402691', N'7 Kim Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (746, N'Dorette Mallinar', N'+62896219045', N'52012 La Follette Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (747, N'Nero Jearum', N'+6286247486300', N'2 Manufacturers Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (748, N'Laurel Burley', N'+6283599493752', N'325 Forest Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (749, N'Andreas Hawke', N'+6286680319196', N'4419 Hoffman Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (750, N'Baudoin Jobbins', N'+62886974972', N'5 Pawling Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (751, N'Loree Pilkington', N'+62862491300', N'275 Prairie Rose Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (752, N'Pietro McLucky', N'+6286360665416', N'4 Crownhardt Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (753, N'Vivyan Nequest', N'+628351104552', N'1898 Luster Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (754, N'Gusty Ordish', N'+628121565112', N'810 Melrose Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (755, N'Stepha Ohms', N'+62886619890', N'774 Butternut Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (756, N'Sibel Faley', N'+6286068048933', N'98001 Dakota Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (757, N'Bessie Bownd', N'+6289727568323', N'34 Novick Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (758, N'Aluin Lathe', N'+6285311346327', N'74 Welch Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (759, N'Deborah Aspall', N'+6289625838353', N'29 Express Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (760, N'Renell Feak', N'+6286211195529', N'18177 Manley Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (761, N'Doris Ibell', N'+6285936239187', N'2 Waxwing Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (762, N'Man Trebilcock', N'+62862541836', N'9 Crest Line Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (763, N'Mella Janoch', N'+6286350082366', N'88 Quincy Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (764, N'Kaine Elsom', N'+628131378030', N'0940 Dawn Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (765, N'Ashlee Smidmore', N'+628206861652', N'07 Hoard Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (766, N'Marylee Rumbellow', N'+628468496199', N'1 Tony Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (767, N'Fons Antcliffe', N'+628866511249', N'01776 Hanover Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (768, N'Sophia Iglesiaz', N'+628486784241', N'52 High Crossing Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (769, N'Phillipp Ahlf', N'+628574903526', N'0 Bartillon Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (770, N'Reuben Swanston', N'+6287316483882', N'3280 Sutherland Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (771, N'Carmen Rubinovitch', N'+628865787878', N'07308 Autumn Leaf Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (772, N'Grissel Lichtfoth', N'+6286257160153', N'1 Mallard Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (773, N'Creigh Cundict', N'+6288696217794', N'98 Elgar Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (774, N'Remington Trimming', N'+6286251060867', N'7 Bunting Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (775, N'Arlin Joisce', N'+62851213841', N'648 Packers Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (776, N'Danell Rawet', N'+62842055229', N'42913 Doe Crossing Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (777, N'Sylvan Gorgen', N'+62886525640', N'248 Almo Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (778, N'Forester Tante', N'+628862104762', N'7 Forest Run Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (779, N'Dorris Bremond', N'+62863480672', N'724 Gateway Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (780, N'Sasha Kielty', N'+62825568918', N'9671 Dottie Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (781, N'Selle Ingham', N'+6282363251244', N'526 Lighthouse Bay Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (782, N'Haily Hawking', N'+62862406292', N'032 Ridge Oak Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (783, N'Hughie Ramsbotham', N'+62842028614', N'40760 Quincy Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (784, N'Kelley Flanigan', N'+62838126891', N'944 Village Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (785, N'Caritta Botham', N'+628861545530', N'2 Warner Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (786, N'Gwyneth Dadson', N'+6285518593483', N'20420 Hagan Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (787, N'Mara Rolling', N'+6288694845210', N'2233 Nelson Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (788, N'Gennifer Malden', N'+62862270510', N'4300 Steensland Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (789, N'Iver Pilmer', N'+6286238337573', N'29 Paget Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (790, N'Poul Djokovic', N'+6285898522682', N'058 Tennyson Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (791, N'Robbin Runge', N'+62855752185', N'95937 Northland Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (792, N'Carleen Rosenkranc', N'+628481996934', N'26955 Waxwing Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (793, N'Ellsworth Warmisham', N'+62897098648', N'04073 Linden Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (794, N'Tessa Schusterl', N'+62838671910', N'4179 1st Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (795, N'Tonie Darridon', N'+6288199176469', N'28 Anzinger Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (796, N'Carlie Reyne', N'+62835185883', N'6 Leroy Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (797, N'Leone Barhims', N'+62896451916', N'7812 Oak Valley Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (798, N'Noble Le Barr', N'+6285057524803', N'398 Maple Wood Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (799, N'Walton Tottie', N'+6288121912061', N'4376 Reindahl Alley')
GO
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (800, N'Erv Prestedge', N'+628865998671', N'9520 Sachtjen Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (801, N'Bevin Brogan', N'+62842028637', N'636 Hanover Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (802, N'Dani Lippi', N'+628773717000', N'48 Thompson Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (803, N'Arlin Arthurs', N'+6288660085998', N'064 Spaight Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (804, N'Frederica Oldknow', N'+6284861246765', N'70 Daystar Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (805, N'Wilek Skaif', N'+6286245057446', N'95740 Miller Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (806, N'Morry Elph', N'+628383232765', N'88432 Crescent Oaks Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (807, N'Jareb Freyn', N'+6283816551798', N'64 Hauk Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (808, N'Roselle Derye-Barrett', N'+628555696509', N'5 Wayridge Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (809, N'Osbert Askey', N'+62884207488', N'4496 Armistice Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (810, N'Royal Coote', N'+62881295541', N'895 Village Green Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (811, N'Cosmo Kenealy', N'+6284879720090', N'7 Paget Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (812, N'Trixie Stokes', N'+62863357423', N'672 Superior Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (813, N'Lonnard Burnsyde', N'+62886669436', N'19758 Steensland Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (814, N'Jamil Kurt', N'+62863264620', N'02 Old Gate Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (815, N'Rufe Metrick', N'+6286363397500', N'76661 Gale Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (816, N'Marven Gallo', N'+628628166793', N'44623 Loomis Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (817, N'Lenci Claire', N'+6282347562055', N'5981 Texas Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (818, N'Bennie Leming', N'+6285197161192', N'12 Algoma Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (819, N'Geraldine Roiz', N'+62830572699', N'8 Tomscot Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (820, N'Rice McLaggan', N'+628381491265', N'462 Dorton Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (821, N'Sibley Samweyes', N'+628483172760', N'5994 Talmadge Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (822, N'Bliss Alam', N'+628621486603', N'504 Arrowood Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (823, N'Jerrie Keesman', N'+6284835787180', N'26 Oak Valley Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (824, N'Mariska Jirka', N'+6283803685934', N'48668 Bunting Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (825, N'Johnna Calbaithe', N'+62886777117', N'089 Gale Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (826, N'Garrard Coetzee', N'+6286928937229', N'91 Mosinee Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (827, N'Fiann McKernon', N'+6288617527226', N'0657 Coleman Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (828, N'Isa Andrews', N'+6282717611893', N'83 7th Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (829, N'Raye Furneaux', N'+62831325409', N'645 Anthes Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (830, N'Mordy Lembcke', N'+62838089188', N'2102 Division Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (831, N'Worth Brugsma', N'+6283571972119', N'0 Ilene Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (832, N'Dacia Piscot', N'+62855483342', N'10266 Lakeland Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (833, N'Claudina Spinetti', N'+62838059382', N'2051 Vidon Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (834, N'Marlow Knellen', N'+62886865300', N'08 Bellgrove Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (835, N'Mahalia Castagneto', N'+6288243958901', N'05705 Myrtle Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (836, N'Deeyn Strainge', N'+628631959263', N'857 Marcy Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (837, N'Darya Kenner', N'+6285596336787', N'7 Bay Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (838, N'Timofei Feasby', N'+62886625242', N'67 Monica Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (839, N'Wallie Croal', N'+628486093779', N'87 Sunfield Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (840, N'Lorenzo Flett', N'+62863625458', N'71025 Artisan Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (841, N'Deonne Dunkinson', N'+62886586996', N'3496 Grayhawk Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (842, N'Saw Ranald', N'+62863569393', N'160 Crownhardt Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (843, N'Jacquie Dunrige', N'+62833390931', N'9 Artisan Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (844, N'Chrystel Amberg', N'+62862203414', N'8708 Stephen Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (845, N'Gabey Sailes', N'+6288635362775', N'7553 Lillian Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (846, N'Keane Erswell', N'+62862884378', N'81991 Sycamore Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (847, N'Rosie Fackrell', N'+6285278655671', N'03 Westend Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (848, N'Merridie Linturn', N'+628865571190', N'7 Mcguire Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (849, N'Charmine Skipworth', N'+628627574405', N'6317 Cordelia Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (850, N'Donny Berney', N'+62830990730', N'038 Oriole Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (851, N'Ellyn Newtown', N'+6285078581474', N'84 Caliangt Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (852, N'Audry Lording', N'+628633711196', N'9 Forster Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (853, N'Chiquia Dumbrall', N'+62815665702', N'3944 Heffernan Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (854, N'Felicio Sandcraft', N'+6286232165377', N'5 Roxbury Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (855, N'Sibyl Beeck', N'+62833544561', N'67844 Truax Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (856, N'Field Bickers', N'+6288144663467', N'90867 Mesta Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (857, N'Lorin Gilby', N'+6287600714286', N'4 Mariners Cove Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (858, N'Malcolm Bradburne', N'+62866614321', N'761 Dunning Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (859, N'Jenda Cauley', N'+62848768491', N'11 Marquette Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (860, N'Jobie Liggins', N'+6285149515432', N'7 Lakewood Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (861, N'Darby Dincke', N'+6282638938596', N'2826 Summit Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (862, N'Tabbi Samart', N'+62862258443', N'91894 Fallview Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (863, N'Berton Lennon', N'+6285193149491', N'37162 Anhalt Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (864, N'Kirby McCaffrey', N'+6288663235471', N'5600 Portage Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (865, N'Hildy Doleman', N'+628471153378', N'69655 Green Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (866, N'Betteanne Facey', N'+62886280717', N'9266 Mccormick Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (867, N'Ragnar Bosden', N'+62842055614', N'269 Manitowish Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (868, N'Lenna Bulcock', N'+628380816883', N'8 Longview Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (869, N'Loraine Bertram', N'+62855997898', N'99 Birchwood Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (870, N'Therine Slyvester', N'+62878264029', N'39 Charing Cross Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (871, N'Trumaine Welden', N'+6288610487400', N'15 Amoth Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (872, N'Demetri Benedidick', N'+6286270379897', N'64305 Westend Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (873, N'Germana Hendrik', N'+628275993311', N'0451 Spohn Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (874, N'Rees Vertey', N'+62857750105', N'7 Loomis Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (875, N'Ronda Catterick', N'+6281815875178', N'96 Bultman Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (876, N'Dory Corter', N'+628483596526', N'0 Northview Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (877, N'Pincas Ruppelin', N'+62850278136', N'78 Michigan Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (878, N'Hetty Ahrens', N'+628551859117', N'682 Orin Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (879, N'Scotty Jannasch', N'+6288472272184', N'1 Westridge Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (880, N'Cynthy Kopps', N'+62866150716', N'353 Luster Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (881, N'Vanda Leinthall', N'+628958414569', N'114 Farwell Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (882, N'Cynthia Deetch', N'+6286290093956', N'63 Heath Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (883, N'Jenica Emor', N'+6284862822262', N'8966 Stuart Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (884, N'Austin Zettler', N'+628626594083', N'9475 Beilfuss Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (885, N'Chloette Ewell', N'+62871947545', N'2 Morrow Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (886, N'Sonia Stanfield', N'+62822323217', N'72 Amoth Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (887, N'Byrle Tomaszynski', N'+6283565261573', N'3 Fallview Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (888, N'Pierrette Gillbee', N'+6288691311200', N'16 Blackbird Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (889, N'Belia Kaasmann', N'+6285142649396', N'63 Ridge Oak Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (890, N'Fayre Melmeth', N'+62886294202', N'25335 Memorial Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (891, N'Roscoe Ricioppo', N'+62898768902', N'884 Morningstar Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (892, N'Liz Jordison', N'+628420216582', N'35 Spenser Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (893, N'Joannes Gibbins', N'+6282126206749', N'43 Mcbride Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (894, N'Meredeth Dibdale', N'+6284209651423', N'73362 Nelson Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (895, N'Gray Josskovitz', N'+62862933284', N'37 Sycamore Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (896, N'Daphne Sirman', N'+6283517729156', N'41642 Little Fleur Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (897, N'Rutledge Joslyn', N'+628852603215', N'7 Hollow Ridge Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (898, N'Gay Barense', N'+6288640154953', N'195 Ilene Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (899, N'Goldina Chappelow', N'+6288642433591', N'1208 Heffernan Parkway')
GO
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (900, N'Aurora Trafford', N'+62833686478', N'18654 Clarendon Terrace')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (901, N'Kipp Glede', N'+628866364164', N'6 Buhler Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (902, N'Tymothy Ruddy', N'+62886615740', N'0 Parkside Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (903, N'Vance Eckly', N'+628862044995', N'2 Nevada Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (904, N'Mellisa Jeves', N'+62835164977', N'800 West Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (905, N'Charis Murrie', N'+6282649502470', N'72843 Bartillon Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (906, N'Tania Eyrl', N'+62838719142', N'99859 Delaware Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (907, N'Washington Graveney', N'+6287709477107', N'9650 Lotheville Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (908, N'Muire Lalley', N'+62835329585', N'8 Carberry Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (909, N'Veradis Garnsworth', N'+628458022480', N'53 Lighthouse Bay Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (910, N'Jackqueline Burgher', N'+62886740951', N'446 Melby Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (911, N'Quinta Kells', N'+62824494580', N'792 Homewood Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (912, N'Spike Batson', N'+62848796240', N'89 La Follette Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (913, N'Ermentrude Gjerde', N'+628552406007', N'6850 Sachtjen Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (914, N'Tara Croster', N'+6287713479565', N'2896 Hermina Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (915, N'Lucille Elphee', N'+6283311313306', N'1508 Brown Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (916, N'Enrico Oneill', N'+628869196028', N'85526 Summit Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (917, N'Ingemar Ullrich', N'+628867045116', N'3102 Chive Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (918, N'Karlen Ovise', N'+62837060562', N'7101 Buhler Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (919, N'Noble Scurlock', N'+6286362990831', N'199 Birchwood Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (920, N'Adoree Duckett', N'+628773790379', N'621 Mccormick Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (921, N'Cyb Nawton', N'+628633753410', N'0 Gateway Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (922, N'Nisse Scohier', N'+628867158863', N'3945 Dennis Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (923, N'Mimi Herculeson', N'+6285496011647', N'87 Manley Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (924, N'Collette Conyer', N'+62899837041', N'34789 Scofield Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (925, N'Bald Steedman', N'+6282789996876', N'00050 Pierstorff Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (926, N'Gerda Mallaby', N'+62842099118', N'9624 Pepper Wood Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (927, N'Dominick Whitehurst', N'+6287692796010', N'60 Leroy Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (928, N'Meredeth Greenhill', N'+62878194989', N'88 Westend Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (929, N'Trish Ingray', N'+62813259912', N'4 Forest Run Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (930, N'Jaquelyn Cobbe', N'+62855736578', N'5975 Service Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (931, N'Ekaterina Hebblewhite', N'+62886742913', N'364 Heffernan Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (932, N'Ebenezer Harrigan', N'+628265283967', N'8530 Bay Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (933, N'Gaylene Mallabone', N'+62862562987', N'95 Dawn Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (934, N'Gustavus Burgon', N'+628786638468', N'0 Village Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (935, N'Paola Demchen', N'+62863464387', N'0 Meadow Ridge Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (936, N'Samuel Bamlet', N'+62835854449', N'20 Graceland Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (937, N'Mandi Skyrme', N'+628351914105', N'40616 Evergreen Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (938, N'Ellery Arstingall', N'+62821280438', N'68194 Oxford Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (939, N'Paco Davidofski', N'+62862709903', N'75 Fieldstone Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (940, N'Chaddy Patroni', N'+62836910827', N'1 Myrtle Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (941, N'Ciro Moneti', N'+6283865918086', N'798 Knutson Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (942, N'Rozele St. Louis', N'+62873249437', N'023 Rusk Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (943, N'Byrann Bonwell', N'+6281954525249', N'90408 Ruskin Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (944, N'Amber Genn', N'+6288648575311', N'42890 Starling Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (945, N'Margy Pevreal', N'+6286220960202', N'234 Killdeer Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (946, N'Antoine Coats', N'+628358618381', N'931 Hollow Ridge Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (947, N'Danyelle Veldman', N'+6284205682320', N'23367 Northland Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (948, N'Biron Cheeld', N'+62835131323', N'36 Pepper Wood Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (949, N'Farrah Akaster', N'+62846932271', N'61491 Schurz Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (950, N'Orsa Gillow', N'+628863256191', N'19819 Hoard Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (951, N'Corella Bridle', N'+6283875746492', N'7 Stuart Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (952, N'Carol Cabena', N'+62860992756', N'62823 Tennyson Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (953, N'Wilmer Gormley', N'+6286268538439', N'6 Jenifer Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (954, N'Pace Borsnall', N'+62837529714', N'99951 Crowley Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (955, N'Leland Cleveley', N'+62855295491', N'48883 Clyde Gallagher Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (956, N'Emmalynn Gabby', N'+628331139394', N'3539 Harbort Place')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (957, N'Sylvester Shevlin', N'+628664474603', N'4 Sunnyside Park')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (958, N'Mordecai Guidera', N'+6288691490417', N'9692 Basil Drive')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (959, N'Chelsey Rasell', N'+6285714970544', N'1673 Springview Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (960, N'Adore Kops', N'+6287190158544', N'54288 Bobwhite Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (961, N'Chiquia Alessandrucci', N'+628629057100', N'4 Lillian Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (962, N'Geneva Ege', N'+6286044097738', N'9540 Stang Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (963, N'Leopold Burren', N'+6283803604736', N'11 Orin Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (964, N'Marsiella Yakebowitch', N'+62862337770', N'991 Texas Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (965, N'Windham Gallihaulk', N'+62886690565', N'86013 Fairfield Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (966, N'Gabie Cana', N'+628420298701', N'72623 Dennis Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (967, N'Nickie Engall', N'+62855154896', N'35 Golf View Crossing')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (968, N'Sallee Belverstone', N'+62846488673', N'567 Monument Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (969, N'Aviva Prosek', N'+628626405898', N'013 Fuller Point')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (970, N'Bryn Duplock', N'+62863870927', N'66254 4th Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (971, N'Granger Pashenkov', N'+62835185976', N'1 Melody Pass')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (972, N'Rickard Flew', N'+6289377789417', N'4822 Doe Crossing Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (973, N'Shawn Wannan', N'+628868606955', N'473 Talmadge Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (974, N'Annie Froschauer', N'+6288643393144', N'1 Randy Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (975, N'Letizia Bruggeman', N'+628557336397', N'78 Merchant Parkway')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (976, N'Karena Harmar', N'+62846826753', N'54 Tennessee Alley')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (977, N'Augustine Boycott', N'+62862340719', N'11798 Village Junction')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (978, N'Juan Stutt', N'+628625465626', N'2859 Calypso Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (979, N'Hasty Bulgen', N'+6284204993536', N'12505 Oak Valley Street')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (980, N'Kizzie Benam', N'+62837062921', N'72 Algoma Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (981, N'Gib Amner', N'+62845158297', N'241 Pepper Wood Road')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (982, N'Jordon Romayne', N'+628636341490', N'73 Pankratz Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (983, N'Perren Mossdale', N'+62847506501', N'11861 Butterfield Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (984, N'Denver Greeves', N'+628558947838', N'0256 Vermont Center')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (985, N'Mommy Swinney', N'+6288139578709', N'05798 Old Shore Avenue')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (986, N'Gun Bierton', N'+6285588582081', N'60948 Sycamore Circle')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (987, N'Fanechka Michael', N'+628861942294', N'23 Browning Lane')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (988, N'Xever Rayworth', N'+62862851885', N'13317 Morning Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (989, N'Findley Stapleford', N'+628495622117', N'45578 Sheridan Hill')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (990, N'Angelique Martschke', N'+62862818557', N'5585 Katie Court')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (991, N'Alphonso Rowlett', N'+62823770222', N'8278 Carpenter Way')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (992, N'Eula Stenbridge', N'+628866149027', N'78226 Northport Plaza')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (993, N'Othilie Knight', N'+628622537194', N'5571 Miller Trail')
INSERT [dbo].[Customer] ([Id], [Name], [PhoneNumber], [Address]) VALUES (994, N'Estrella Toynbee', N'+628602393245', N'74 Iowa Center')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[DetailDeposit] ON 

INSERT [dbo].[DetailDeposit] ([Id], [IdDeposit], [IdService], [IdPrepaidPackage], [PriceUnit], [TotalUnit], [CompletedDatetime]) VALUES (2, 6, 1, 1, 0, 2, NULL)
SET IDENTITY_INSERT [dbo].[DetailDeposit] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (53, N'fkuXmGlww', N'Aldin Defrain', N'adefrain0@diigo.com', N'75 Commercial Avenue', N'+626377353369', CAST(N'1989-06-18' AS Date), 1, 3911000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (54, N'PPtnCadt', N'Patti de Keyser', N'pde1@ehow.com', N'2 South Alley', N'+62868346105', CAST(N'1991-01-05' AS Date), 2, 3442000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (55, N'19tR2Er31Xla', N'Gunner Langthorne', N'glangthorne2@ask.com', N'818 Fair Oaks Pass', N'+622258237596', CAST(N'1992-02-26' AS Date), 2, 3606000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (56, N'gllWkd7Tz', N'Briant Nendick', N'bnendick3@instagram.com', N'2605 Lien Way', N'+6292895444948', CAST(N'1984-03-21' AS Date), 2, 3167000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (57, N'66O79cM0vo63', N'Andra Anster', N'aanster4@nymag.com', N'38806 Bultman Alley', N'+628652410903', CAST(N'1993-01-10' AS Date), 1, 2639000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (58, N'v8Eelb1', N'Alyce Doughty', N'adoughty5@gravatar.com', N'58 Waubesa Parkway', N'+62463662259', CAST(N'1996-06-09' AS Date), 2, 3001000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (59, N'4Ga6U2f', N'Urbano Maxworthy', N'umaxworthy6@tinyurl.com', N'301 Namekagon Park', N'+622344154565', CAST(N'1983-09-17' AS Date), 1, 3817000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (60, N'dxkPFtalF5Y4', N'Lindon Steffan', N'lsteffan7@paginegialle.it', N'0784 Pleasure Road', N'+623512677411', CAST(N'1996-08-29' AS Date), 1, 2964000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (61, N'Qb4O8A', N'Crichton Seeler', N'cseeler8@miitbeian.gov.cn', N'4 Havey Alley', N'+6249650111', CAST(N'1987-01-20' AS Date), 2, 2154000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (62, N'UsWzXH5WxWx', N'Dyana Wann', N'dwann9@google.com.hk', N'11 Algoma Plaza', N'+62710456283', CAST(N'1987-11-15' AS Date), 1, 3712000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (63, N'MYBx2R4g8', N'Mohandas Cattemull', N'mcattemulla@newsvine.com', N'9053 Dayton Parkway', N'+6262491209', CAST(N'1995-01-31' AS Date), 1, 3482000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (64, N's4GUWH', N'Flynn Brundrett', N'fbrundrettb@mozilla.com', N'984 Jana Crossing', N'+6271575148', CAST(N'1991-08-06' AS Date), 2, 2673000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (65, N'j83zv9dB', N'Stacy Randle', N'srandlec@twitpic.com', N'2240 Maple Wood Avenue', N'+6263962713', CAST(N'1995-10-01' AS Date), 1, 3099000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (66, N'wYa9Mh', N'Shantee Latey', N'slateyd@senate.gov', N'6918 Veith Parkway', N'+622552055596', CAST(N'1990-02-23' AS Date), 1, 2124000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (67, N'3EXVPO2gA', N'Terri Sauvan', N'tsauvane@hud.gov', N'0 Dakota Lane', N'+626211316853', CAST(N'1996-12-26' AS Date), 2, 2829000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (68, N'6qLxScD', N'Marje Dring', N'mdringf@dailymail.co.uk', N'4383 Muir Park', N'+6227609997404', CAST(N'1981-06-03' AS Date), 2, 2994000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (69, N'6YneBrHM', N'Lona Girardetti', N'lgirardettig@ameblo.jp', N'20 East Drive', N'+6286659448222', CAST(N'1988-12-01' AS Date), 2, 3799000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (70, N'UTEVRS', N'Seka Milburne', N'smilburneh@alibaba.com', N'364 Hanson Trail', N'+624690874515', CAST(N'1996-05-04' AS Date), 1, 3656000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (71, N'iSAjHEi', N'Anestassia Frankes', N'afrankesi@economist.com', N'4 Nancy Court', N'+6263449894', CAST(N'1984-02-24' AS Date), 1, 3465000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (72, N'XirZzSRSW', N'Peadar Wilgar', N'pwilgarj@webnode.com', N'267 Lakeland Crossing', N'+6286435688533', CAST(N'1991-06-15' AS Date), 1, 3201000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (73, N'vrYki7C8gZ', N'Kellyann Carillo', N'kcarillok@usda.gov', N'076 Heffernan Place', N'+6281285772', CAST(N'1998-02-16' AS Date), 2, 2613000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (74, N'kRpOoNP7s9', N'Damara Trevorrow', N'dtrevorrowl@howstuffworks.com', N'2767 Miller Point', N'+626373673725', CAST(N'1987-05-07' AS Date), 2, 3603000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (75, N'gb64eN', N'Sher Bogeys', N'sbogeysm@google.com.au', N'82836 Buena Vista Pass', N'+6255356818', CAST(N'1985-03-10' AS Date), 2, 2709000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (76, N'5XdxOz58oU', N'Jeri Lomond', N'jlomondn@domainmarket.com', N'31 Comanche Street', N'+6246637707', CAST(N'1994-08-20' AS Date), 2, 2129000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (77, N'j7RxJoKqbgF', N'Cordula Henmarsh', N'chenmarsho@phoca.cz', N'30 Elmside Center', N'+6255537719', CAST(N'1987-08-14' AS Date), 2, 3597000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (78, N'1c9LNN6Ho0', N'Andrea Cornforth', N'acornforthp@globo.com', N'020 Shopko Place', N'+627630115241', CAST(N'1982-09-11' AS Date), 2, 2586000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (79, N'ME1Ng8kv2', N'Carmon Smorthit', N'csmorthitq@e-recht24.de', N'6590 Rockefeller Hill', N'+6277334864', CAST(N'1996-02-27' AS Date), 1, 2653000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (80, N'ShdVyfKKOxE', N'Nanete Ginnaly', N'nginnalyr@tinyurl.com', N'0640 Nancy Circle', N'+6296791183998', CAST(N'1987-05-17' AS Date), 2, 2537000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (81, N'IpUOW5GrtHv', N'Krispin Wilcott', N'kwilcotts@marketwatch.com', N'70452 Colorado Way', N'+6247214413315', CAST(N'1990-09-02' AS Date), 1, 3447000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (82, N'Z3cF37x6U', N'Gwendolen Spoors', N'gspoorst@indiegogo.com', N'2 Arkansas Place', N'+6297235994618', CAST(N'1997-06-07' AS Date), 1, 3222000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (83, N'hGja7q', N'Miran Scowcraft', N'mscowcraftu@examiner.com', N'86758 Bellgrove Drive', N'+6255297562824', CAST(N'1987-05-05' AS Date), 1, 3069000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (84, N'Rmcj3Jk', N'Niven Mollison', N'nmollisonv@arstechnica.com', N'4099 Declaration Street', N'+6212489099', CAST(N'1983-01-09' AS Date), 2, 3746000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (85, N'5fMPt0', N'Maire Madoc-Jones', N'mmadocjonesw@miibeian.gov.cn', N'67193 Iowa Hill', N'+628616534910', CAST(N'1992-05-23' AS Date), 2, 2291000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (86, N'1EuBrMcHb', N'Glynda Tuxill', N'gtuxillx@vkontakte.ru', N'939 Forster Lane', N'+621723631990', CAST(N'1984-12-10' AS Date), 2, 2943000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (87, N'l3SYMH9', N'Stacia Clymer', N'sclymery@exblog.jp', N'5305 Warner Drive', N'+622788922862', CAST(N'1986-11-20' AS Date), 2, 2302000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (88, N'F3jGWpf8', N'Halette Gambell', N'hgambellz@amazon.co.uk', N'9602 Meadow Vale Place', N'+6238085396', CAST(N'1987-05-06' AS Date), 2, 2555000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (89, N'd1Wb7vN', N'Hilton Lumbly', N'hlumbly10@opensource.org', N'0902 Tennessee Road', N'+6238611959846', CAST(N'1987-05-26' AS Date), 2, 3034000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (90, N'1gaiQPbBBAOi', N'Davita Lenton', N'dlenton11@redcross.org', N'34 Waubesa Road', N'+628626140885', CAST(N'1992-04-16' AS Date), 1, 3301000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (91, N'1bMwnezOku', N'Allison Knoble', N'aknoble12@miitbeian.gov.cn', N'02651 Heath Lane', N'+62242909400', CAST(N'1986-07-02' AS Date), 2, 3615000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (92, N'etWsNB6zahE', N'Ursulina Clemencon', N'uclemencon13@taobao.com', N'9257 Comanche Way', N'+6248984377343', CAST(N'1990-08-19' AS Date), 1, 3805000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (93, N'slqLPaHexN', N'Gaylord Tabary', N'gtabary14@woothemes.com', N'43449 Hintze Trail', N'+62313174416', CAST(N'1989-01-06' AS Date), 1, 2219000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (94, N'nX8OJD', N'Morten Claisse', N'mclaisse15@instagram.com', N'8652 Butternut Terrace', N'+6255225314', CAST(N'1997-05-19' AS Date), 1, 3945000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (95, N'eM1jvks09Nuq', N'Nelson Reading', N'nreading16@unblog.fr', N'85940 Annamark Alley', N'+6257685507128', CAST(N'1987-07-26' AS Date), 2, 3605000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (96, N'42iSDvq86GM', N'Wain Founds', N'wfounds17@live.com', N'10 Jenifer Road', N'+626327327547', CAST(N'1997-11-07' AS Date), 2, 3485000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (97, N'YmBizH', N'Teodor Jurczyk', N'tjurczyk18@wikipedia.org', N'6 Bobwhite Street', N'+628619569851', CAST(N'1990-03-11' AS Date), 1, 2703000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (98, N'zGdPKM1o4', N'Esra Ferrelli', N'eferrelli19@nyu.edu', N'279 Cordelia Parkway', N'+628653760581', CAST(N'1997-11-19' AS Date), 2, 3703000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (99, N'pyJmkApGjMZ', N'Ara Hazeldean', N'ahazeldean1a@seattletimes.com', N'6 Macpherson Circle', N'+6286387631878', CAST(N'1993-11-07' AS Date), 2, 3080000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (100, N'X6qZQ1L', N'Norbie Breedy', N'nbreedy1b@thetimes.co.uk', N'6 Pennsylvania Hill', N'+625410220630', CAST(N'1982-05-25' AS Date), 1, 3326000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (101, N'6iVmx3FO1', N'Sharity Gulleford', N'sgulleford1c@mozilla.com', N'61 Ridgeway Street', N'+6263566732148', CAST(N'1993-05-09' AS Date), 1, 2923000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (102, N'dDsgZdH', N'Analise Peschka', N'apeschka1d@google.com.hk', N'384 Golf Avenue', N'+6286755790532', CAST(N'1984-08-29' AS Date), 2, 2335000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (103, N'12', N'krisna', N'krisnabmntr@gmail.com', N'pangkalanbun', N'+62', CAST(N'2004-04-09' AS Date), 1, 2335000)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (110, N'as', N'as', N'as', N'as', N'2', CAST(N'2020-10-21' AS Date), 12, 2)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (111, N'as', N'as', N'as', N'as', N'1', CAST(N'2020-10-21' AS Date), 12, 2)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (112, N'as', N'as', N'as', N'as', N'1', CAST(N'2020-10-21' AS Date), 12, 2)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (113, N'as', N'as', N'as', N'as', N'1', CAST(N'2020-10-21' AS Date), 12, 2)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (114, N'', N'', N'', N'', N'1', CAST(N'2020-10-21' AS Date), 0, 0)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (115, N'', N'', N'', N'', N'1', CAST(N'2020-10-21' AS Date), 0, 0)
INSERT [dbo].[Employee] ([Id], [Password], [Name], [Email], [Address], [PhoneNumber], [DateofBirth], [IdJob], [Salary]) VALUES (116, N'', N'', N'', N'', N'1', CAST(N'2020-10-21' AS Date), 0, 0)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[HeaderDeposit] ON 

INSERT [dbo].[HeaderDeposit] ([Id], [IdCustomer], [IdEmployee], [TransactionDatetime], [CompleteEstimationDatetime]) VALUES (6, 1, 53, CAST(N'2017-11-15' AS Date), N'NULL')
SET IDENTITY_INSERT [dbo].[HeaderDeposit] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([Id], [Name]) VALUES (1, N'Cashier')
INSERT [dbo].[Job] ([Id], [Name]) VALUES (2, N'Laundress')
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
SET IDENTITY_INSERT [dbo].[Package] ON 

INSERT [dbo].[Package] ([Id], [IdService], [TotalUnit], [Price]) VALUES (1, 1, 10, 75000)
INSERT [dbo].[Package] ([Id], [IdService], [TotalUnit], [Price]) VALUES (2, 1, 20, 150000)
INSERT [dbo].[Package] ([Id], [IdService], [TotalUnit], [Price]) VALUES (3, 2, 10, 145000)
INSERT [dbo].[Package] ([Id], [IdService], [TotalUnit], [Price]) VALUES (4, 2, 20, 290000)
SET IDENTITY_INSERT [dbo].[Package] OFF
GO
SET IDENTITY_INSERT [dbo].[PrepaidPackage] ON 

INSERT [dbo].[PrepaidPackage] ([Id], [IdCustomer], [IdPackage], [Price], [StartDatetime], [CompletedDatetime]) VALUES (1, 1, 1, 75000, CAST(N'2017-11-15T07:08:09.000' AS DateTime), N'NULL')
INSERT [dbo].[PrepaidPackage] ([Id], [IdCustomer], [IdPackage], [Price], [StartDatetime], [CompletedDatetime]) VALUES (3, 2, 1, 75000, CAST(N'2017-11-16T12:01:05.000' AS DateTime), N'NULL')
SET IDENTITY_INSERT [dbo].[PrepaidPackage] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (1, N'Cuci Komplit Reguler (2 HARI)', 1, 1, 8000, 48)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (2, N'Cuci Komplit Kilat –  Laundry 1 Hari Selesai', 1, 1, 15000, 24)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (3, N'Cuci Komplit 5 Jam – Laundry Express 5 Jam Selesai', 1, 1, 20000, 5)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (4, N'Cuci Kering Reguler (2 HARI)', 1, 1, 6000, 48)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (5, N'Cuci Kering Kilat (1 HARI)', 1, 1, 9000, 24)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (6, N'Cuci Kering Express (5 JAM)', 1, 1, 15000, 5)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (7, N'Setrika Reguler (2 HARI)', 1, 2, 6000, 48)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (8, N'Setrika Kilat (1 HARI)', 1, 2, 9000, 24)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (9, N'Setrika Express (5 JAM)', 1, 2, 12000, 5)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (10, N'Baju Muslim', 2, 2, 20000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (11, N'Baju Hangat / Sweater', 2, 2, 20000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (12, N'Gaun/Baju Pengantin', 2, 2, 100000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (13, N'Baju Safari', 2, 2, 20000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (14, N'Baju Safari Setelan', 2, 2, 30000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (15, N'Bantal Besar', 2, 2, 20000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (16, N'Bantal Kecil', 2, 2, 15000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (17, N'Bed Cover', 2, 2, 30000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (18, N'Bed Cover 1 Set', 2, 2, 40000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (19, N'Kemeja Batik', 2, 2, 20000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (20, N'Celana Pendek', 2, 2, 20000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (21, N'Celana Panjang', 2, 2, 25000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (22, N'Handuk Mandi Besar', 2, 2, 25000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (23, N'Handuk Mandi Kecil', 2, 2, 20000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (24, N'Jaket Kulit', 2, 2, 40000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (25, N'Jaket', 2, 2, 25000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (26, N'Jas/Blazer', 2, 2, 30000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (27, N'Jas/Blazer Setelan', 2, 2, 40000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (28, N'Kemeja Pendek', 2, 2, 20000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (29, N'Kemeja Batik', 2, 2, 25000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (30, N'Kebaya', 2, 2, 30000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (31, N'Kebaya Setelan', 2, 2, 45000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (32, N'Kaos/T-Shirt', 2, 2, 20000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (33, N'Keset', 2, 2, 20000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (34, N'Selendang/Kerudung', 2, 2, 20000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (35, N'Mukena', 2, 2, 25000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (36, N'Sajadah', 2, 2, 20000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (37, N'Sarung Bantal / Guling', 2, 2, 5000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (38, N'Selimut', 2, 2, 20000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (39, N'Sprei Single', 2, 2, 15000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (40, N'Topi', 2, 2, 15000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (41, N'Sarung/Cover Mobil', 2, 2, 100000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (42, N'Sarung/Cover Motor', 2, 2, 50000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (43, N'Sarung', 2, 2, 20000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (44, N'Rok', 2, 2, 15000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (45, N'Gaun Panjang', 2, 2, 25000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (46, N'Blouse', 2, 2, 20000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (47, N'Wearpack', 2, 2, 20000, 2)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (48, N'Baju Taekwondo', 2, 2, 20000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (49, N'Bantal/Guling Dewasa', 2, 2, 25000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (50, N'Bantal/Guling Anak', 2, 2, 20000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (51, N'Bantal/Guling Bayi', 2, 2, 15000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (52, N'Tas Kecil', 2, 2, 15000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (53, N'Tas Sekolah', 2, 2, 25000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (54, N'Tas Ransel/Laptop', 2, 2, 30000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (55, N'Tas Olahraga', 2, 2, 30000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (56, N'Tas Wanita – Start From', 2, 2, 100000, 12)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (57, N'Alas Bouncer', 3, 2, 35000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (58, N'Bouncer/Baby Walker', 3, 2, 80000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (59, N'Baby Chair', 3, 2, 50000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (60, N'Car Seat', 3, 2, 150000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (61, N'Box Bayi', 3, 2, 200000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (62, N'Box Bayi+Kasur', 3, 2, 250000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (63, N'Boneka Kecil <20cm', 3, 2, 20000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (64, N'Boneka Besar (21-30cm)', 3, 2, 30000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (65, N'Boneka Super Besar (>50 CM)', 3, 2, 50000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (66, N'Gendongan Bayi', 3, 2, 50000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (67, N'Koper', 3, 2, 75000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (68, N'Stroller Mini', 3, 2, 150000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (69, N'Stroller', 3, 2, 175000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (70, N'Stroller Twins', 3, 2, 250000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (71, N'Helm Modular 3/4', 4, 2, 20000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (72, N'Helm Full Face', 4, 2, 25000, 4)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (73, N'Sepatu Wanita Hak Rendah', 5, 2, 50000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (74, N'Sepatu Sneakers', 5, 2, 50000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (75, N'Sepatu Kanvas', 5, 2, 60000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (76, N'Sepatu Suede', 5, 2, 60000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (77, N'Sepatu Leather', 5, 2, 70000, 8)
INSERT [dbo].[Service] ([Id], [Name], [IdCategory], [IdUnit], [PriceUnit], [EstimationDuration]) VALUES (78, N'Sepatu Hybrid', 5, 2, 80000, 8)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([Id], [Name]) VALUES (1, N'KG')
INSERT [dbo].[Unit] ([Id], [Name]) VALUES (2, N'Piece')
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
ALTER TABLE [dbo].[DetailDeposit]  WITH CHECK ADD  CONSTRAINT [FK_DetailDeposit_HeaderDeposit] FOREIGN KEY([IdDeposit])
REFERENCES [dbo].[HeaderDeposit] ([Id])
GO
ALTER TABLE [dbo].[DetailDeposit] CHECK CONSTRAINT [FK_DetailDeposit_HeaderDeposit]
GO
ALTER TABLE [dbo].[DetailDeposit]  WITH CHECK ADD  CONSTRAINT [FK_DetailDeposit_PrepaidPackage] FOREIGN KEY([IdPrepaidPackage])
REFERENCES [dbo].[PrepaidPackage] ([Id])
GO
ALTER TABLE [dbo].[DetailDeposit] CHECK CONSTRAINT [FK_DetailDeposit_PrepaidPackage]
GO
ALTER TABLE [dbo].[DetailDeposit]  WITH CHECK ADD  CONSTRAINT [FK_DetailDeposit_Service] FOREIGN KEY([IdService])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[DetailDeposit] CHECK CONSTRAINT [FK_DetailDeposit_Service]
GO
ALTER TABLE [dbo].[HeaderDeposit]  WITH CHECK ADD  CONSTRAINT [FK_HeaderDeposit_Customer] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[HeaderDeposit] CHECK CONSTRAINT [FK_HeaderDeposit_Customer]
GO
ALTER TABLE [dbo].[HeaderDeposit]  WITH CHECK ADD  CONSTRAINT [FK_HeaderDeposit_Employee] FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[HeaderDeposit] CHECK CONSTRAINT [FK_HeaderDeposit_Employee]
GO
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_Service] FOREIGN KEY([IdService])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_Service]
GO
ALTER TABLE [dbo].[PrepaidPackage]  WITH CHECK ADD  CONSTRAINT [FK_PrepaidPackage_Customer] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[PrepaidPackage] CHECK CONSTRAINT [FK_PrepaidPackage_Customer]
GO
ALTER TABLE [dbo].[PrepaidPackage]  WITH CHECK ADD  CONSTRAINT [FK_PrepaidPackage_Package] FOREIGN KEY([IdPackage])
REFERENCES [dbo].[Package] ([Id])
GO
ALTER TABLE [dbo].[PrepaidPackage] CHECK CONSTRAINT [FK_PrepaidPackage_Package]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Category]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_Unit] FOREIGN KEY([IdUnit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_Unit]
GO
USE [master]
GO
ALTER DATABASE [PC_KT_MODUL02] SET  READ_WRITE 
GO
