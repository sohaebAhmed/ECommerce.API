USE [master]
GO
/****** Object:  Database [ECommerceDb]    Script Date: 6/2/2025 11:23:20 PM ******/
CREATE DATABASE [ECommerceDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ECommerceDb', FILENAME = N'C:\Users\ADMIN\ECommerceDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ECommerceDb_log', FILENAME = N'C:\Users\ADMIN\ECommerceDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ECommerceDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ECommerceDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ECommerceDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ECommerceDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ECommerceDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ECommerceDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ECommerceDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ECommerceDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ECommerceDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ECommerceDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ECommerceDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ECommerceDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ECommerceDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ECommerceDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ECommerceDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ECommerceDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ECommerceDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ECommerceDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ECommerceDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ECommerceDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ECommerceDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ECommerceDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ECommerceDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ECommerceDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ECommerceDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ECommerceDb] SET  MULTI_USER 
GO
ALTER DATABASE [ECommerceDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ECommerceDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ECommerceDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ECommerceDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ECommerceDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ECommerceDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ECommerceDb] SET QUERY_STORE = OFF
GO
USE [ECommerceDb]
GO
/****** Object:  Schema [Common]    Script Date: 6/2/2025 11:23:20 PM ******/
CREATE SCHEMA [Common]
GO
/****** Object:  Schema [Customer]    Script Date: 6/2/2025 11:23:20 PM ******/
CREATE SCHEMA [Customer]
GO
/****** Object:  Schema [Merchant]    Script Date: 6/2/2025 11:23:20 PM ******/
CREATE SCHEMA [Merchant]
GO
/****** Object:  Schema [Product]    Script Date: 6/2/2025 11:23:20 PM ******/
CREATE SCHEMA [Product]
GO
/****** Object:  Schema [User]    Script Date: 6/2/2025 11:23:20 PM ******/
CREATE SCHEMA [User]
GO
/****** Object:  Table [Common].[Cities]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Common].[Cities](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[StateID] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Common].[Colors]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Common].[Colors](
	[ColorId] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NOT NULL,
	[ColorHex] [nvarchar](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Common].[Countries]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Common].[Countries](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Common].[Gender]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Common].[Gender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Common].[Seasons]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Common].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Common].[States]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Common].[States](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CountryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Customer].[Address]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Customer].[Address](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[AddressTypeId] [int] NULL,
	[CustomerId] [int] NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[CityId] [int] NULL,
	[FullAddress] [nvarchar](500) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[IsActive] [bit] NULL,
	[AddedOn] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[RemovedOn] [datetime] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Customer].[AddressType]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Customer].[AddressType](
	[AddressTypeId] [int] NULL,
	[Name] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Customer].[Details]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Customer].[Details](
	[CustomerId] [int] IDENTITY(3001,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[FirstName] [nvarchar](20) NULL,
	[MiddleName] [nvarchar](20) NULL,
	[LastName] [nvarchar](20) NULL,
	[Email] [nvarchar](256) NULL,
	[IsEmailVerfied] [bit] NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[IsPhoneNumberVerfied] [bit] NULL,
	[Password] [nvarchar](256) NULL,
	[DateOfBirth] [date] NULL,
	[GenderId] [int] NULL,
	[IsActive] [bit] NULL,
	[JoinedOn] [datetime] NULL,
	[DeletedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Merchant].[Address]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Merchant].[Address](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[MerchantId] [int] NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[CityId] [int] NULL,
	[FullAddress] [nvarchar](500) NULL,
	[PostalCode] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Merchant].[Details]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Merchant].[Details](
	[MerchantId] [int] IDENTITY(2001,1) NOT NULL,
	[RoleID] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[IsEmailVerified] [bit] NULL,
	[PhoneNumber] [nvarchar](255) NOT NULL,
	[IsPhoneNumberVerified] [bit] NULL,
	[Password] [nvarchar](100) NOT NULL,
	[AddressId] [int] NULL,
	[WebsiteURL] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[JoinedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MerchantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Product].[Categories]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Product].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Product].[ClothingSizes]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Product].[ClothingSizes](
	[SizeId] [int] IDENTITY(1,1) NOT NULL,
	[SizeLabel] [varchar](10) NOT NULL,
	[ChestCM] [decimal](5, 2) NULL,
	[ChestInch] [decimal](5, 2) NULL,
	[WaistCM] [decimal](5, 2) NULL,
	[WaistInch] [decimal](5, 2) NULL,
	[ShoulderCM] [decimal](5, 2) NULL,
	[ShoulderInch] [decimal](5, 2) NULL,
	[SleeveLengthCM] [decimal](5, 2) NULL,
	[SleeveLengthInch] [decimal](5, 2) NULL,
	[LengthCM] [decimal](5, 2) NULL,
	[LengthInch] [decimal](5, 2) NULL,
	[HipCM] [decimal](5, 2) NULL,
	[HipInch] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Product].[Details]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Product].[Details](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[MerchantId] [int] NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[TargetAudienceId] [int] NOT NULL,
	[BrandName] [nvarchar](100) NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[DiscountPercentage] [decimal](5, 2) NULL,
	[FinalPrice]  AS ([Price]-([Price]*[DiscountPercentage])/(100.0)) PERSISTED,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Product].[FootwearSizes]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Product].[FootwearSizes](
	[SizeId] [int] IDENTITY(1,1) NOT NULL,
	[SizeLabel] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Product].[Images]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Product].[Images](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[IsPrimary] [bit] NULL,
	[UploadedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Product].[SubCategories]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Product].[SubCategories](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [nvarchar](100) NOT NULL,
	[CategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Product].[TargetAudiences]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Product].[TargetAudiences](
	[TargetAudienceId] [int] IDENTITY(1,1) NOT NULL,
	[AudienceName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TargetAudienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Product].[Variants]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Product].[Variants](
	[VariantId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ColorId] [int] NULL,
	[ClothingSizeId] [int] NULL,
	[FootwearSizeId] [int] NULL,
	[QuantityAvailable] [int] NOT NULL,
	[SKU] [varchar](50) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[VariantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SKU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [User].[Roles]    Script Date: 6/2/2025 11:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Product].[Details] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Product].[Details] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Product].[Details] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Product].[Images] ADD  DEFAULT ((0)) FOR [IsPrimary]
GO
ALTER TABLE [Product].[Images] ADD  DEFAULT (getdate()) FOR [UploadedOn]
GO
ALTER TABLE [Product].[Variants] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Product].[Details]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [Product].[Categories] ([CategoryId])
GO
ALTER TABLE [Product].[Details]  WITH CHECK ADD FOREIGN KEY([SubCategoryId])
REFERENCES [Product].[SubCategories] ([SubCategoryId])
GO
ALTER TABLE [Product].[Details]  WITH CHECK ADD FOREIGN KEY([TargetAudienceId])
REFERENCES [Product].[TargetAudiences] ([TargetAudienceId])
GO
ALTER TABLE [Product].[Images]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [Product].[Details] ([ProductId])
GO
ALTER TABLE [Product].[SubCategories]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [Product].[Categories] ([CategoryId])
GO
ALTER TABLE [Product].[Variants]  WITH CHECK ADD FOREIGN KEY([ClothingSizeId])
REFERENCES [Product].[ClothingSizes] ([SizeId])
GO
ALTER TABLE [Product].[Variants]  WITH CHECK ADD FOREIGN KEY([ColorId])
REFERENCES [Common].[Colors] ([ColorId])
GO
ALTER TABLE [Product].[Variants]  WITH CHECK ADD FOREIGN KEY([FootwearSizeId])
REFERENCES [Product].[FootwearSizes] ([SizeId])
GO
ALTER TABLE [Product].[Variants]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [Product].[Details] ([ProductId])
GO
USE [master]
GO
ALTER DATABASE [ECommerceDb] SET  READ_WRITE 
GO
