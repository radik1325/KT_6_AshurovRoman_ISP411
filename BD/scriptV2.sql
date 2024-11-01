USE [master]
GO
/****** Object:  Database [Pet_Shop]    Script Date: 29.10.2024 11:15:23 ******/
CREATE DATABASE [Pet_Shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pet_Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Pet_Shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pet_Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Pet_Shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Pet_Shop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pet_Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pet_Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pet_Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pet_Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pet_Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pet_Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pet_Shop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Pet_Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pet_Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pet_Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pet_Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pet_Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pet_Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pet_Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pet_Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pet_Shop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Pet_Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pet_Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pet_Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pet_Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pet_Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pet_Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pet_Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pet_Shop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pet_Shop] SET  MULTI_USER 
GO
ALTER DATABASE [Pet_Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pet_Shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pet_Shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pet_Shop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pet_Shop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pet_Shop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Pet_Shop] SET QUERY_STORE = OFF
GO
USE [Pet_Shop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EdIzm]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EdIzm](
	[EdIzmId] [int] IDENTITY(1,1) NOT NULL,
	[EdIzmName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EdIzm] PRIMARY KEY CLUSTERED 
(
	[EdIzmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacture]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacture](
	[ManufactureId] [int] NOT NULL,
	[ManufactureName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacture] PRIMARY KEY CLUSTERED 
(
	[ManufactureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Name]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Name](
	[NameId] [int] NOT NULL,
	[NameName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Name] PRIMARY KEY CLUSTERED 
(
	[NameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDateOrder] [date] NULL,
	[OrderDeliveryDate] [date] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[OrderCientId] [int] NULL,
	[OrderCod] [int] NOT NULL,
	[OrderStatusid] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF46A623F6] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[ID] [int] NOT NULL,
	[OrderIdNumber] [int] NOT NULL,
	[ProductIdNumber] [int] NOT NULL,
	[OrderProductCount] [int] NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickPoint]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickPoint](
	[PickPointId] [int] NOT NULL,
	[PickPointIndex] [nvarchar](50) NOT NULL,
	[PickPointCityId] [int] NOT NULL,
	[PickPointStreetId] [int] NOT NULL,
	[PickPointHouse] [int] NULL,
 CONSTRAINT [PK_PickPoint] PRIMARY KEY CLUSTERED 
(
	[PickPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NULL,
	[ProductNameId] [int] NOT NULL,
	[ProductEdIzm] [int] NOT NULL,
	[ProductCost] [decimal](19, 2) NULL,
	[ProductDiscountMax] [int] NULL,
	[ProductManufacturerId] [int] NULL,
	[ProductSupplierId] [int] NOT NULL,
	[PoductCategoryId] [int] NOT NULL,
	[ProductDiscountNow] [int] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductOpis] [nvarchar](300) NULL,
	[ProductPhotoName] [nvarchar](100) NULL,
	[ProductPhoto] [image] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[StreetId] [int] NOT NULL,
	[StreetName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[StreetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 29.10.2024 11:15:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[UserRoleId] [int] NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserPatronic] [nvarchar](50) NOT NULL,
	[UserLogin] [nvarchar](100) NOT NULL,
	[UserPassword] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__User__1788CCACB2BFA7D3] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Для животных')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Товары для собак')
GO
INSERT [dbo].[City] ([CityId], [CityName]) VALUES (1, N'Нефтеюганск')
GO
SET IDENTITY_INSERT [dbo].[EdIzm] ON 

INSERT [dbo].[EdIzm] ([EdIzmId], [EdIzmName]) VALUES (1, N'шт')
SET IDENTITY_INSERT [dbo].[EdIzm] OFF
GO
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (2, N'Chappy')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (4, N'Dreames')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (6, N'LIKER')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (7, N'Nobby')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (9, N'TitBit')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (10, N'Triol')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (11, N'trixie')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (12, N'True Touch')
INSERT [dbo].[Manufacture] ([ManufactureId], [ManufactureName]) VALUES (13, N'ZooM')
GO
INSERT [dbo].[Name] ([NameId], [NameName]) VALUES (1, N'Игрушка')
INSERT [dbo].[Name] ([NameId], [NameName]) VALUES (2, N'Клетка')
INSERT [dbo].[Name] ([NameId], [NameName]) VALUES (3, N'Лакомство')
INSERT [dbo].[Name] ([NameId], [NameName]) VALUES (4, N'Лежак')
INSERT [dbo].[Name] ([NameId], [NameName]) VALUES (5, N'Миска')
INSERT [dbo].[Name] ([NameId], [NameName]) VALUES (6, N'Мячик')
INSERT [dbo].[Name] ([NameId], [NameName]) VALUES (7, N'Сухой корм')
INSERT [dbo].[Name] ([NameId], [NameName]) VALUES (8, N'Щетка-варежка')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderDateOrder], [OrderDeliveryDate], [OrderPickupPoint], [OrderCientId], [OrderCod], [OrderStatusid]) VALUES (1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, 601, 2)
INSERT [dbo].[Order] ([OrderID], [OrderDateOrder], [OrderDeliveryDate], [OrderPickupPoint], [OrderCientId], [OrderCod], [OrderStatusid]) VALUES (2, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, 602, 2)
INSERT [dbo].[Order] ([OrderID], [OrderDateOrder], [OrderDeliveryDate], [OrderPickupPoint], [OrderCientId], [OrderCod], [OrderStatusid]) VALUES (3, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, 8, 603, 1)
INSERT [dbo].[Order] ([OrderID], [OrderDateOrder], [OrderDeliveryDate], [OrderPickupPoint], [OrderCientId], [OrderCod], [OrderStatusid]) VALUES (4, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, 604, 1)
INSERT [dbo].[Order] ([OrderID], [OrderDateOrder], [OrderDeliveryDate], [OrderPickupPoint], [OrderCientId], [OrderCod], [OrderStatusid]) VALUES (5, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, 605, 1)
INSERT [dbo].[Order] ([OrderID], [OrderDateOrder], [OrderDeliveryDate], [OrderPickupPoint], [OrderCientId], [OrderCod], [OrderStatusid]) VALUES (6, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, 7, 606, 1)
INSERT [dbo].[Order] ([OrderID], [OrderDateOrder], [OrderDeliveryDate], [OrderPickupPoint], [OrderCientId], [OrderCod], [OrderStatusid]) VALUES (7, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, 607, 2)
INSERT [dbo].[Order] ([OrderID], [OrderDateOrder], [OrderDeliveryDate], [OrderPickupPoint], [OrderCientId], [OrderCod], [OrderStatusid]) VALUES (8, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, 608, 2)
INSERT [dbo].[Order] ([OrderID], [OrderDateOrder], [OrderDeliveryDate], [OrderPickupPoint], [OrderCientId], [OrderCod], [OrderStatusid]) VALUES (9, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, 10, 609, 2)
INSERT [dbo].[Order] ([OrderID], [OrderDateOrder], [OrderDeliveryDate], [OrderPickupPoint], [OrderCientId], [OrderCod], [OrderStatusid]) VALUES (10, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, 9, 610, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (1, 1, 1, 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (2, 2, 3, 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (3, 3, 5, 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (4, 4, 7, 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (5, 5, 9, 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (6, 6, 12, 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (7, 7, 17, 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (8, 8, 21, 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (9, 9, 22, 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (10, 10, 29, 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (11, 1, 2, 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (12, 2, 4, 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (13, 3, 6, 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (14, 4, 8, 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (15, 5, 10, 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (16, 6, 13, 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (17, 7, 18, 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (18, 8, 22, 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (19, 9, 23, 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderIdNumber], [ProductIdNumber], [OrderProductCount]) VALUES (20, 10, 30, 1)
GO
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (1, N'344288', 1, 28, 1)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (2, N'614164', 1, 25, 30)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (3, N'394242', 1, 7, 43)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (4, N'660540', 1, 23, 25)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (5, N'125837', 1, 30, 40)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (6, N'125703', 1, 16, 49)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (7, N'625283', 1, 17, 46)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (8, N'614611', 1, 11, 50)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (9, N'454311', 1, 14, 19)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (10, N'660007', 1, 15, 19)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (11, N'603036', 1, 20, 4)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (12, N'450983', 1, 8, 26)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (13, N'394782', 1, 28, 3)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (14, N'603002', 1, 4, 28)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (15, N'450558', 1, 12, 30)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (16, N'394060', 1, 26, 43)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (17, N'410661', 1, 29, 50)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (18, N'625590', 1, 7, 20)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (19, N'625683', 1, 1, NULL)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (20, N'400562', 1, 5, 32)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (21, N'614510', 1, 9, 47)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (22, N'410542', 1, 21, 46)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (23, N'620839', 1, 27, 8)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (24, N'443890', 1, 7, 1)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (25, N'603379', 1, 24, 46)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (26, N'603721', 1, 3, 41)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (27, N'410172', 1, 22, 13)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (28, N'420151', 1, 2, 32)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (29, N'125061', 1, 18, 8)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (30, N'630370', 1, 30, 24)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (31, N'614753', 1, 19, 35)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (32, N'426030', 1, 9, 44)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (33, N'450375', 1, 6, 44)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (34, N'625560', 1, 13, 12)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (35, N'630201', 1, 8, 17)
INSERT [dbo].[PickPoint] ([PickPointId], [PickPointIndex], [PickPointCityId], [PickPointStreetId], [PickPointHouse]) VALUES (36, N'190949', 1, 10, 26)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (1, N'А112Т4', 3, 1, CAST(123.00 AS Decimal(19, 2)), 30, 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (2, N'G453T5', 8, 1, CAST(149.00 AS Decimal(19, 2)), 15, 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (3, N'F432F4', 7, 1, CAST(1200.00 AS Decimal(19, 2)), 10, 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (4, N'Y324F4', 3, 1, CAST(86.00 AS Decimal(19, 2)), 5, 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (5, N'E532Q5', 3, 1, CAST(166.00 AS Decimal(19, 2)), 15, 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (6, N'T432F4', 7, 1, CAST(1700.00 AS Decimal(19, 2)), 25, 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (7, N'G345E4', 6, 1, CAST(300.00 AS Decimal(19, 2)), 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (8, N'E345R4', 1, 1, CAST(199.00 AS Decimal(19, 2)), 5, 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (9, N'R356F4', 5, 1, CAST(234.00 AS Decimal(19, 2)), 10, 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (10, N'E431R5', 3, 1, CAST(170.00 AS Decimal(19, 2)), 5, 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (11, N'D563F4', 1, 1, CAST(600.00 AS Decimal(19, 2)), 10, 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (12, N'H436R4', 1, 1, CAST(300.00 AS Decimal(19, 2)), 15, 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (13, N'D643B5', 7, 1, CAST(4100.00 AS Decimal(19, 2)), 30, 1, 1, 2, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (14, N'H432F4', 5, 1, CAST(385.00 AS Decimal(19, 2)), 10, 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (15, N'S245R4', 7, 1, CAST(280.00 AS Decimal(19, 2)), 15, 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (16, N'V352R4', 7, 1, CAST(1700.00 AS Decimal(19, 2)), 25, 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (17, N'H342F5', 1, 1, CAST(510.00 AS Decimal(19, 2)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (18, N'Q245F5', 1, 1, CAST(510.00 AS Decimal(19, 2)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (19, N'G542F5', 7, 1, CAST(2190.00 AS Decimal(19, 2)), 30, 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (20, N'H542R6', 3, 1, CAST(177.00 AS Decimal(19, 2)), 15, 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (21, N'K436T5', 6, 1, CAST(100.00 AS Decimal(19, 2)), 5, 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (22, N'V527T5', 1, 1, CAST(640.00 AS Decimal(19, 2)), 5, 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (23, N'K452T5', 4, 1, CAST(800.00 AS Decimal(19, 2)), 25, 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (24, N'E466T6', 2, 1, CAST(3500.00 AS Decimal(19, 2)), 30, 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (25, N'B427R5', 5, 1, CAST(400.00 AS Decimal(19, 2)), 15, 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (26, N'H643W2', 5, 1, CAST(292.00 AS Decimal(19, 2)), 25, 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (27, N'D356R4', 6, 1, CAST(600.00 AS Decimal(19, 2)), 15, 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (28, N'E434U6', 3, 1, CAST(140.00 AS Decimal(19, 2)), 20, 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (29, N'M356R4', 3, 1, CAST(50.00 AS Decimal(19, 2)), 5, 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[Product] ([ProductId], [ProductArticleNumber], [ProductNameId], [ProductEdIzm], [ProductCost], [ProductDiscountMax], [ProductManufacturerId], [ProductSupplierId], [PoductCategoryId], [ProductDiscountNow], [ProductQuantityInStock], [ProductOpis], [ProductPhotoName], [ProductPhoto]) VALUES (30, N'W548O7', 7, 1, CAST(600.00 AS Decimal(19, 2)), 15, 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[Status] ([StatusId], [StatusName]) VALUES (1, N'Завершен')
INSERT [dbo].[Status] ([StatusId], [StatusName]) VALUES (2, N'Новый ')
GO
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (1, N'8 Марта')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (2, N'Вишневая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (3, N'Гоголя')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (4, N'Дзержинского')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (5, N'Зеленая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (6, N'Клубная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (7, N'Коммунистическая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (8, N'Комсомольская')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (9, N'Маяковского')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (10, N'Мичурина')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (11, N'Молодежная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (12, N'Набережная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (13, N'Некрасова')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (14, N'Новая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (15, N'Октябрьская')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (16, N'Партизанская')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (17, N'Победы')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (18, N'Подгорная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (19, N'Полевая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (20, N'Садовая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (21, N'Светлая')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (22, N'Северная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (23, N'Солнечная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (24, N'Спортивная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (25, N'Степная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (26, N'Фрунзе')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (27, N'Цветочная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (28, N'Чехова')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (29, N'Школьная')
INSERT [dbo].[Street] ([StreetId], [StreetName]) VALUES (30, N'Шоссейная')
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (1, N'PetShop')
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName]) VALUES (2, N'ZooMir')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
INSERT [dbo].[User] ([UserID], [UserRoleId], [UserSurname], [UserName], [UserPatronic], [UserLogin], [UserPassword]) VALUES (1, 1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[User] ([UserID], [UserRoleId], [UserSurname], [UserName], [UserPatronic], [UserLogin], [UserPassword]) VALUES (2, 1, N'Яковлева', N'Ярослава', N'Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67')
INSERT [dbo].[User] ([UserID], [UserRoleId], [UserSurname], [UserName], [UserPatronic], [UserLogin], [UserPassword]) VALUES (3, 1, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[User] ([UserID], [UserRoleId], [UserSurname], [UserName], [UserPatronic], [UserLogin], [UserPassword]) VALUES (4, 3, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([UserID], [UserRoleId], [UserSurname], [UserName], [UserPatronic], [UserLogin], [UserPassword]) VALUES (5, 3, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[User] ([UserID], [UserRoleId], [UserSurname], [UserName], [UserPatronic], [UserLogin], [UserPassword]) VALUES (6, 3, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[User] ([UserID], [UserRoleId], [UserSurname], [UserName], [UserPatronic], [UserLogin], [UserPassword]) VALUES (7, 2, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([UserID], [UserRoleId], [UserSurname], [UserName], [UserPatronic], [UserLogin], [UserPassword]) VALUES (8, 2, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[User] ([UserID], [UserRoleId], [UserSurname], [UserName], [UserPatronic], [UserLogin], [UserPassword]) VALUES (9, 2, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[User] ([UserID], [UserRoleId], [UserSurname], [UserName], [UserPatronic], [UserLogin], [UserPassword]) VALUES (10, 2, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickPoint] ([PickPointId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([OrderStatusid])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([OrderCientId])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderIdNumber])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductIdNumber])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_City] FOREIGN KEY([PickPointCityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_City]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Street] FOREIGN KEY([PickPointStreetId])
REFERENCES [dbo].[Street] ([StreetId])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Street]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([PoductCategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_EdIzm] FOREIGN KEY([ProductEdIzm])
REFERENCES [dbo].[EdIzm] ([EdIzmId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_EdIzm]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacture] FOREIGN KEY([ProductManufacturerId])
REFERENCES [dbo].[Manufacture] ([ManufactureId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacture]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Name] FOREIGN KEY([ProductNameId])
REFERENCES [dbo].[Name] ([NameId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Name]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([ProductSupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Pet_Shop] SET  READ_WRITE 
GO
