USE [master]
GO
/****** Object:  Database [DA_Blagodat]    Script Date: 25.11.2022 13:13:56 ******/
CREATE DATABASE [DA_Blagodat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DA_Blagodat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DA_Blagodat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'DA_Blagodat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DA_Blagodat_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DA_Blagodat] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DA_Blagodat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DA_Blagodat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DA_Blagodat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DA_Blagodat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DA_Blagodat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DA_Blagodat] SET ARITHABORT OFF 
GO
ALTER DATABASE [DA_Blagodat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DA_Blagodat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DA_Blagodat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DA_Blagodat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DA_Blagodat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DA_Blagodat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DA_Blagodat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DA_Blagodat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DA_Blagodat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DA_Blagodat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DA_Blagodat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DA_Blagodat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DA_Blagodat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DA_Blagodat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DA_Blagodat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DA_Blagodat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DA_Blagodat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DA_Blagodat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DA_Blagodat] SET  MULTI_USER 
GO
ALTER DATABASE [DA_Blagodat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DA_Blagodat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DA_Blagodat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DA_Blagodat] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DA_Blagodat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DA_Blagodat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DA_Blagodat] SET QUERY_STORE = OFF
GO
USE [DA_Blagodat]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 25.11.2022 13:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Full name] [varchar](100) NULL,
	[Client's code] [int] NOT NULL,
	[Passport data] [varchar](100) NULL,
	[Birthday] [date] NULL,
	[Adress] [varchar](100) NULL,
	[E-mail] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Client's code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 25.11.2022 13:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee's code] [varchar](6) NOT NULL,
	[Post] [int] NULL,
	[Full name] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Last entry] [datetime] NULL,
	[Type entry] [int] NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Employee's code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ID_Post]    Script Date: 25.11.2022 13:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ID_Post](
	[Post] [nchar](20) NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK_ID_Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 25.11.2022 13:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] NOT NULL,
	[Order's code] [varchar](20) NULL,
	[Date of creation] [date] NULL,
	[Order time] [time](7) NULL,
	[Client's code] [int] NULL,
	[Status] [int] NULL,
	[Closing date] [date] NULL,
	[Rental time] [varchar](20) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order services]    Script Date: 25.11.2022 13:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order services](
	[ID orders] [int] NOT NULL,
	[ID services] [int] NOT NULL,
 CONSTRAINT [PK_Order services] PRIMARY KEY CLUSTERED 
(
	[ID orders] ASC,
	[ID services] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 25.11.2022 13:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[ID] [int] NOT NULL,
	[Status] [nchar](20) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 25.11.2022 13:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ID] [int] NOT NULL,
	[Name of the service] [varchar](100) NULL,
	[Service's code] [varchar](50) NULL,
	[Cost] [money] NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type entryID]    Script Date: 25.11.2022 13:13:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type entryID](
	[Type entry] [varchar](50) NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK_Type entryID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Фролов Андрей Иванович', 45462526, N'1180 176596', CAST(N'2001-07-14' AS Date), N'344288, г. Барнаул, ул. Чехова, 1, кв. 34', N'gohufreilagrau-3818@yopmail.com', N'cl12345')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Николаев Даниил Всеволодович', 45462527, N'2280 223523', CAST(N'2001-02-10' AS Date), N'614164, г. Барнаул, ул. Степная, 30, кв. 75', N'xawugosune-1385@yopmail.com', N'cl12346')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Снегирев Макар Иванович', 45462528, N'4560 354155', CAST(N'1998-05-21' AS Date), N'394242, г. Барнаул, ул. Коммунистическая, 43, кв. 57', N'satrahuddusei-4458@yopmail.com', N'cl12347')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Иванов Иван Ильич', 45462529, N'9120 554296', CAST(N'1998-10-01' AS Date), N'660540, г. Барнаул, ул. Солнечная, 25, кв. 78', N'boippaxeufrepra-7093@yopmail.com', N'cl12348')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Филиппова Анна Глебовна', 45462530, N'2367 558134', CAST(N'1976-05-31' AS Date), N'125837, г. Барнаул, ул. Шоссейная, 40, кв. 92', N'zapramaxesu-7741@yopmail.com', N'cl12349')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Иванов Михаил Владимирович', 45462531, N'7101 669343', CAST(N'1985-11-04' AS Date), N'125703, г. Барнаул, ул. Партизанская, 49, кв. 84', N'rouzecroummegre-3899@yopmail.com', N'cl12350')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Власов Дмитрий Александрович', 45462532, N'3455 719630', CAST(N'1998-08-17' AS Date), N'625283, г. Барнаул, ул. Победы, 46, кв. 7', N'ziyeuddocrabri-4748@yopmail.com', N'cl12351')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Серова Екатерина Львовна', 45462533, N'2377 871623', CAST(N'1984-10-24' AS Date), N'614611, г. Барнаул, ул. Молодежная, 50, кв. 78', N'ketameissoinnei-1951@yopmail.com', N'cl12352')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Борисова Ирина Ивановна', 45462534, N'8755 921148', CAST(N'1976-10-14' AS Date), N'454311, г. Барнаул, ул. Новая, 19, кв. 78', N'yipraubaponou-5849@yopmail.com', N'cl12353')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Зайцев Никита Артёмович', 45462535, N'4355 104594', CAST(N'1999-10-14' AS Date), N'660007, г. Барнаул, ул. Октябрьская, 19, кв. 42', N'crapedocouca-3572@yopmail.com', N'cl12354')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Медведев Святослав Евгеньевич', 45462536, N'2791 114390', CAST(N'1985-07-13' AS Date), N'603036, г. Барнаул, ул. Садовая, 4, кв. 13', N'ceigoixakaunni-9227@yopmail.com', N'cl12355')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Коротков Кирилл Алексеевич', 45462537, N'5582 126286', CAST(N'1976-05-26' AS Date), N'450983, г. Барнаул, ул. Комсомольская, 26, кв. 60', N'yeimmeiwauzomo-7054@yopmail.com', N'cl12356')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Калашникова Арина Максимовна', 45462538, N'2978 133653', CAST(N'1999-08-13' AS Date), N'394782, г. Барнаул, ул. Чехова, 3, кв. 14', N'poleifenevi-1560@yopmail.com', N'cl12357')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Минина Таисия Кирилловна', 45462539, N'7512 141956', CAST(N'1985-10-13' AS Date), N'603002, г. Барнаул, ул. Дзержинского, 28, кв. 56', N'kauprezofautei-6607@yopmail.com', N'cl12358')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Наумов Серафим Романович', 45462540, N'5046 158433', CAST(N'1999-04-15' AS Date), N'450558, г. Барнаул, ул. Набережная, 30, кв. 71', N'quaffaullelourei-1667@yopmail.com', N'cl12359')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Воробьева Василиса Евгеньевна', 45462541, N'2460 169505', CAST(N'1999-01-13' AS Date), N'394060, г. Барнаул, ул. Фрунзе, 43, кв. 79', N'jsteele@rojas-robinson.net', N'cl12360')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Калинин Александр Андреевич', 45462542, N'3412 174593', CAST(N'1999-01-07' AS Date), N'410661, г. Барнаул, ул. Школьная, 50, кв. 53', N'vhopkins@lewis-mullen.com', N'cl12361')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Кузнецова Милана Владиславовна', 45462543, N'4950 183034', CAST(N'1999-01-24' AS Date), N'625590, г. Барнаул, ул. Коммунистическая, 20, кв. 34', N'nlewis@yahoo.com', N'cl12362')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Фирсов Егор Романович', 45462544, N'5829 219464', CAST(N'1993-09-02' AS Date), N'625683, г. Барнаул, ул. 8 Марта, 20, кв. 21', N'garciadavid@mckinney-mcbride.com', N'cl12363')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Зимина Агния Александровна', 45462545, N'6443 208059', CAST(N'1998-09-03' AS Date), N'400562, г. Барнаул, ул. Зеленая, 32, кв. 67', N'cbradley@castro.com', N'cl12364')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Титов Андрей Глебович', 45462546, N'7079 213265', CAST(N'1985-10-23' AS Date), N'614510, г. Барнаул, ул. Маяковского, 47, кв. 72', N'cuevascatherine@carlson.biz', N'cl12365')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Орлов Николай Егорович', 45462547, N'8207 522702', CAST(N'1985-07-27' AS Date), N'410542, г. Барнаул, ул. Светлая, 46, кв. 82', N'thomasmoore@wilson-singh.net', N'cl12366')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Кузнецова Аиша Михайловна', 45462548, N'9307 232158', CAST(N'1998-10-04' AS Date), N'620839, г. Барнаул, ул. Цветочная, 8, кв. 100', N'jessica84@hotmail.com', N'cl12367')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Куликов Никита Георгиевич', 45462549, N'1357 242839', CAST(N'1999-04-23' AS Date), N'443890, г. Барнаул, ул. Коммунистическая, 1, кв. 10', N'jessicapark@hotmail.com', N'cl12368')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Карпова София Егоровна', 45462550, N'1167 256636', CAST(N'1993-10-01' AS Date), N'603379, г. Барнаул, ул. Спортивная, 46, кв. 95', N'ginaritter@schneider-buchanan.com', N'cl12369')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Смирнова Дарья Макаровна', 45462551, N'1768 266986', CAST(N'1976-03-22' AS Date), N'603721, г. Барнаул, ул. Гоголя, 41, кв. 57', N'stephen99@yahoo.com', N'cl12370')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Абрамова Александра Мироновна', 45462552, N'1710 427875', CAST(N'1999-03-26' AS Date), N'410172, г. Барнаул, ул. Северная, 13, кв. 86', N'lopezlisa@hotmail.com', N'cl12371')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Наумов Руслан Михайлович', 45462553, N'1806 289145', CAST(N'1999-10-11' AS Date), N'420151, г. Барнаул, ул. Вишневая, 32, кв. 81', N'lori17@hotmail.com', N'cl12372')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Бочаров Никита Матвеевич', 45462554, N'1587 291249', CAST(N'1997-06-29' AS Date), N'125061, г. Барнаул, ул. Подгорная, 8, кв. 74', N'campbellkevin@gardner.com', N'cl12373')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Соловьев Давид Ильич', 45462555, N'1647 306372', CAST(N'1984-03-06' AS Date), N'630370, г. Барнаул, ул. Шоссейная, 24, кв. 81', N'morganhoward@clark.com', N'cl12374')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Васильева Валерия Дмитриевна', 45462556, N'1742 316556', CAST(N'1999-09-30' AS Date), N'614753, г. Барнаул, ул. Полевая, 35, кв. 39', N'carsontamara@gmail.com', N'cl12375')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Макарова Василиса Андреевна', 45462557, N'1474 326347', CAST(N'1999-04-08' AS Date), N'426030, г. Барнаул, ул. Маяковского, 44, кв. 93', N'kevinpatel@gmail.com', N'cl12376')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Алексеев Матвей Викторович', 45462558, N'1452 339539', CAST(N'1998-08-02' AS Date), N'450375, г. Барнаул, ул. Клубная, 44, кв. 80', N'sethbishop@yahoo.com', N'cl12377')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Никитина Полина Александровна', 45462559, N'2077 443480', CAST(N'1976-09-19' AS Date), N'625560, г. Барнаул, ул. Некрасова, 12, кв. 66', N'drollins@schultz-soto.net', N'cl12378')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Окулова Олеся Алексеевна', 45462560, N'2147 357518', CAST(N'1999-04-03' AS Date), N'630201, г. Барнаул, ул. Комсомольская, 17, кв. 25', N'pblack@copeland-winters.org', N'cl12379')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Захарова Полина Яновна', 45462561, N'2687 363884', CAST(N'1976-04-21' AS Date), N'190949, г. Барнаул, ул. Мичурина, 26, кв. 93', N'johnathon.oberbrunner@yahoo.com', N'cl12380')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Зайцев Владимир Давидович', 45462562, N'2376 443711', CAST(N'1998-01-26' AS Date), N'350501, г. Барнаул, ул. Парковая, 2, кв. 7', N'bradly29@gmail.com', N'cl12381')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Иванов Виталий Даниилович', 45462563, N'2568 386237', CAST(N'1976-08-11' AS Date), N'450048, г. Барнаул, ул. Коммунистическая, 21, кв. 3', N'stark.cristina@hilpert.biz', N'cl12382')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Захаров Матвей Романович', 45462564, N'2556 439376', CAST(N'1993-07-12' AS Date), N'644921, г. Барнаул, ул. Школьная, 46, кв. 37', N'bruen.eleanore@yahoo.com', N'cl12383')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Иванов Степан Степанович', 45462565, N'2737 407501', CAST(N'1998-09-19' AS Date), N'614228, г. Барнаул, ул. Дорожная, 36, кв. 54', N'percival.halvorson@yahoo.com', N'cl12384')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Ткачева Милана Тимуровна', 45462566, N'2581 441645', CAST(N'1998-05-24' AS Date), N'350940, г. Барнаул, ул. Первомайская, 23, кв. 2', N'javonte71@kuhlman.biz', N'cl12385')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Семенов Даниил Иванович', 45462567, N'2675 427933', CAST(N'1976-01-04' AS Date), N'344990, г. Барнаул, ул. Красноармейская, 19, кв. 92', N'vconnelly@kautzer.com', N'cl12386')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Виноградов Вячеслав Дмитриевич', 45462568, N'2967 434531', CAST(N'1976-07-12' AS Date), N'410248, г. Барнаул, ул. Чкалова, 11, кв. 75', N'anabelle07@schultz.info', N'cl12387')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Соболева Николь Фёдоровна', 45462569, N'3070 449655', CAST(N'1976-05-02' AS Date), N'400839, г. Барнаул, ул. 8 Марта, 46, кв. 44', N'nitzsche.katlynn@yahoo.com', N'cl12388')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Тихонова Анна Львовна', 45462570, N'3108 451174', CAST(N'1985-03-23' AS Date), N'450539, г. Барнаул, ул. Заводская, 3, кв. 81', N'corine16@von.com', N'cl12389')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Кузнецова Ульяна Савельевна', 45462571, N'3250 464705', CAST(N'1999-06-03' AS Date), N'614591, г. Барнаул, ул. Цветочная, 20, кв. 40', N'otha.wisozk@lubowitz.org', N'cl12390')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Смирнова Анна Германовна', 45462572, N'3392 471644', CAST(N'1997-07-18' AS Date), N'400260, г. Барнаул, ул. Больничная, 30, кв. 53', N'may.kirlin@hotmail.com', N'cl12391')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Черепанова Анна Давидовна', 45462573, N'3497 487819', CAST(N'1985-11-06' AS Date), N'660924, г. Барнаул, ул. Молодежная, 32, кв. 59', N'bryana.kautzer@yahoo.com', N'cl12392')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Григорьев Максим Кириллович', 45462574, N'3560 491260', CAST(N'1999-05-26' AS Date), N'644133, г. Барнаул, ул. Гагарина, 28, кв. 69', N'deborah.christiansen@quigley.biz', N'cl12393')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Голубев Даниэль Александрович', 45462575, N'3620 506034', CAST(N'1999-06-14' AS Date), N'450698, г. Барнаул, ул. Вокзальная, 14, кв. 37', N'connelly.makayla@yahoo.com', N'cl12394')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Миронов Юрий Денисович', 45462576, N'3774 511438', CAST(N'1985-01-26' AS Date), N'620653, г. Барнаул, ул. Западная, 15, кв. 25', N'tatum.collins@fay.org', N'cl12395')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Терехов Михаил Андреевич', 45462577, N'3862 521377', CAST(N'1976-07-06' AS Date), N'644321, г. Барнаул, ул. Клубная, 32, кв. 10', N'itzel73@anderson.com', N'cl12396')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Орлова Алиса Михайловна', 45462578, N'3084 535966', CAST(N'1997-02-24' AS Date), N'603653, г. Барнаул, ул. Молодежная, 2, кв. 45', N'arjun39@hotmail.com', N'cl12397')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Кулаков Константин Даниилович', 45462579, N'4021 541528', CAST(N'1993-06-20' AS Date), N'410181, г. Барнаул, ул. Механизаторов, 16, кв. 74', N'ohara.rebeka@yahoo.com', N'cl12398')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Кудрявцев Максим Романович', 45462580, N'4109 554053', CAST(N'1998-05-10' AS Date), N'394207, г. Барнаул, ул. Свердлова, 31, кв. 28', N'danika58@rath.com', N'cl12399')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Соболева Кира Фёдоровна', 45462581, N'4537 564868', CAST(N'1998-03-14' AS Date), N'420633, г. Барнаул, ул. Матросова, 18, кв. 41', N'janae.bogan@gmail.com', N'cl12400')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Коновалов Арсений Максимович', 45462582, N'4914 572471', CAST(N'1985-02-18' AS Date), N'445720, г. Барнаул, ул. Матросова, 50, кв. 67', N'vern91@yahoo.com', N'cl12401')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Гусев Михаил Дмитриевич', 45462583, N'4445 581302', CAST(N'1999-11-23' AS Date), N'400646, г. Барнаул, ул. Октябрьская, 47, кв. 65', N'mariana.leannon@larkin.net', N'cl12402')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Суханова Варвара Матвеевна', 45462584, N'4743 598180', CAST(N'1993-09-13' AS Date), N'644410, г. Барнаул, ул. Красная, 17, кв. 69', N'vmoore@gmail.com', N'cl12403')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Орлова Ясмина Васильевна', 45462585, N'4741 601821', CAST(N'1984-06-24' AS Date), N'400750, г. Барнаул, ул. Школьная, 36, кв. 71', N'damon.mcclure@mills.com', N'cl12404')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Васильева Ксения Константиновна', 45462586, N'4783 612567', CAST(N'1999-08-01' AS Date), N'660590, г. Барнаул, ул. Дачная, 37, кв. 70', N'grady.reilly@block.com', N'cl12405')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Борисова Тамара Данииловна', 45462587, N'4658 621200', CAST(N'1993-05-29' AS Date), N'426083, г. Барнаул, ул. Механизаторов, 41, кв. 26', N'boyd.koss@yahoo.com', N'cl12406')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Дмитриев Мирон Ильич', 45462588, N'4908 634613', CAST(N'1985-04-13' AS Date), N'410569, г. Барнаул, ул. Парковая, 36, кв. 17', N'obartell@franecki.info', N'cl12407')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Лебедева Анна Александровна', 45462589, N'5092 642468', CAST(N'1985-03-30' AS Date), N'443375, г. Барнаул, ул. Дзержинского, 50, кв. 95', N'reina75@ferry.net', N'cl12408')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Пономарев Артём Маркович', 45462590, N'5155 465274', CAST(N'1984-06-02' AS Date), N'614316, г. Барнаул, ул. Первомайская, 48, кв. 31', N'karson28@hotmail.com', N'cl12409')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Борисова Елена Михайловна', 45462591, N'5086 666893', CAST(N'1976-05-23' AS Date), N'445685, г. Барнаул, ул. Зеленая, 7, кв. 47', N'damaris61@okon.com', N'cl12410')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Моисеев Камиль Максимович', 45462592, N'5333 675375', CAST(N'1999-06-17' AS Date), N'614505, г. Барнаул, ул. Нагорная, 37, кв. 31', N'carroll.jerod@hotmail.com', N'cl12411')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Герасимова Дарья Константиновна', 45462593, N'5493 684572', CAST(N'1984-10-13' AS Date), N'426629, г. Барнаул, ул. Весенняя, 32, кв. 46', N'ron.treutel@quitzon.com', N'cl12412')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Михайлова Мария Марковна', 45462594, N'5150 696226', CAST(N'1976-12-02' AS Date), N'603743, г. Барнаул, ул. Матросова, 19, кв. 20', N'olen79@yahoo.com', N'cl12413')
