USE [FirmaSiparisAPIDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20.02.2023 21:56:25 ******/
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
/****** Object:  Table [dbo].[Companies]    Script Date: 20.02.2023 21:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
	[OrderStartTime] [nvarchar](max) NOT NULL,
	[OrderFinishTime] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyOrder]    Script Date: 20.02.2023 21:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyOrder](
	[CompaniesId] [int] NOT NULL,
	[OrdersId] [int] NOT NULL,
 CONSTRAINT [PK_CompanyOrder] PRIMARY KEY CLUSTERED 
(
	[CompaniesId] ASC,
	[OrdersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 20.02.2023 21:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrdersId] [int] NOT NULL,
	[ProductsId] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[OrdersId] ASC,
	[ProductsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 20.02.2023 21:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrdersName] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 20.02.2023 21:56:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Price] [bigint] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230220121617_mig_1', N'7.0.3')
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([Id], [OrderId], [OrderStatus], [OrderStartTime], [OrderFinishTime], [Name], [CreatedDate]) VALUES (1, 0, N'Kargoda', N'Bugün', N'Çarşamba', N'Enoca', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([Id], [OrderId], [OrderStatus], [OrderStartTime], [OrderFinishTime], [Name], [CreatedDate]) VALUES (2, 0, N'Alındı', N'Bugün', N'Cuma', N'Flo Ayakkabı', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Companies] ([Id], [OrderId], [OrderStatus], [OrderStartTime], [OrderFinishTime], [Name], [CreatedDate]) VALUES (3, 0, N'Alındı', N'Pazartesi', N'Perşembe', N'Starbucks', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CompanyId], [ProductId], [OrdersName], [Name], [CreatedDate]) VALUES (5, 1, 1, N'Hüdanur', N'Yazılım', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [CompanyId], [ProductId], [OrdersName], [Name], [CreatedDate]) VALUES (6, 2, 3, N'Hüdanur', N'Bot', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [CompanyId], [ProductId], [OrdersName], [Name], [CreatedDate]) VALUES (7, 3, 4, N'Ayşe', N'Kahve', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CompanyId], [Stock], [Price], [Name], [CreatedDate]) VALUES (1, 1, 15, 10000, N'Yazılım', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [CompanyId], [Stock], [Price], [Name], [CreatedDate]) VALUES (2, 2, 200, 500, N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [CompanyId], [Stock], [Price], [Name], [CreatedDate]) VALUES (3, 2, 200, 500, N'Bot', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [CompanyId], [Stock], [Price], [Name], [CreatedDate]) VALUES (4, 3, 200, 150, N'Kahve', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[CompanyOrder]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOrder_Companies_CompaniesId] FOREIGN KEY([CompaniesId])
REFERENCES [dbo].[Companies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyOrder] CHECK CONSTRAINT [FK_CompanyOrder_Companies_CompaniesId]
GO
ALTER TABLE [dbo].[CompanyOrder]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOrder_Orders_OrdersId] FOREIGN KEY([OrdersId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CompanyOrder] CHECK CONSTRAINT [FK_CompanyOrder_Orders_OrdersId]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Orders_OrdersId] FOREIGN KEY([OrdersId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Orders_OrdersId]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Products_ProductsId] FOREIGN KEY([ProductsId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Products_ProductsId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Companies_CompanyId]
GO
