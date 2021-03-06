USE [master]
GO
/****** Object:  Database [CityList]    Script Date: 05/08/2013 17:54:10 ******/
CREATE DATABASE [CityList] ON  PRIMARY 
( NAME = N'CityList', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CityList.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CityList_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CityList_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CityList] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CityList].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CityList] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CityList] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CityList] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CityList] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CityList] SET ARITHABORT OFF
GO
ALTER DATABASE [CityList] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CityList] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CityList] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CityList] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CityList] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CityList] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CityList] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CityList] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CityList] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CityList] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CityList] SET  DISABLE_BROKER
GO
ALTER DATABASE [CityList] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CityList] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CityList] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CityList] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CityList] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CityList] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CityList] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CityList] SET  READ_WRITE
GO
ALTER DATABASE [CityList] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CityList] SET  MULTI_USER
GO
ALTER DATABASE [CityList] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CityList] SET DB_CHAINING OFF
GO
USE [CityList]
GO
/****** Object:  Table [dbo].[CityWeather]    Script Date: 05/08/2013 17:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CityWeather](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](200) NULL,
	[CountryCode] [varchar](5) NULL,
	[Condition] [varchar](150) NULL,
	[Remarks] [varchar](550) NULL,
	[Sunrise] [varchar](50) NULL,
	[Sunset] [varchar](50) NULL,
	[TempLow] [varchar](50) NULL,
	[TempHigh] [varchar](50) NULL,
	[Icon] [varchar](150) NULL,
	[SkyIcon] [varchar](150) NULL,
	[Date] [datetime] NULL,
	[WeekDay] [nvarchar](150) NULL,
	[LastUpdate] [datetime] NULL,
	[UpdateBy] [varchar](150) NULL,
 CONSTRAINT [PK_CityWeather] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CityWeather] ON
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1585, N'AGEN', N'FR', N'Chance of Rain', NULL, N'6:39', N'21:09', N'13', N'26', N'cloudy', N'cloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011CB517 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1586, N'AGEN', N'FR', N'Rain', NULL, N'6:39', N'21:09', N'9', N'19', N'rain', N'cloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011CB517 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1587, N'AGEN', N'FR', N'Chance of Rain', NULL, N'6:39', N'21:09', N'5', N'19', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011CB517 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1588, N'AGEN', N'FR', N'Partly Cloudy', NULL, N'6:39', N'21:09', N'7', N'20', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011CB517 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1589, N'AJACCIO', N'FR', N'Chance of Rain', NULL, N'6:12', N'20:31', N'11', N'22', N'chancerain', N'partlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011CD7C5 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1590, N'AJACCIO', N'FR', N'Mostly Cloudy', NULL, N'6:12', N'20:31', N'14', N'22', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011CD7C5 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1591, N'AJACCIO', N'FR', N'Partly Cloudy', NULL, N'6:12', N'20:31', N'13', N'22', N'partlycloudy', N'mostlysunny', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011CD7C5 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1592, N'AJACCIO', N'FR', N'Partly Cloudy', NULL, N'6:12', N'20:31', N'11', N'20', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011CD7C5 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1593, N'ALBI', N'FR', N'Chance of Rain', NULL, N'6:33', N'21:02', N'13', N'24', N'cloudy', N'cloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011CFB61 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1594, N'ALBI', N'FR', N'Chance of Rain', NULL, N'6:33', N'21:02', N'9', N'18', N'chancerain', N'cloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011CFB61 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1595, N'ALBI', N'FR', N'Mostly Cloudy', NULL, N'6:33', N'21:02', N'4', N'16', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011CFB61 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1596, N'ALBI', N'FR', N'Mostly Cloudy', NULL, N'6:33', N'21:02', N'7', N'17', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011CFB61 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1597, N'AMIENS', N'FR', N'Rain', NULL, N'6:15', N'21:19', N'7', N'16', N'rain', N'mostlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D1E5A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1598, N'AMIENS', N'FR', N'Partly Cloudy', NULL, N'6:15', N'21:19', N'7', N'14', N'partlycloudy', N'partlycloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D1E5A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1599, N'AMIENS', N'FR', N'Mostly Cloudy', NULL, N'6:15', N'21:19', N'8', N'13', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D1E5A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1600, N'AMIENS', N'FR', N'Chance of Rain', NULL, N'6:15', N'21:19', N'5', N'13', N'chancerain', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D1E5A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1601, N'ARRAS', N'FR', N'Thunderstorm', NULL, N'6:12', N'21:19', N'8', N'19', N'tstorms', N'partlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D1E5E AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1602, N'ARRAS', N'FR', N'Clear', NULL, N'6:12', N'21:19', N'8', N'16', N'clear', N'mostlysunny', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D1E5E AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1603, N'ARRAS', N'FR', N'Partly Cloudy', NULL, N'6:12', N'21:19', N'9', N'16', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D1E5E AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1604, N'ARRAS', N'FR', N'Chance of Rain', NULL, N'6:12', N'21:19', N'5', N'16', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D1E5E AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1605, N'ANGERS', N'FR', N'Rain', NULL, N'6:34', N'21:23', N'7', N'18', N'rain', N'partlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D1F8A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1606, N'ANGERS', N'FR', N'Mostly Cloudy', NULL, N'6:34', N'21:23', N'5', N'16', N'mostlycloudy', N'cloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D1F8A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1607, N'ANGERS', N'FR', N'Chance of Rain', NULL, N'6:34', N'21:23', N'7', N'16', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D1F8A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1608, N'ANGERS', N'FR', N'Mostly Cloudy', NULL, N'6:34', N'21:23', N'4', N'14', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D1F8A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1609, N'ANNECY', N'FR', N'Partly Cloudy', NULL, N'6:12', N'20:52', N'14', N'23', N'partlycloudy', N'partlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D1F8E AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1610, N'ANNECY', N'FR', N'Chance of Rain', NULL, N'6:12', N'20:52', N'11', N'22', N'chancerain', N'mostlycloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D1F8E AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1611, N'ANNECY', N'FR', N'Chance of Rain', NULL, N'6:12', N'20:52', N'9', N'16', N'chancerain', N'mostlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D1F8E AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1612, N'ANNECY', N'FR', N'Partly Cloudy', NULL, N'6:12', N'20:52', N'7', N'16', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D1F8E AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1613, N'ATAR', N'MAR', N'Partly Cloudy', NULL, N'6:18', N'19:19', N'25', N'42', N'partlycloudy', N'partlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D414D AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1614, N'ATAR', N'MAR', N'Clear', NULL, N'6:18', N'19:19', N'25', N'42', N'clear', N'mostlysunny', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D414D AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1615, N'ATAR', N'MAR', N'Partly Cloudy', NULL, N'6:18', N'19:19', N'25', N'41', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D414D AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1616, N'ATAR', N'MAR', N'Partly Cloudy', NULL, N'6:18', N'19:19', N'23', N'43', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D414D AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1617, N'AVIGNON', N'FR', N'Partly Cloudy', NULL, N'6:23', N'20:52', N'12', N'24', N'partlycloudy', N'partlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D418A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1618, N'AVIGNON', N'FR', N'Rain', NULL, N'6:23', N'20:52', N'13', N'23', N'rain', N'mostlycloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D418A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1619, N'AVIGNON', N'FR', N'Partly Cloudy', NULL, N'6:23', N'20:52', N'11', N'22', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D418A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1620, N'AVIGNON', N'FR', N'Partly Cloudy', NULL, N'6:23', N'20:52', N'10', N'21', N'partlycloudy', N'mostlysunny', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D418A AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1621, N'AURILLAC', N'FR', N'Chance of a Thunderstorm', NULL, N'6:30', N'21:04', N'9', N'19', N'chancetstorms', N'mostlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D41F6 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1622, N'AURILLAC', N'FR', N'Rain', NULL, N'6:30', N'21:04', N'8', N'15', N'rain', N'mostlycloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D41F6 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1623, N'AURILLAC', N'FR', N'Partly Cloudy', NULL, N'6:30', N'21:04', N'1', N'16', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D41F6 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1624, N'AURILLAC', N'FR', N'Partly Cloudy', NULL, N'6:30', N'21:04', N'3', N'14', N'partlycloudy', N'mostlysunny', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D41F6 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1625, N'LIEGE', N'BE', N'Chance of Rain', NULL, N'6:00', N'21:09', N'11', N'19', N'chancerain', N'partlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D4295 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1626, N'LIEGE', N'BE', N'Chance of Rain', NULL, N'6:00', N'21:09', N'9', N'18', N'partlycloudy', N'partlycloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D4295 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1627, N'LIEGE', N'BE', N'Partly Cloudy', NULL, N'6:00', N'21:09', N'8', N'15', N'partlycloudy', N'mostlysunny', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D4295 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1628, N'LIEGE', N'BE', N'Chance of Rain', NULL, N'6:00', N'21:09', N'8', N'17', N'chancerain', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D4295 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1629, N'FIGUIG', N'MAR', N'Mostly Cloudy', NULL, N'6:12', N'19:50', N'19', N'31', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D42C4 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1630, N'FIGUIG', N'MAR', N'Mostly Cloudy', NULL, N'6:12', N'19:50', N'20', N'32', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D42C4 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1631, N'FIGUIG', N'MAR', N'Partly Cloudy', NULL, N'6:12', N'19:50', N'19', N'33', N'partlycloudy', N'mostlysunny', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D42C4 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1632, N'FIGUIG', N'MAR', N'Clear', NULL, N'6:12', N'19:50', N'20', N'32', N'clear', N'mostlysunny', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D42C4 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1633, N'AUCH', N'FR', N'Chance of Rain', NULL, N'6:40', N'21:08', N'12', N'24', N'cloudy', N'cloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D4321 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1634, N'AUCH', N'FR', N'Rain', NULL, N'6:40', N'21:08', N'8', N'17', N'rain', N'cloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D4321 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1635, N'AUCH', N'FR', N'Chance of Rain', NULL, N'6:40', N'21:08', N'7', N'16', N'chancerain', N'mostlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D4321 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1636, N'AUCH', N'FR', N'Partly Cloudy', NULL, N'6:40', N'21:08', N'7', N'17', N'partlycloudy', N'mostlysunny', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D4321 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1637, N'GALWAY', N'IRL', N'Rain', NULL, N'5:48', N'21:17', N'7', N'13', N'rain', N'cloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D4330 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1638, N'GALWAY', N'IRL', N'Rain', NULL, N'5:48', N'21:17', N'9', N'13', N'rain', N'mostlycloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D4330 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1639, N'GALWAY', N'IRL', N'Chance of Rain', NULL, N'5:48', N'21:17', N'7', N'13', N'chancerain', N'partlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D4330 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1640, N'GALWAY', N'IRL', N'Chance of Rain', NULL, N'5:48', N'21:17', N'8', N'12', N'chancerain', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D4330 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1641, N'TRIESTE', N'IT', N'Rain', NULL, N'5:42', N'20:20', N'15', N'21', N'rain', N'mostlysunny', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D90F8 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1642, N'TRIESTE', N'IT', N'Chance of Rain', NULL, N'5:42', N'20:20', N'15', N'24', N'chancerain', N'mostlysunny', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D90F8 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1643, N'TRIESTE', N'IT', N'Chance of Rain', NULL, N'5:42', N'20:20', N'16', N'24', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D90F8 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1644, N'TRIESTE', N'IT', N'Chance of a Thunderstorm', NULL, N'5:42', N'20:20', N'14', N'19', N'chancetstorms', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D90F8 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1645, N'TRIER', N'DE', N'Chance of Rain', NULL, N'5:58', N'21:02', N'12', N'21', N'chancerain', N'partlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D9489 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1646, N'TRIER', N'DE', N'Chance of Rain', NULL, N'5:58', N'21:02', N'6', N'18', N'chancerain', N'partlycloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D9489 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1647, N'TRIER', N'DE', N'Partly Cloudy', NULL, N'5:58', N'21:02', N'7', N'16', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D9489 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1648, N'TRIER', N'DE', N'Chance of Rain', NULL, N'5:58', N'21:02', N'7', N'16', N'chancerain', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D9489 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1649, N'TINDOUF', N'ALG', N'Partly Cloudy', NULL, N'6:47', N'20:10', N'24', N'40', N'partlycloudy', N'mostlysunny', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D9492 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1650, N'TINDOUF', N'ALG', N'Clear', NULL, N'6:47', N'20:10', N'25', N'40', N'clear', N'mostlysunny', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D9492 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1651, N'TINDOUF', N'ALG', N'Clear', NULL, N'6:47', N'20:10', N'24', N'43', N'clear', N'mostlysunny', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D9492 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1652, N'TINDOUF', N'ALG', N'Clear', NULL, N'6:47', N'20:10', N'25', N'42', N'clear', N'mostlysunny', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D9492 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1653, N'TEUGE', N'NL', N'Chance of Rain', NULL, N'5:52', N'21:13', N'12', N'22', N'chancerain', N'mostlycloudy', CAST(0x0000A1B800000000 AS DateTime), N'Wednesday', CAST(0x0000A1B8011D94A5 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1654, N'TEUGE', N'NL', N'Rain', NULL, N'5:52', N'21:13', N'7', N'17', N'rain', N'mostlycloudy', CAST(0x0000A1B900000000 AS DateTime), N'Thursday', CAST(0x0000A1B8011D94A5 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1655, N'TEUGE', N'NL', N'Mostly Cloudy', NULL, N'5:52', N'21:13', N'6', N'19', N'mostlycloudy', N'mostlycloudy', CAST(0x0000A1BA00000000 AS DateTime), N'Friday', CAST(0x0000A1B8011D94A5 AS DateTime), N'userCommands')
INSERT [dbo].[CityWeather] ([Id], [CityName], [CountryCode], [Condition], [Remarks], [Sunrise], [Sunset], [TempLow], [TempHigh], [Icon], [SkyIcon], [Date], [WeekDay], [LastUpdate], [UpdateBy]) VALUES (1656, N'TEUGE', N'NL', N'Chance of Rain', NULL, N'5:52', N'21:13', N'6', N'21', N'partlycloudy', N'partlycloudy', CAST(0x0000A1BB00000000 AS DateTime), N'Saturday', CAST(0x0000A1B8011D94A5 AS DateTime), N'userCommands')
SET IDENTITY_INSERT [dbo].[CityWeather] OFF
/****** Object:  Table [dbo].[CityList]    Script Date: 05/08/2013 17:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CityList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](250) NULL,
	[Country] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](3) NULL,
	[CountryCodeTeamco] [nvarchar](3) NULL,
	[Active] [tinyint] NULL,
	[DateAdded] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[UserId] [nvarchar](50) NULL,
 CONSTRAINT [PK_CityList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CityList] ON
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (46, N'AGEN', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B400EF7837 AS DateTime), CAST(0x0000A1B80118F35B AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (47, N'TINDOUF', N'ALGERIA', N'DZ', N'ALG', 1, CAST(0x0000A1B400F6E464 AS DateTime), CAST(0x0000A1B8011908F2 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (48, N'FIGUIG', N'MARROCO', N'MA', N'MAR', 1, CAST(0x0000A1B400F8C964 AS DateTime), CAST(0x0000A1B801190D76 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (49, N'LIEGE', N'BELGIUM', N'BE', N'BE', 1, CAST(0x0000A1B400F95603 AS DateTime), CAST(0x0000A1B8011910D8 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (50, N'TRIER', N'GERMANY', N'DE', N'DE', 1, CAST(0x0000A1B400F9ABA4 AS DateTime), CAST(0x0000A1B801191451 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (51, N'PLYMOUTH', N'UNITED KINGDOM', N'UK', N'GB', 1, CAST(0x0000A1B400FB0860 AS DateTime), CAST(0x0000A1B8011917FD AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (52, N'GALWAY', N'IRELAND', N'IE', N'IRL', 1, CAST(0x0000A1B400FB4EAA AS DateTime), CAST(0x0000A1B801191B14 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (53, N'TRIESTE', N'ITALY', N'IT', N'IT', 1, CAST(0x0000A1B400FCE6DA AS DateTime), CAST(0x0000A1B801191E3E AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (54, N'ATAR', N'MAURITANIA', N'MA', N'MAR', 1, CAST(0x0000A1B400FD314F AS DateTime), CAST(0x0000A1B801192142 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (55, N'TEUGE', N'NETHERLANDS', N'NL', N'NL', 1, CAST(0x0000A1B400FD860B AS DateTime), CAST(0x0000A1B801192519 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (56, N'MURCIA', N'SPAIN', N'ES', N'SP', 1, CAST(0x0000A1B400FDB4A9 AS DateTime), CAST(0x0000A1B801192884 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (57, N'AJACCIO', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CA7BE3 AS DateTime), CAST(0x0000A1B801192BE1 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (58, N'ALBI', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CA8D7E AS DateTime), CAST(0x0000A1B801192F7B AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (59, N'ALECON', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CAA563 AS DateTime), CAST(0x0000A1B8011932A0 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (60, N'AMIENS', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CAB752 AS DateTime), CAST(0x0000A1B801193610 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (61, N'ANGERS', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CACE39 AS DateTime), CAST(0x0000A1B801193989 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (62, N'ANNECY', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CAE417 AS DateTime), CAST(0x0000A1B801193CAE AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (63, N'ARRAS', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CB0A39 AS DateTime), CAST(0x0000A1B801194014 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (64, N'AUCH', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CB31E9 AS DateTime), CAST(0x0000A1B80118E969 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (65, N'AURILLAC', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CB6855 AS DateTime), CAST(0x0000A1B800CB6855 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (66, N'AUXERE', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CB7B04 AS DateTime), CAST(0x0000A1B800CB7B04 AS DateTime), N'user')
INSERT [dbo].[CityList] ([Id], [CityName], [Country], [CountryCode], [CountryCodeTeamco], [Active], [DateAdded], [DateModified], [UserId]) VALUES (67, N'AVIGNON', N'FRANCE', N'FR', N'FR', 1, CAST(0x0000A1B800CE0FC6 AS DateTime), CAST(0x0000A1B800CE0FC6 AS DateTime), N'user')
SET IDENTITY_INSERT [dbo].[CityList] OFF
/****** Object:  Table [dbo].[WeatherSetup]    Script Date: 05/08/2013 17:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WeatherSetup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[api_key] [nvarchar](150) NOT NULL,
	[api_calls] [nvarchar](50) NULL,
	[apic_call_minute] [nvarchar](50) NULL,
	[api_url] [varchar](250) NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_WeatherSetup_1] PRIMARY KEY CLUSTERED 
(
	[api_key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[WeatherSetup] ON
INSERT [dbo].[WeatherSetup] ([id], [api_key], [api_calls], [apic_call_minute], [api_url], [active]) VALUES (1, N'f9df823627f03aed', N'500', NULL, N'http://api.wunderground.com/api/', 1)
SET IDENTITY_INSERT [dbo].[WeatherSetup] OFF
/****** Object:  Table [dbo].[WeatherPublish]    Script Date: 05/08/2013 17:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WeatherPublish](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ftp_address] [varchar](250) NULL,
	[ftp_port] [nchar](10) NULL,
	[ftp_user_name] [varchar](150) NULL,
	[ftp_user_password] [nvarchar](150) NULL,
	[ftp_active] [bit] NULL,
 CONSTRAINT [PK_WeatherPublish] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[WeatherPublish] ON
INSERT [dbo].[WeatherPublish] ([id], [ftp_address], [ftp_port], [ftp_user_name], [ftp_user_password], [ftp_active]) VALUES (1, N'192.168.26.107', N'21        ', N'weatherrw', N'Weatherrw_Rexel', 1)
SET IDENTITY_INSERT [dbo].[WeatherPublish] OFF
/****** Object:  StoredProcedure [dbo].[sp_CityWeather_UpdateWeather]    Script Date: 05/08/2013 17:54:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CityWeather_UpdateWeather]
(
	@CityName varchar(200),
	@CountryCode varchar(5),
	@Condition varchar(150),
	@Sunrise varchar(50),
	@Sunset varchar(50),
	@TempLow varchar(50),
	@TempHigh varchar(50),
	@Icon varchar(150),
	@SkyIcon varchar(150),
	@Date datetime,
	@WeekDay varchar(150),
	@LastUpdate datetime,
	@UpdateBy varchar(150),
	@Original_Id int
)
AS
	SET NOCOUNT OFF;
UPDATE       CityWeather
SET                CityName = @CityName, CountryCode = @CountryCode, Condition = @Condition, Sunrise = @Sunrise, Sunset = @Sunset, TempLow = @TempLow, 
                         TempHigh = @TempHigh, Icon = @Icon, SkyIcon = @SkyIcon, Date = @Date, WeekDay = @WeekDay, LastUpdate = @LastUpdate, 
                         UpdateBy = @UpdateBy
WHERE        (Id = @Original_Id)
GO
/****** Object:  StoredProcedure [dbo].[sp_CityWeather_InsertWeather]    Script Date: 05/08/2013 17:54:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CityWeather_InsertWeather]
(
	@CityName varchar(200),
	@CountryCode varchar(5),
	@Condition varchar(150),
	@Sunrise varchar(50),
	@Sunset varchar(50),
	@TempLow varchar(50),
	@TempHigh varchar(50),
	@Icon varchar(150),
	@SkyIcon varchar(150),
	@Date datetime,
	@WeekDay varchar(150),
	@LastUpdate datetime,
	@UpdateBy varchar(150)
)
AS
	SET NOCOUNT OFF;
INSERT INTO CityWeather
                         (CityName, CountryCode, Condition, Sunrise, Sunset, TempLow, TempHigh, Icon, SkyIcon, Date, WeekDay, LastUpdate, UpdateBy)
VALUES        (@CityName,@CountryCode,@Condition,@Sunrise,@Sunset,@TempLow,@TempHigh,@Icon,@SkyIcon,@Date,@WeekDay,@LastUpdate,@UpdateBy)
GO
/****** Object:  StoredProcedure [dbo].[sp_CityList_UpdateCity]    Script Date: 05/08/2013 17:54:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CityList_UpdateCity]
(
	@CityName varchar(250),
	@Country nvarchar(50),
	@CountryCode nvarchar(3),
	@CountryCodeTeamco nvarchar(3),
	@DateModified datetime,
	@UserId nvarchar(50),
	@Active nvarchar(3),
	@Original_Id int,
	@Id int
)
AS
	SET NOCOUNT OFF;
UPDATE       CityList
SET                CityName = @CityName, Country = @Country, CountryCode = @CountryCode,CountryCodeTeamco=@CountryCodeTeamco, DateModified = @DateModified, UserId = @UserId ,Active=@Active
WHERE        (Id = @Original_Id);
	 
SELECT        Id, CityName, Country, CountryCode,CountryCodeTeamco, DateAdded, DateModified, UserId,Active
FROM            CityList
WHERE        (Id = @Id)
GO
/****** Object:  StoredProcedure [dbo].[sp_CityList_InsertCity]    Script Date: 05/08/2013 17:54:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CityList_InsertCity]
(
	@CityName varchar(250),
	@Country nvarchar(50),
	@CountryCode nvarchar(3),
	@CountryCodeTeamco nvarchar(3),
	@DateAdded datetime,
	@DateModified datetime,
	@UserId nvarchar(50),
	@Active nvarchar(1)
)
AS
	SET NOCOUNT OFF;
INSERT INTO CityList
                         (CityName, Country, CountryCode,CountryCodeTeamco, DateAdded, DateModified, UserId,Active)
VALUES        (@CityName,@Country,@CountryCode,@CountryCodeTeamco,@DateAdded,@DateModified,@UserId,@Active);
	 
SELECT        Id, CityName, Country, CountryCode,CountryCodeTeamco, DateAdded, DateModified, UserId,Active
FROM            CityList
WHERE        (Id = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[sp_CityList_GetCityByName]    Script Date: 05/08/2013 17:54:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CityList_GetCityByName]
(
	@CityName varchar(250)
)
AS
	SET NOCOUNT ON;
SELECT        Id, @CityName AS CityName, Country, DateAdded, DateModified, UserId
FROM            CityList
WHERE        (@CityName = CityName)
GO
/****** Object:  StoredProcedure [dbo].[sp_CityList_GetAllCity]    Script Date: 05/08/2013 17:54:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CityList_GetAllCity]
AS
	SET NOCOUNT ON;
SELECT Id, CityName, Country, CountryCode,CountryCodeTeamco,DateAdded, DateModified, UserId,Active FROM dbo.CityList
GO
/****** Object:  StoredProcedure [dbo].[sp_CityList_DeleteCity]    Script Date: 05/08/2013 17:54:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CityList_DeleteCity]
(
	@Original_Id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM CityList
WHERE        (Id = @Original_Id)
GO
/****** Object:  Default [DF_CityList_Active]    Script Date: 05/08/2013 17:54:10 ******/
ALTER TABLE [dbo].[CityList] ADD  CONSTRAINT [DF_CityList_Active]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  Default [DF_WeatherPublish_ftp_port]    Script Date: 05/08/2013 17:54:10 ******/
ALTER TABLE [dbo].[WeatherPublish] ADD  CONSTRAINT [DF_WeatherPublish_ftp_port]  DEFAULT ((21)) FOR [ftp_port]
GO
/****** Object:  Default [DF_WeatherPublish_ftp_active]    Script Date: 05/08/2013 17:54:10 ******/
ALTER TABLE [dbo].[WeatherPublish] ADD  CONSTRAINT [DF_WeatherPublish_ftp_active]  DEFAULT ((0)) FOR [ftp_active]
GO
