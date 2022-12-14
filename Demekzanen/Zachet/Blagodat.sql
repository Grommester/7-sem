USE [master]
GO
/****** Object:  Database [195DA_1]    Script Date: 28.11.2022 11:27:49 ******/
CREATE DATABASE [195DA_1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'195DA_1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\195DA_1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'195DA_1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\195DA_1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [195DA_1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [195DA_1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [195DA_1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [195DA_1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [195DA_1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [195DA_1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [195DA_1] SET ARITHABORT OFF 
GO
ALTER DATABASE [195DA_1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [195DA_1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [195DA_1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [195DA_1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [195DA_1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [195DA_1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [195DA_1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [195DA_1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [195DA_1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [195DA_1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [195DA_1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [195DA_1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [195DA_1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [195DA_1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [195DA_1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [195DA_1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [195DA_1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [195DA_1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [195DA_1] SET  MULTI_USER 
GO
ALTER DATABASE [195DA_1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [195DA_1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [195DA_1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [195DA_1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [195DA_1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [195DA_1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [195DA_1] SET QUERY_STORE = OFF
GO
USE [195DA_1]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Code] [varchar](6) NULL,
	[LastName] [varchar](100) NULL,
	[FirstName] [varchar](50) NULL,
	[Patronimic] [varchar](50) NULL,
	[Gender] [char](1) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Code] [varchar](3) NOT NULL,
	[Name] [varchar](100) NULL,
	[Flag] [binary](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryID]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryID](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](3) NULL,
 CONSTRAINT [PK_CountryID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[StarCount] [int] NULL,
	[Country] [varchar](3) NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelPhoto]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelPhoto](
	[ID] [int] NOT NULL,
	[Preview] [binary](50) NULL,
	[PhotoPath] [varchar](200) NULL,
 CONSTRAINT [PK_HotelPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[name]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[name](
	[ID] [int] NOT NULL,
	[Name1] [nchar](10) NULL,
	[Post] [int] NULL,
	[Password] [nchar](10) NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_name] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostID]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostID](
	[id] [int] NOT NULL,
	[Post] [nchar](50) NULL,
 CONSTRAINT [PK_PostID] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] NOT NULL,
	[Name] [varchar](200) NULL,
	[PartnerID] [int] NULL,
	[HotelID] [int] NULL,
	[Price] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceByTour]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceByTour](
	[ID] [int] NOT NULL,
	[ServiceID] [int] NULL,
	[IsControl] [char](1) NOT NULL,
 CONSTRAINT [PK_ServiceByTour] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tours]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tours](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[ContryID] [int] NULL,
	[TicketCount] [int] NULL,
	[Price] [money] NULL,
	[IsActual] [int] NULL,
	[ToursTypeID] [int] NULL,
 CONSTRAINT [PK_Tours] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToursID]    Script Date: 28.11.2022 11:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToursID](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ToursType] [varchar](100) NULL,
 CONSTRAINT [PK_ToursID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AD', N'Andorra', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AE', N'United Arab Emirates', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AF', N'Afghanistan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AG', N'Antigua and Barbuda', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AI', N'Anguilla', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AL', N'Albania', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AM', N'Armenia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AN', N'Netherlands Antilles', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AO', N'Angola', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AP', N'Asia/Pacific Region', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AQ', N'Antarctica', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AR', N'Argentina', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AS', N'American Samoa', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AT', N'Austria', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AU', N'Australia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AW', N'Aruba', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'AZ', N'Azerbaijan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BA', N'Bosnia and Herzegovina', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BB', N'Barbados', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BD', N'Bangladesh', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BE', N'Belgium', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BF', N'Burkina Faso', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BG', N'Bulgaria', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BH', N'Bahrain', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BI', N'Burundi', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BJ', N'Benin', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BM', N'Bermuda', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BN', N'Brunei Darussalam', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BO', N'Bolivia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BR', N'Brazil', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BS', N'Bahamas', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BT', N'Bhutan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BV', N'Bouvet Island', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BW', N'Botswana', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BY', N'Belarus', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'BZ', N'Belize', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CA', N'Canada', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CC', N'Cocos (Keeling) Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CD', N'Congo, The Democratic Republic of the', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CF', N'Central African Republic', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CG', N'Congo', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CH', N'Switzerland', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CI', N'Cote D''Ivoire', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CK', N'Cook Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CL', N'Chile', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CM', N'Cameroon', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CN', N'China', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CO', N'Colombia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CR', N'Costa Rica', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CS', N'Serbia and Montenegro', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CU', N'Cuba', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CV', N'Cape Verde', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CX', N'Christmas Island', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CY', N'Cyprus', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'CZ', N'Czech Republic', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'DE', N'Germany', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'DJ', N'Djibouti', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'DK', N'Denmark', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'DM', N'Dominica', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'DO', N'Dominican Republic', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'DZ', N'Algeria', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'EC', N'Ecuador', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'EE', N'Estonia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'EG', N'Egypt', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'EH', N'Western Sahara', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'ER', N'Eritrea', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'ES', N'Spain', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'ET', N'Ethiopia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'EU', N'Europe', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'FI', N'Finland', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'FJ', N'Fiji', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'FK', N'Falkland Islands (Malvinas)', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'FM', N'Micronesia, Federated States of', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'FO', N'Faroe Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'FR', N'France', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'FX', N'France, Metropolitan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GA', N'Gabon', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GB', N'United Kingdom', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GD', N'Grenada', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GE', N'Georgia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GF', N'French Guiana', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GH', N'Ghana', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GI', N'Gibraltar', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GL', N'Greenland', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GM', N'Gambia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GN', N'Guinea', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GP', N'Guadeloupe', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GQ', N'Equatorial Guinea', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GR', N'Greece', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GS', N'South Georgia and the South Sandwich Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GT', N'Guatemala', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GU', N'Guam', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GW', N'Guinea-Bissau', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'GY', N'Guyana', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'HK', N'Hong Kong', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'HM', N'Heard Island and McDonald Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'HN', N'Honduras', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'HR', N'Croatia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'HT', N'Haiti', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'HU', N'Hungary', NULL)
GO
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'ID', N'Indonesia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'IE', N'Ireland', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'IL', N'Israel', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'IN', N'India', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'IO', N'British Indian Ocean Territory', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'IQ', N'Iraq', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'IR', N'Iran, Islamic Republic of', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'IS', N'Iceland', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'IT', N'Italy', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'JM', N'Jamaica', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'JO', N'Jordan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'JP', N'Japan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KE', N'Kenya', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KG', N'Kyrgyzstan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KH', N'Cambodia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KI', N'Kiribati', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KM', N'Comoros', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KN', N'Saint Kitts and Nevis', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KP', N'Korea, Democratic People''s Republic of', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KR', N'Korea, Republic of', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KW', N'Kuwait', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KY', N'Cayman Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'KZ', N'Kazakhstan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LA', N'Lao People''s Democratic Republic', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LB', N'Lebanon', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LC', N'Saint Lucia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LI', N'Liechtenstein', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LK', N'Sri Lanka', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LR', N'Liberia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LS', N'Lesotho', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LT', N'Lithuania', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LU', N'Luxembourg', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LV', N'Latvia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'LY', N'Libyan Arab Jamahiriya', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MA', N'Morocco', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MC', N'Monaco', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MD', N'Moldova, Republic of', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MG', N'Madagascar', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MH', N'Marshall Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MK', N'Macedonia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'ML', N'Mali', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MM', N'Myanmar', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MN', N'Mongolia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MO', N'Macau', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MP', N'Northern Mariana Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MQ', N'Martinique', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MR', N'Mauritania', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MS', N'Montserrat', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MT', N'Malta', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MU', N'Mauritius', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MV', N'Maldives', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MW', N'Malawi', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MX', N'Mexico', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MY', N'Malaysia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'MZ', N'Mozambique', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NA', N'Namibia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NC', N'New Caledonia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NE', N'Niger', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NF', N'Norfolk Island', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NG', N'Nigeria', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NI', N'Nicaragua', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NL', N'Netherlands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NO', N'Norway', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NP', N'Nepal', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NR', N'Nauru', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NU', N'Niue', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'NZ', N'New Zealand', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'OM', N'Oman', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PA', N'Panama', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PE', N'Peru', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PF', N'French Polynesia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PG', N'Papua New Guinea', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PH', N'Philippines', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PK', N'Pakistan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PL', N'Poland', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PM', N'Saint Pierre and Miquelon', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PN', N'Pitcairn Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PR', N'Puerto Rico', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PS', N'Palestinian Territory', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PT', N'Portugal', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PW', N'Palau', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'PY', N'Paraguay', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'QA', N'Qatar', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'RE', N'Reunion', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'RO', N'Romania', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'RU', N'Russia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'RW', N'Rwanda', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SA', N'Saudi Arabia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SB', N'Solomon Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SC', N'Seychelles', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SD', N'Sudan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SE', N'Sweden', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SG', N'Singapore', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SH', N'Saint Helena', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SI', N'Slovenia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SJ', N'Svalbard and Jan Mayen', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SK', N'Slovakia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SL', N'Sierra Leone', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SM', N'San Marino', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SN', N'Senegal', NULL)
GO
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SO', N'Somalia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SR', N'Suriname', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'ST', N'Sao Tome and Principe', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SV', N'El Salvador', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SY', N'Syrian Arab Republic', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'SZ', N'Swaziland', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TC', N'Turks and Caicos Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TD', N'Chad', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TF', N'French Southern Territories', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TG', N'Togo', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TH', N'Thailand', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TJ', N'Tajikistan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TK', N'Tokelau', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TM', N'Turkmenistan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TN', N'Tunisia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TO', N'Tonga', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TP', N'East Timor', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TR', N'Turkey', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TT', N'Trinidad and Tobago', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TV', N'Tuvalu', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TW', N'Taiwan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'TZ', N'Tanzania, United Republic of', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'UA', N'Ukraine', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'UG', N'Uganda', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'UM', N'United States Minor Outlying Islands', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'US', N'United States', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'UY', N'Uruguay', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'UZ', N'Uzbekistan', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'VA', N'Holy See (Vatican City State)', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'VC', N'Saint Vincent and the Grenadines', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'VE', N'Venezuela', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'VG', N'Virgin Islands, British', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'VI', N'Virgin Islands, U.S.', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'VN', N'Vietnam', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'VU', N'Vanuatu', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'WF', N'Wallis and Futuna', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'WS', N'Samoa', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'YE', N'Yemen', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'YT', N'Mayotte', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'ZA', N'South Africa', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'ZM', N'Zambia', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'ZR', N'Zaire', NULL)
INSERT [dbo].[Country] ([Code], [Name], [Flag]) VALUES (N'ZW', N'Zimbabwe', NULL)
GO
SET IDENTITY_INSERT [dbo].[CountryID] ON 

INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (1, N'BG')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (2, N'АЕ')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (3, N'DE')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (4, N'АТ')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (5, N'BY')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (6, N'RU')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (7, N'NL')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (8, N'TR')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (9, N'KR')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (10, N'IN')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (11, N'ТН')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (12, N'ЕЕ')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (13, N'GR')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (14, N'FI')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (15, N'IR')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (16, N'SE')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (17, N'CN')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (18, N'VE')
INSERT [dbo].[CountryID] ([ID], [Country]) VALUES (19, N'BR')
SET IDENTITY_INSERT [dbo].[CountryID] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotel] ON 

INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (1, N'Hotel Artemide', 5, N'ES ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (2, N'H10 Madison', 4, N'FI ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (3, N'A Room With A View', 3, N'ES ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (4, N'Hotel Rec Barcelona', 5, N'ES ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (5, N'Aydinli Cave Hotel', 2, N'ES ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (6, N'Titanic Business Kartal', 3, N'ES ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (7, N'Amber Design Residence', 3, N'FI ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (8, N'Hotel Al Ponte Mocenigo', 5, N'RU ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (9, N'La Cachette', 4, N'RU ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (10, N'Celsus 8outique Hotel', 3, N'GB ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (11, N'Ashford Castle', 2, N'RU ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (12, N'Agarta Cave Hotel', 5, N'GB ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (13, N'Sofitel Grand Sopot', 5, N'FI ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (14, N'Grand Resort Bad Ragaz', 4, N'RU ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (15, N'Kelebek Special Cave Hotel', 5, N'GB ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (16, N'A Room With A View', 3, N'GB ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (17, N'Aren Cave Hotel & Art Gallery', 5, N'GE ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (18, N'Castle Hotel Auf Schoenburg', 3, N'GE ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (19, N'Lawton & Lauriston Court Hotel', 5, N'GB ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (20, N'El if Hanim Hotel & Spa', 3, N'RU ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (21, N'Boutique Hotel Sierra de Alicante', 3, N'RU ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (22, N'Van der Valk Hotel Hoorn', 4, N'RU ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (23, N'Up Hotel', 5, N'RU ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (24, N'Dere Suites', 5, N'FI ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (25, N'Park Dedeman Trabzon', 3, N'RU ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (26, N'Duven Hotel', 5, N'FI ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (27, N'Bandholm Hotel', 2, N'GE ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (28, N'Boutique Hotel El Cresol', 4, N'HR ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (29, N'Perimasali Cave Hotel - Cappadocia', 3, N'HR ')
INSERT [dbo].[Hotel] ([ID], [Name], [StarCount], [Country]) VALUES (30, N'Gul Konaklari -Sinasos Rose Mansio', 5, N'HR ')
SET IDENTITY_INSERT [dbo].[Hotel] OFF
GO
INSERT [dbo].[name] ([ID], [Name1], [Post], [Password], [photo]) VALUES (1, N'test      ', 1, N'1         ', N'\Resourses\persona.png')
INSERT [dbo].[name] ([ID], [Name1], [Post], [Password], [photo]) VALUES (2, N'testSmena ', 2, N'2         ', N'\Resourses\persona.png')
INSERT [dbo].[name] ([ID], [Name1], [Post], [Password], [photo]) VALUES (3, N'testMan   ', 3, N'3         ', N'\Resourses\persona.png')
GO
INSERT [dbo].[PostID] ([id], [Post]) VALUES (1, N'Administrator                                     ')
INSERT [dbo].[PostID] ([id], [Post]) VALUES (2, NULL)
INSERT [dbo].[PostID] ([id], [Post]) VALUES (3, NULL)
GO
SET IDENTITY_INSERT [dbo].[Tours] ON 

INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (1, N'Болгарское наследие', 1, 127, 35700.0000, 1, 1)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (2, N'Волшебный Восток', 2, 92, 77100.0000, 1, 2)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (3, N'Город с большими амбициями', 3, 72, 93300.0000, 1, 3)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (4, N'Город четырех ворот', 3, 143, 72500.0000, 1, 4)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (5, N'Горячий отдых зимой и летом', 4, 34, 31900.0000, 0, 5)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (7, N'Жемчужина Татарстана', 6, 224, 65100.0000, 1, 7)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (8, N'Знакомьтесь. Амстердам''', 7, 283, 68300.0000, 1, 8)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (10, N'Многоликий Сувон', 9, 215, 62200.0000, 1, 8)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (11, N'Москва поэтическая', 6, 30, 53200.0000, 1, 10)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (12, N'Незабываемый Дели', 10, 250, 22500.0000, 1, 11)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (13, N'Отдых на райском острове', 11, 51, 30900.0000, 0, 2)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (14, N'По старому Таллину', 12, 60, 28800.0000, 1, 12)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (15, N'Прекрасные острова Греции', 13, 120, 53700.0000, 0, 13)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (16, N'Романтика белых ночей и разводных мостов', 6, 101, 54900.0000, 1, 14)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (17, N'Свидание с Хельсинки', 14, 161, 49100.0000, 1, 8)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (18, N'Сердце Ирана', 15, 99, 71400.0000, 1, 15)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (19, N'Сердце Северной Карелии', 14, 25, 62000.0000, 1, 16)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (20, N'Старый город', 16, 38, 25600.0000, 1, 12)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (21, N'Столица страны Утренней Свежести', 9, 292, 27600.0000, 1, 13)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (22, N'Страна идеальной гармонии', 17, 223, 28700.0000, 1, 17)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (23, N'Страна удивительных контрастов', 18, 286, 50900.0000, 0, 18)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (24, N'Урбанистическая Бразилия', 19, 22, 80900.0000, 1, 19)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (25, N'Финская крепость', 14, 115, 70700.0000, 1, 20)
INSERT [dbo].[Tours] ([ID], [Name], [ContryID], [TicketCount], [Price], [IsActual], [ToursTypeID]) VALUES (26, N'Финский романтизм', 14, 289, 93600.0000, 1, 21)
SET IDENTITY_INSERT [dbo].[Tours] OFF
GO
SET IDENTITY_INSERT [dbo].[ToursID] ON 

INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (1, N'Международный туризм Лечебно-оздоровительные туры. Пляжные туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (2, N'Международный туризм Пляжные туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (3, N'Международный туризм Экскурсионные туры, Обслуживание корпоративных клиентов по заказу')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (4, N'Международный туризм Экскурсионные туры. Культурно-исторические туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (5, N'Международный туризм. Лечебно-оздоровительные туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (7, N'Внутренний туризм Экскурсионные туры. Культурно-исторические туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (8, N'Международный туризм Экскурсионные туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (10, N'Внутренний туризм Специализированные детские туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (11, N'Международный туризм. Экскурсионные туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (12, N'Международный туризм. Экскурсионные туры. Культурно-исторические туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (13, N'Международный туризм')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (14, N'Внутренний туризм Экскурсионные туры Обслуживание корпоративных клиентов по заказу')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (15, N'Международный туризм Обслуживание корпоративных клиентов по заказу, Культурно-исторические туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (16, N'Международный туризм. Горнолыжные курорты')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (17, N'Международный туризм Лечебно-оздоровительные туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (18, N'Международный туризм Специализированные детские туры. Экскурсионные туры Культурно-исторические туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (19, N'Международный туризм Культурно-исторические туры Пляжные туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (20, N'Международный пуризм Специализированные детские туры. Экскурсионные туры Культурно-исторические туры')
INSERT [dbo].[ToursID] ([ID], [ToursType]) VALUES (21, N'Международный туризм. Обслуживание корпоративных клиентов по заказу, Горнолыжные курорты')
SET IDENTITY_INSERT [dbo].[ToursID] OFF
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Country] FOREIGN KEY([Country])
REFERENCES [dbo].[Country] ([Code])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Country]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_HotelPhoto] FOREIGN KEY([HotelID])
REFERENCES [dbo].[HotelPhoto] ([ID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_HotelPhoto]
GO
ALTER TABLE [dbo].[ServiceByTour]  WITH CHECK ADD  CONSTRAINT [FK_ServiceByTour_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ServiceByTour] CHECK CONSTRAINT [FK_ServiceByTour_Service]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FK_Tours_CountryID] FOREIGN KEY([ContryID])
REFERENCES [dbo].[CountryID] ([ID])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FK_Tours_CountryID]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FK_Tours_ToursID] FOREIGN KEY([ToursTypeID])
REFERENCES [dbo].[ToursID] ([ID])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FK_Tours_ToursID]
GO
USE [master]
GO
ALTER DATABASE [195DA_1] SET  READ_WRITE 
GO