INSERT [dbo].[Clients] ([Full name], [Client's code], [Passport data], [Birthday], [Adress], [E-mail], [Password]) VALUES (N'Коршунов Кирилл Максимович', 45462595, N'1308 703305', CAST(N'1985-05-22' AS Date), N'450750, г. Барнаул, ул. Клубная, 23, кв. 90', N'pacocha.robbie@yahoo.com', N'cl12414')
GO
INSERT [dbo].[Employee] ([Employee's code], [Post], [Full name], [Email], [Password], [Last entry], [Type entry], [photo]) VALUES (N'ID 101', 1, N'Ivanv', N'Ivanov@namecomp.ru', N'2L6KZG', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, N'\Resourses\persona.jpg')
INSERT [dbo].[Employee] ([Employee's code], [Post], [Full name], [Email], [Password], [Last entry], [Type entry], [photo]) VALUES (N'ID 102', 1, N'Петров Петр Петрович', N'petrov@namecomp.ru', N'uzWC67', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, N'\Resourses\persona.jpg')
INSERT [dbo].[Employee] ([Employee's code], [Post], [Full name], [Email], [Password], [Last entry], [Type entry], [photo]) VALUES (N'ID 103', 3, N'Федоров Федор Федорович', N'fedorov@namecomp.ru', N'8ntwUp', CAST(N'2022-10-20T13:13:00.000' AS DateTime), 1, N'\Resourses\persona.jpg')
INSERT [dbo].[Employee] ([Employee's code], [Post], [Full name], [Email], [Password], [Last entry], [Type entry], [photo]) VALUES (N'ID 104', 2, N'Миронов Вениамин Куприянович', N'mironov@namecomp.ru', N'YOyhfR1', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, N'\Resourses\persona.jpg')
INSERT [dbo].[Employee] ([Employee's code], [Post], [Full name], [Email], [Password], [Last entry], [Type entry], [photo]) VALUES (N'ID 105', 2, N'Ширяев Ермолай Вениаминович', N'shiryev@namecomp.ru', N'RSbvHv', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 2, N'\Resourses\persona.jpg')
INSERT [dbo].[Employee] ([Employee's code], [Post], [Full name], [Email], [Password], [Last entry], [Type entry], [photo]) VALUES (N'ID 106', 2, N'Игнатов Кассиан Васильевич', N'ignatov@namecomp.ru', N'rwVDh9', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, N'\Resourses\persona.jpg')
INSERT [dbo].[Employee] ([Employee's code], [Post], [Full name], [Email], [Password], [Last entry], [Type entry], [photo]) VALUES (N'ID 107', 1, N'Хохлов Владимир Мэлсович', N'hohlov@namecomp.ru', N'LdNyos', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, N'\Resourses\persona.jpg')
INSERT [dbo].[Employee] ([Employee's code], [Post], [Full name], [Email], [Password], [Last entry], [Type entry], [photo]) VALUES (N'ID 108', 1, N'Стрелков Мстислав Георгьевич', N'strelkov@namecomp.ru', N'gynQMT', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 2, N'\Resourses\persona.jpg')
INSERT [dbo].[Employee] ([Employee's code], [Post], [Full name], [Email], [Password], [Last entry], [Type entry], [photo]) VALUES (N'ID 109', 1, N'Беляева Лилия Наумовна', N'belyeva@namecomp.ru', N'AtnDjr', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, N'\Resourses\persona.jpg')
INSERT [dbo].[Employee] ([Employee's code], [Post], [Full name], [Email], [Password], [Last entry], [Type entry], [photo]) VALUES (N'ID 110', 1, N'Смирнова Ульяна Гордеевна', N'smirnova@namecomp.ru', N'JlFRCZ', CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1, N'\Resourses\persona.jpg')
GO
INSERT [dbo].[ID_Post] ([Post], [ID]) VALUES (N'Продавец            ', 1)
INSERT [dbo].[ID_Post] ([Post], [ID]) VALUES (N'Старший смены       ', 2)
INSERT [dbo].[ID_Post] ([Post], [ID]) VALUES (N'Администратор       ', 3)
GO
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (1, N'45462526/12.03.2022', CAST(N'2022-03-12' AS Date), CAST(N'09:10:00' AS Time), 45462526, 1, NULL, N'2')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (2, N'45462527/13.03.2022', CAST(N'2022-03-13' AS Date), CAST(N'10:10:00' AS Time), 45462527, 2, NULL, N'10')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (3, N'45462528/14.03.2022', CAST(N'2022-03-14' AS Date), CAST(N'11:10:00' AS Time), 45462528, 2, NULL, N'2')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (4, N'45462529/15.03.2022', CAST(N'2022-03-15' AS Date), CAST(N'12:10:00' AS Time), 45462529, 1, NULL, N'10')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (5, N'45462530/16.03.2022', CAST(N'2022-03-16' AS Date), CAST(N'13:10:00' AS Time), 45462530, 3, CAST(N'2022-04-16' AS Date), N'5,333333333')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (6, N'45462531/17.03.2022', CAST(N'2022-03-17' AS Date), CAST(N'14:10:00' AS Time), 45462531, 1, NULL, N'8')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (7, N'45462532/18.03.2022', CAST(N'2022-03-18' AS Date), CAST(N'15:10:00' AS Time), 45462532, 1, NULL, N'4')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (8, N'45462533/19.03.2022', CAST(N'2022-03-19' AS Date), CAST(N'16:10:00' AS Time), 45462533, 2, NULL, N'6')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (9, N'45462534/20.03.2022', CAST(N'2022-03-20' AS Date), CAST(N'10:00:00' AS Time), 45462534, 2, NULL, N'12')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (10, N'45462535/21.03.2022', CAST(N'2022-03-21' AS Date), CAST(N'11:00:00' AS Time), 45462535, 1, NULL, N'2')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (11, N'45462536/22.03.2022', CAST(N'2022-03-22' AS Date), CAST(N'12:00:00' AS Time), 45462536, 3, CAST(N'2022-03-22' AS Date), N'12')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (12, N'45462537/23.03.2022', CAST(N'2022-03-23' AS Date), CAST(N'13:00:00' AS Time), 45462537, 2, NULL, N'2')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (13, N'45462538/24.03.2022', CAST(N'2022-03-24' AS Date), CAST(N'14:00:00' AS Time), 45462538, 2, NULL, N'10')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (14, N'45462539/25.03.2022', CAST(N'2022-03-25' AS Date), CAST(N'15:00:00' AS Time), 45462539, 2, NULL, N'5,333333333')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (15, N'45462540/26.03.2022', CAST(N'2022-03-26' AS Date), CAST(N'16:00:00' AS Time), 45462540, 3, CAST(N'2022-04-26' AS Date), N'8')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (16, N'45462541/27.03.2022', CAST(N'2022-03-27' AS Date), CAST(N'17:00:00' AS Time), 45462541, 1, NULL, N'4')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (17, N'45462542/28.03.2022', CAST(N'2022-03-28' AS Date), CAST(N'18:00:00' AS Time), 45462542, 2, NULL, N'6')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (18, N'45462543/29.03.2022', CAST(N'2022-03-29' AS Date), CAST(N'19:00:00' AS Time), 45462543, 2, NULL, N'12')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (19, N'45462544/30.03.2022', CAST(N'2022-03-30' AS Date), CAST(N'12:30:00' AS Time), 45462544, 1, NULL, N'2')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (20, N'45462545/31.03.2022', CAST(N'2022-03-31' AS Date), CAST(N'13:30:00' AS Time), 45462545, 1, NULL, N'10')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (21, N'45462546/01.04.2022', CAST(N'2022-04-01' AS Date), CAST(N'14:30:00' AS Time), 45462546, 3, CAST(N'2022-04-01' AS Date), N'2')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (22, N'45462547/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 45462547, 1, NULL, N'10')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (23, N'45462548/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 45462548, 1, NULL, N'5,333333333')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (24, N'45462549/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462549, 2, NULL, N'8')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (25, N'45462550/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'18:30:00' AS Time), 45462550, 2, NULL, N'4')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (26, N'45462551/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'15:30:00' AS Time), 45462551, 2, NULL, N'6')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (27, N'45462552/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'16:30:00' AS Time), 45462552, 2, NULL, N'12')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (28, N'45462553/08.04.2022', CAST(N'2022-04-08' AS Date), CAST(N'17:30:00' AS Time), 45462553, 3, CAST(N'2022-04-08' AS Date), N'2')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (29, N'45462554/09.04.2022', CAST(N'2022-04-09' AS Date), CAST(N'18:30:00' AS Time), 45462554, 1, NULL, N'10')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (30, N'45462555/10.04.2022', CAST(N'2022-04-10' AS Date), CAST(N'19:30:00' AS Time), 45462555, 2, NULL, N'2')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (31, N'45462556/11.04.2022', CAST(N'2022-04-11' AS Date), CAST(N'10:30:00' AS Time), 45462556, 2, NULL, N'10')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (32, N'45462557/12.04.2022', CAST(N'2022-04-12' AS Date), CAST(N'11:30:00' AS Time), 45462557, 1, NULL, N'5,333333333')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (33, N'45462558/13.04.2022', CAST(N'2022-04-13' AS Date), CAST(N'12:30:00' AS Time), 45462558, 1, NULL, N'8')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (34, N'45462559/14.04.2022', CAST(N'2022-04-14' AS Date), CAST(N'13:30:00' AS Time), 45462559, 1, NULL, N'4')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (35, N'45462560/15.04.2022', CAST(N'2022-04-15' AS Date), CAST(N'14:30:00' AS Time), 45462560, 2, NULL, N'6')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (36, N'45462561/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 45462561, 2, NULL, N'12')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (37, N'45462562/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 45462562, 2, NULL, N'2')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (38, N'45462563/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462563, 3, CAST(N'2022-04-04' AS Date), N'10')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (39, N'45462564/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'10:15:00' AS Time), 45462564, 2, NULL, N'2')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (40, N'45462565/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'11:15:00' AS Time), 45462565, 1, NULL, N'10')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (41, N'45462566/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'12:15:00' AS Time), 45462566, 3, CAST(N'2022-04-07' AS Date), N'5,333333333')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (42, N'45462567/08.04.2022', CAST(N'2022-04-08' AS Date), CAST(N'13:15:00' AS Time), 45462567, 2, NULL, N'8')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (43, N'45462568/09.04.2022', CAST(N'2022-04-09' AS Date), CAST(N'14:15:00' AS Time), 45462568, 2, NULL, N'4')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (44, N'45462569/01.04.2022', CAST(N'2022-04-01' AS Date), CAST(N'15:15:00' AS Time), 45462569, 2, NULL, N'6')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (45, N'45462570/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'16:15:00' AS Time), 45462570, 2, NULL, N'12')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (46, N'45462571/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'10:45:00' AS Time), 45462571, 2, NULL, N'8')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (47, N'45462572/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'11:45:00' AS Time), 45462572, 3, CAST(N'2022-04-04' AS Date), N'5,333333333')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (48, N'45462573/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'12:45:00' AS Time), 45462573, 1, NULL, N'8')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (49, N'45462574/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'13:45:00' AS Time), 45462574, 1, NULL, N'4')
INSERT [dbo].[Order] ([ID], [Order's code], [Date of creation], [Order time], [Client's code], [Status], [Closing date], [Rental time]) VALUES (50, N'45462575/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'14:45:00' AS Time), 45462575, 1, NULL, N'6')
GO
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (1, 31)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (1, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (1, 336)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (1, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (2, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (2, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (2, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (2, 99)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (2, 123)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (3, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (3, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (3, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (3, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (4, 44)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (4, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (4, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (4, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (4, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (5, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (5, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (5, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (5, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (5, 336)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (5, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (6, 31)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (6, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (6, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (7, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (7, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (7, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (7, 99)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (8, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (8, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (8, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (8, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (9, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (9, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (9, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (9, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (10, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (10, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (10, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (10, 336)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (10, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (11, 31)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (11, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (11, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (12, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (12, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (12, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (12, 99)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (13, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (13, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (13, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (14, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (14, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (14, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (14, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (15, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (15, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (15, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (15, 336)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (15, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (16, 31)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (16, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (16, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (17, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (17, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (17, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (17, 99)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (18, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (18, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (18, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (19, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (19, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (19, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (19, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (20, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (20, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (20, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (20, 336)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (20, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (21, 31)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (21, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (21, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (22, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (22, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (22, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (22, 99)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (23, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (23, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (23, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (24, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (24, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (24, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (24, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (25, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (25, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (25, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (25, 336)
GO
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (25, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (26, 31)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (26, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (26, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (27, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (27, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (27, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (27, 99)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (28, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (28, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (28, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (29, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (29, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (29, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (29, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (30, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (30, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (30, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (30, 336)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (30, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (31, 31)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (31, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (31, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (32, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (32, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (32, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (32, 99)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (33, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (33, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (33, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (34, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (34, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (34, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (34, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (35, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (35, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (35, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (35, 336)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (35, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (36, 31)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (36, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (36, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (37, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (37, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (37, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (37, 99)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (38, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (38, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (38, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (39, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (39, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (39, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (39, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (40, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (40, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (40, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (40, 336)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (40, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (41, 31)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (41, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (41, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (42, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (42, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (42, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (42, 99)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (43, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (43, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (43, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (44, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (44, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (44, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (44, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (45, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (45, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (45, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (45, 336)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (45, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (46, 31)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (46, 34)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (46, 353)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (47, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (47, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (47, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (47, 99)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (48, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (48, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (48, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (49, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (49, 57)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (49, 88)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (49, 92)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (50, 45)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (50, 89)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (50, 98)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (50, 336)
INSERT [dbo].[Order services] ([ID orders], [ID services]) VALUES (50, 353)
GO
INSERT [dbo].[OrderStatus] ([ID], [Status]) VALUES (1, N'Новая               ')
INSERT [dbo].[OrderStatus] ([ID], [Status]) VALUES (2, N'В прокате           ')
INSERT [dbo].[OrderStatus] ([ID], [Status]) VALUES (3, N'Закрыта             ')
GO
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (31, N'Прокат сноуборда', N'JUR8R', 1200.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (34, N'Прокат обуви для сноуборда', N'JKFBJ09', 400.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (44, N'Прокат коньков', N'DHBGFY563', 450.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (45, N'Прокат защитных подушек для сноубордистов', N'JFH7382', 300.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (57, N'Подъем на 1 уровень', N'JHVSJF6', 300.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (88, N'Подъем на 2  уровень', N'DJHGBS982', 700.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (89, N'Прокат очков для лыжников', N'OIJNB12', 150.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (92, N'Прокат санок', N'HJBUJE21J', 300.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (98, N'Прокат шлема', N'63748HF', 300.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (99, N'Прокат вартушки', N'BSFBHV63', 100.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (123, N'Подъем на 3 уровень', N'638VVNQ3', 1200.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (336, N'Прокат лыж', N'8HFJHG443', 800.0000)
INSERT [dbo].[Services] ([ID], [Name of the service], [Service's code], [Cost]) VALUES (353, N'Прокат лыжных палок', N'87FDJKHJ', 100.0000)
GO
INSERT [dbo].[Type entryID] ([Type entry], [ID]) VALUES (N'Успешно', 1)
INSERT [dbo].[Type entryID] ([Type entry], [ID]) VALUES (N'Неуспешно', 2)
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_ID_Post] FOREIGN KEY([Post])
REFERENCES [dbo].[ID_Post] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_ID_Post]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Type entryID] FOREIGN KEY([Type entry])
REFERENCES [dbo].[Type entryID] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Type entryID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([Status])
REFERENCES [dbo].[OrderStatus] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order services]  WITH CHECK ADD  CONSTRAINT [FK_Order services_Order] FOREIGN KEY([ID orders])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Order services] CHECK CONSTRAINT [FK_Order services_Order]
GO
ALTER TABLE [dbo].[Order services]  WITH CHECK ADD  CONSTRAINT [FK_Order services_Services] FOREIGN KEY([ID services])
REFERENCES [dbo].[Services] ([ID])
GO
ALTER TABLE [dbo].[Order services] CHECK CONSTRAINT [FK_Order services_Services]
GO
USE [master]
GO
ALTER DATABASE [DA_Blagodat] SET  READ_WRITE 
GO
