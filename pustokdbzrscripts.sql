USE [Pustok_DataBase_ZR]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15 yan 2023 19:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 15 yan 2023 19:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookImages]    Script Date: 15 yan 2023 19:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[IsPoster] [bit] NULL,
 CONSTRAINT [PK_BookImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 15 yan 2023 19:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthorId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CostPrice] [float] NOT NULL,
	[SalePrice] [float] NOT NULL,
	[DiscountPrice] [float] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](100) NULL,
	[IsFeatured] [bit] NOT NULL,
	[IsNew] [bit] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 15 yan 2023 19:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Heroes]    Script Date: 15 yan 2023 19:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Heroes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](100) NULL,
	[TitleUp] [nvarchar](20) NOT NULL,
	[TitleDown] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Heroes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230106055103_PustokHeroTableCreate', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230106055444_UpdateHeroTable', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230106065928_AuthorAndCategoryAndBooksTableCreate', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230107182951_imagelengthmigration', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230107202705_newbooktable', N'6.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230111193631_BookImagesTablesCreated', N'6.0.12')
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (1, N'Jose Mauro de Vasconcelos')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (2, N'Agatha Christie')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (3, N'Nazim Hikmet')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (4, N'Mumin Sekman')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (5, N'Hikmet Anıl Öztekin')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (6, N'Mihey Çiksentmihayi')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (7, N'Carmine Gallo')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (8, N'Karl Sagan')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (9, N'Stephan Zweig')
INSERT [dbo].[Authors] ([Id], [FullName]) VALUES (10, N'Anthony Burgess')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[BookImages] ON 

INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (7, 13, N'1b5dd881-0bcf-4fcb-b787-5a8c86aa9bc3product-6.jpg', 1)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (8, 13, N'2b675408-0c72-4327-85bb-937f90b4c491product-details-4.jpg', 0)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (9, 13, N'86b71e3f-c72d-4a20-9c41-fa3f2c3a2b22product-6.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (10, 13, N'ce7fb6d1-f937-4776-87b1-a1160d78b1c6product-7.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (11, 13, N'8efcda9b-a3e8-46af-a307-c623f6d5c9adproduct-11.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (12, 13, N'9aa9f1cc-da73-47b3-892c-9121ab3c3609product-12.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (13, 13, N'46011562-4b12-4656-83f0-2dfb22046f58product-details-3.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (14, 13, N'624e556f-6580-4a55-b4cc-59aa4a67866aproduct-details-4.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (15, 14, N'8adc0a1d-aacc-41b3-b684-4c11cfdbc3ffproduct-5.jpg', 1)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (16, 14, N'2a1aa91a-0986-4dfd-8440-64d671c521e6product-11.jpg', 0)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (17, 14, N'a9695742-fc6d-4e9b-a843-9f3bd06d6a75product-10.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (18, 14, N'fda482ee-aaab-4add-906b-73edf6da42ddproduct-11.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (19, 14, N'371a13a0-6a21-46d6-90fc-3d2dbce907daproduct-12.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (20, 14, N'48c5b552-262c-41e0-a1dd-27b1e1b43250product-13.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (21, 14, N'37312a33-c9e6-46e2-b9e4-e17db5fbfc60product-details-1.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (22, 14, N'2004a673-33ef-4ad6-8488-15afaeac6a1fproduct-details-2.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (23, 14, N'5aa49d99-cd2f-4783-ab00-0a7f7918d12eproduct-details-3.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (24, 14, N'dd6a755d-e2a6-4820-aaa6-4b7fb67ea5acproduct-details-4.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (25, 14, N'797d8e10-c3d1-4528-a7ac-3e2658eacb27product-details-5.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (46, 17, N'product-12.jpg', 1)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (47, 17, N'product-details-3.jpg', 0)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (48, 17, N'product-details-3.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (49, 18, N'product-7.jpg', 1)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (50, 18, N'product-11.jpg', 0)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (51, 18, N'product-11.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (52, 18, N'product-12.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (53, 18, N'product-13.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (54, 18, N'product-details-3.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (55, 18, N'product-details-4.jpg', NULL)
INSERT [dbo].[BookImages] ([Id], [BookId], [ImageUrl], [IsPoster]) VALUES (56, 18, N'product-details-5.jpg', NULL)
SET IDENTITY_INSERT [dbo].[BookImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [AuthorId], [CategoryId], [Name], [Description], [CostPrice], [SalePrice], [DiscountPrice], [IsAvailable], [Code], [ImageUrl], [IsFeatured], [IsNew]) VALUES (13, 2, 5, N'Seker portagali', N'Hava very cold, broo', 10, 20, 5, 1, N'e', NULL, 1, 1)
INSERT [dbo].[Books] ([Id], [AuthorId], [CategoryId], [Name], [Description], [CostPrice], [SalePrice], [DiscountPrice], [IsAvailable], [Code], [ImageUrl], [IsFeatured], [IsNew]) VALUES (14, 3, 1, N'Yaşamaq gözəl şeydir, qardaşım', N'Bizden al razi qal', 2, 3, 0, 1, N'bnm', NULL, 1, 1)
INSERT [dbo].[Books] ([Id], [AuthorId], [CategoryId], [Name], [Description], [CostPrice], [SalePrice], [DiscountPrice], [IsAvailable], [Code], [ImageUrl], [IsFeatured], [IsNew]) VALUES (17, 1, 1, N'Seker portagali', N'Bizden al razi qal', 10, 3, 5, 1, N'bnm', NULL, 1, 1)
INSERT [dbo].[Books] ([Id], [AuthorId], [CategoryId], [Name], [Description], [CostPrice], [SalePrice], [DiscountPrice], [IsAvailable], [Code], [ImageUrl], [IsFeatured], [IsNew]) VALUES (18, 1, 1, N'Seker portagali', N'Bizden al razi qal', 10, 6, 7, 1, N'bnm', NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Roman')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Psixologiya')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Özünüzü inkişaf')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Astronomiya')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Hikaye')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Biyografi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Dünya klassikləri')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (8, N'Macəra-Aksiyon')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (9, N'Dedektiv')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Heroes] ON 

INSERT [dbo].[Heroes] ([Id], [ImageUrl], [TitleUp], [TitleDown], [Description], [Price]) VALUES (18, N'2314b23d-ab8e-4aca-983d-0b4a3521d6d2product-12.jpg', N'Yuxari', N'Asagi', N'Bizden al razi qal', 12.99)
SET IDENTITY_INSERT [dbo].[Heroes] OFF
GO
ALTER TABLE [dbo].[Books] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsFeatured]
GO
ALTER TABLE [dbo].[Books] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsNew]
GO
ALTER TABLE [dbo].[BookImages]  WITH CHECK ADD  CONSTRAINT [FK_BookImages_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookImages] CHECK CONSTRAINT [FK_BookImages_Books_BookId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors_AuthorId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories_CategoryId]
GO
