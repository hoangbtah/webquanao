USE [master]
GO
/****** Object:  Database [ShoptrDB]    Script Date: 16/11/2023 11:16:00 AM ******/
CREATE DATABASE [ShoptrDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoptrDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ShoptrDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShoptrDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ShoptrDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ShoptrDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoptrDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoptrDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoptrDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoptrDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoptrDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoptrDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoptrDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoptrDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoptrDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoptrDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoptrDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoptrDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoptrDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoptrDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoptrDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoptrDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoptrDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoptrDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoptrDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoptrDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoptrDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoptrDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoptrDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoptrDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShoptrDB] SET  MULTI_USER 
GO
ALTER DATABASE [ShoptrDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoptrDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoptrDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoptrDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShoptrDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShoptrDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShoptrDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ShoptrDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ShoptrDB]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 16/11/2023 11:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaCTDH] [char](10) NOT NULL,
	[MaDH] [char](10) NOT NULL,
	[MaSP] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [float] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaCTDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 16/11/2023 11:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [char](10) NOT NULL,
	[MaKH] [char](10) NOT NULL,
	[NgayDat] [datetime] NULL,
	[Trangthai] [nvarchar](20) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 16/11/2023 11:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [char](10) NOT NULL,
	[TenKH] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](30) NULL,
	[Email] [nvarchar](30) NULL,
	[SoDT] [nvarchar](10) NULL,
	[MatKhau] [nvarchar](20) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 16/11/2023 11:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [char](10) NOT NULL,
	[TenLoai] [nvarchar](30) NULL,
	[Mota] [nvarchar](30) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 16/11/2023 11:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [char](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[GiaTien] [float] NULL,
	[MaLoai] [char](10) NOT NULL,
	[KichThuoc] [nvarchar](20) NULL,
	[MauSac] [nvarchar](20) NULL,
	[HinhAnh] [nvarchar](20) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDT], [MatKhau]) VALUES (N'kh01      ', N'Bùi Việt Hoàng', N'Thái Bình', N'hoangbui.1808@gmail.com', N'0979892910', N'hoang123')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Mota]) VALUES (N'n01       ', N'nam', N'good')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Mota]) VALUES (N'n02       ', N'nữ', N'good')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Mota]) VALUES (N'n03       ', N'kid', N'good')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GiaTien], [MaLoai], [KichThuoc], [MauSac], [HinhAnh]) VALUES (N'sp01      ', N'áo thun ', NULL, 50000, N'n01       ', N'xl', N'đen', N'team-member-03.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GiaTien], [MaLoai], [KichThuoc], [MauSac], [HinhAnh]) VALUES (N'sp02      ', N'quần jean', NULL, 200000, N'n03       ', N'm', N'đen', N'explore-image-02.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GiaTien], [MaLoai], [KichThuoc], [MauSac], [HinhAnh]) VALUES (N'sp03      ', N'jacket', NULL, 100000, N'n02       ', N'xl', N'nâu đen', N'instagram-03.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GiaTien], [MaLoai], [KichThuoc], [MauSac], [HinhAnh]) VALUES (N'sp04      ', N'áo khoác ', NULL, 10000, N'n01       ', N'xl', N'đen', N'men-01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GiaTien], [MaLoai], [KichThuoc], [MauSac], [HinhAnh]) VALUES (N'sp05      ', N'áo ', NULL, 10000, N'n01       ', N'm', N'đen', N'men-03.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GiaTien], [MaLoai], [KichThuoc], [MauSac], [HinhAnh]) VALUES (N'sp06      ', N'quần', NULL, 30000, N'n02       ', N'ml', N'xanh', N'women-03.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GiaTien], [MaLoai], [KichThuoc], [MauSac], [HinhAnh]) VALUES (N'sp07      ', N'túi', NULL, 50000, N'n02       ', N'ms', N'trắng', N'women-01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GiaTien], [MaLoai], [KichThuoc], [MauSac], [HinhAnh]) VALUES (N'sp08      ', N'quần áo', NULL, 60000, N'n03       ', N'l', N'gi', N'kid-03.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MoTa], [GiaTien], [MaLoai], [KichThuoc], [MauSac], [HinhAnh]) VALUES (N'sp09      ', N'quần áo', NULL, 120000, N'n03       ', N'l', N'caro', N'kid-01.jpg')
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
USE [master]
GO
ALTER DATABASE [ShoptrDB] SET  READ_WRITE 
GO
