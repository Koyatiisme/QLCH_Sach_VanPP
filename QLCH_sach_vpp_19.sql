USE [master]
GO
/****** Object:  Database [QLCH_Sach_VanPP]    Script Date: 6/19/2024 10:09:10 PM ******/
CREATE DATABASE [QLCH_Sach_VanPP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLCH_Sach_VanPP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLCH_Sach_VanPP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLCH_Sach_VanPP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLCH_Sach_VanPP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCH_Sach_VanPP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET  MULTI_USER 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLCH_Sach_VanPP]
GO
/****** Object:  Table [dbo].[BanHang]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanHang](
	[IdBanHang] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[MaHH] [nvarchar](50) NOT NULL,
	[MaHDB] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_BanHang] PRIMARY KEY CLUSTERED 
(
	[IdBanHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[TenChiNhanh] [nvarchar](50) NOT NULL,
	[MaCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[TenChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChoLam]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChoLam](
	[MaNV] [nvarchar](50) NOT NULL,
	[TenCH] [nvarchar](50) NOT NULL,
	[TenChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChoLam] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chu_SDT]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chu_SDT](
	[TenChu] [nvarchar](50) NOT NULL,
	[SDT] [int] NOT NULL,
 CONSTRAINT [PK_Chu_SDT] PRIMARY KEY CLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuCH]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuCH](
	[TenChu] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuCH] PRIMARY KEY CLUSTERED 
(
	[TenChu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[TenCH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_CuaHang] PRIMARY KEY CLUSTERED 
(
	[TenCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang_Hotline]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang_Hotline](
	[TenCH] [nvarchar](50) NOT NULL,
	[SDT] [int] NULL,
 CONSTRAINT [PK_CuaHang_Hotline] PRIMARY KEY CLUSTERED 
(
	[TenCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [nvarchar](50) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[MaHDB] [nvarchar](50) NOT NULL,
	[NgayBan] [datetime] NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHDN] [nvarchar](50) NOT NULL,
	[NgayNhap] [date] NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang_Phone]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang_Phone](
	[MaKH] [nvarchar](50) NOT NULL,
	[SDT] [int] NULL,
 CONSTRAINT [PK_KhachHang_Phone] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC_Hotline]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC_Hotline](
	[MaCC] [nvarchar](50) NOT NULL,
	[SDT] [int] NOT NULL,
 CONSTRAINT [PK_NhaCC_Hotline] PRIMARY KEY CLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaCC] [nvarchar](50) NOT NULL,
	[TenCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Tuoi] [int] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NhiemVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien_SDT]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien_SDT](
	[MaNV] [nvarchar](50) NOT NULL,
	[SDT] [int] NULL,
 CONSTRAINT [PK_NhanVien_SDT] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapHang]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapHang](
	[MaNH] [nvarchar](50) NOT NULL,
	[MaHH] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[MaCC] [nvarchar](50) NOT NULL,
	[TenChiNhanh] [nvarchar](50) NOT NULL,
	[MaHDN] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_NhapHang] PRIMARY KEY CLUSTERED 
(
	[MaNH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nvarchar](50) NOT NULL,
	[TacGia] [nvarchar](50) NULL,
	[TheLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach_TB]    Script Date: 6/19/2024 10:09:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach_TB](
	[MaSach] [nvarchar](50) NOT NULL,
	[TaiBan] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sach_TB] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BanHang] ON 

INSERT [dbo].[BanHang] ([IdBanHang], [MaNV], [MaKH], [MaHH], [MaHDB], [SoLuong]) VALUES (1, N'NV01', N'KH003', N'HH001', N'HDB001', 2)
INSERT [dbo].[BanHang] ([IdBanHang], [MaNV], [MaKH], [MaHH], [MaHDB], [SoLuong]) VALUES (2, N'NV02', N'KH004', N'HH004', N'HDB002', 4)
INSERT [dbo].[BanHang] ([IdBanHang], [MaNV], [MaKH], [MaHH], [MaHDB], [SoLuong]) VALUES (3, N'NV03', N'KH006', N'HH008', N'HDB003', 2)
INSERT [dbo].[BanHang] ([IdBanHang], [MaNV], [MaKH], [MaHH], [MaHDB], [SoLuong]) VALUES (4, N'NV04', N'KH001', N'HH001', N'HDB004', 1)
INSERT [dbo].[BanHang] ([IdBanHang], [MaNV], [MaKH], [MaHH], [MaHDB], [SoLuong]) VALUES (5, N'NV05', N'KH002', N'HH002', N'HDB005', 1)
INSERT [dbo].[BanHang] ([IdBanHang], [MaNV], [MaKH], [MaHH], [MaHDB], [SoLuong]) VALUES (6, N'NV02', N'KH005', N'HH005', N'HDB006', 3)
SET IDENTITY_INSERT [dbo].[BanHang] OFF
GO
INSERT [dbo].[ChoLam] ([MaNV], [TenCH], [TenChu]) VALUES (N'NV01', N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', N'Nguyễn Hữu Thắng')
INSERT [dbo].[ChoLam] ([MaNV], [TenCH], [TenChu]) VALUES (N'NV02', N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', N'Nguyễn Hữu Thắng')
INSERT [dbo].[ChoLam] ([MaNV], [TenCH], [TenChu]) VALUES (N'NV03', N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', N'Nguyễn Hữu Thắng')
INSERT [dbo].[ChoLam] ([MaNV], [TenCH], [TenChu]) VALUES (N'NV04', N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', N'Nguyễn Hữu Thắng')
INSERT [dbo].[ChoLam] ([MaNV], [TenCH], [TenChu]) VALUES (N'NV05', N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', N'Nguyễn Hữu Thắng')
INSERT [dbo].[ChoLam] ([MaNV], [TenCH], [TenChu]) VALUES (N'NV06', N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', N'Nguyễn Hữu Thắng')
INSERT [dbo].[ChoLam] ([MaNV], [TenCH], [TenChu]) VALUES (N'NV07', N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', N'Nguyễn Hữu Thắng')
INSERT [dbo].[ChoLam] ([MaNV], [TenCH], [TenChu]) VALUES (N'NV08', N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', N'Nguyễn Hữu Thắng')
INSERT [dbo].[ChoLam] ([MaNV], [TenCH], [TenChu]) VALUES (N'NV09', N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', N'Nguyễn Hữu Thắng')
GO
INSERT [dbo].[Chu_SDT] ([TenChu], [SDT]) VALUES (N'Nguyễn Hữu Thắng', 975726473)
INSERT [dbo].[Chu_SDT] ([TenChu], [SDT]) VALUES (N'Đỗ Đức Chung ', 987769294)
GO
INSERT [dbo].[ChuCH] ([TenChu], [DiaChi]) VALUES (N'Đỗ Đức Chung ', N'Sóc Sơn, Hà Nội')
INSERT [dbo].[ChuCH] ([TenChu], [DiaChi]) VALUES (N'Đỗ Thanh Binh', N'Gia Lộc, Hải Dương')
INSERT [dbo].[ChuCH] ([TenChu], [DiaChi]) VALUES (N'Lại Chí Bảo', N'Sơn Dương, Tuyên Quang')
INSERT [dbo].[ChuCH] ([TenChu], [DiaChi]) VALUES (N'Nguyễn Hữu Thắng', N'Phú Bình, Thái Nguyên')
GO
INSERT [dbo].[CuaHang] ([TenCH], [DiaChi]) VALUES (N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', N'Tp Thái Nguyên - Thái Nguyên')
GO
INSERT [dbo].[CuaHang_Hotline] ([TenCH], [SDT]) VALUES (N'Cửa hàng Sách và Văn phòng phẩm tri thức Việt', 432423423)
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH001', N'Bút lông', 12000, 120)
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH0010', N'Sổ tay A5', 45000, 54)
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH0011 ', N'Giáo án', 32000, 60)
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH002', N'Keo khô', 11200, 80)
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH003', N'Hộp bút màu', 32000, 80)
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH004', N'Compa', 7000, 100)
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH005', N'Dao rọc giấy', 30000, 50)
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH006', N'Tập vở ', 7500, 200)
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH007', N'Thước 30 cm', 14000, 70)
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH008 ', N'Thước 20 cm ', 9000, 70)
INSERT [dbo].[HangHoa] ([MaHH], [TenHang], [Gia], [SoLuong]) VALUES (N'HH009 ', N'Bảng học sinh', 20000, 40)
GO
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan]) VALUES (N'HDB001', CAST(N'2024-01-06T00:00:07.000' AS DateTime))
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan]) VALUES (N'HDB002', CAST(N'2024-02-07T06:52:07.000' AS DateTime))
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan]) VALUES (N'HDB003', CAST(N'2024-02-07T06:52:07.000' AS DateTime))
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan]) VALUES (N'HDB004', CAST(N'2024-02-07T06:52:07.000' AS DateTime))
INSERT [dbo].[HoaDonBan] ([MaHDB], [NgayBan]) VALUES (N'HDB005', CAST(N'2024-02-07T06:52:07.000' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [GioiTinh], [Tuoi]) VALUES (N'KH001', N'Nguyễn Thuý Hằng ', N'Thái Nguyên', N'Nữ ', 20)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [GioiTinh], [Tuoi]) VALUES (N'KH002', N'Bùi Thanh Tâm', N'Thái Nguyên ', N'Nữ ', 21)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [GioiTinh], [Tuoi]) VALUES (N'KH003', N'Vũ Quang Kiểm', N'Thái Nguyên', N'Nam', 23)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [GioiTinh], [Tuoi]) VALUES (N'KH004', N'Cao Văn Khang', N'Thái Nguyên', N'Nam', 30)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [GioiTinh], [Tuoi]) VALUES (N'KH005', N'Nguyễn Tuấn Anh', N'Thái Nguyên ', N'Nam', 30)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [GioiTinh], [Tuoi]) VALUES (N'KH006', N'Đỗ Đức Chung', N'Hà Nội', N'Nam', 21)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [GioiTinh], [Tuoi]) VALUES (N'KH007', N'Lại Văn Sâm', N'Tuyên Quang', N'Nam ', 54)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [GioiTinh], [Tuoi]) VALUES (N'KH008', N'Nguyễn Kim Huệ', N'Bắc Ninh', N'Nữ ', 23)
GO
INSERT [dbo].[KhachHang_Phone] ([MaKH], [SDT]) VALUES (N'KH001', 987654321)
INSERT [dbo].[KhachHang_Phone] ([MaKH], [SDT]) VALUES (N'Kh002', 987654321)
INSERT [dbo].[KhachHang_Phone] ([MaKH], [SDT]) VALUES (N'KH003', 987654321)
INSERT [dbo].[KhachHang_Phone] ([MaKH], [SDT]) VALUES (N'KH004', 987654321)
INSERT [dbo].[KhachHang_Phone] ([MaKH], [SDT]) VALUES (N'KH005', 987654321)
INSERT [dbo].[KhachHang_Phone] ([MaKH], [SDT]) VALUES (N'KH006', 987654321)
INSERT [dbo].[KhachHang_Phone] ([MaKH], [SDT]) VALUES (N'KH007', 987654321)
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [DiaChi], [Tuoi], [GioiTinh], [NhiemVu]) VALUES (N'NV01', N'Hoàng Văn Thanh', N'Hưng Yen ', 24, N'Nam', N'Bán Hàng')
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [DiaChi], [Tuoi], [GioiTinh], [NhiemVu]) VALUES (N'NV010', N'Bùi Quốc Huy', N'Thái Nguyên', 20, N'Nam', N'Nhập hàng')
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [DiaChi], [Tuoi], [GioiTinh], [NhiemVu]) VALUES (N'NV02', N'Nguyễn Thanh Hai', N'Hải Dương ', 24, N'Nam', N'Bán Hàng')
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [DiaChi], [Tuoi], [GioiTinh], [NhiemVu]) VALUES (N'NV03', N'Nguyễn Thu Hương ', N'Hoàng Mai - Hà Nội', 25, N'Nữ', N'Bán hàng')
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [DiaChi], [Tuoi], [GioiTinh], [NhiemVu]) VALUES (N'NV04 ', N'Phạm Tiến Đạt', N'Hà Đông - Hà Nội', 24, N'Nam', N'Bán hàng')
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [DiaChi], [Tuoi], [GioiTinh], [NhiemVu]) VALUES (N'NV05', N'Vũ Thuỳ Linh', N'Hưng Yên', 24, N'Nữ', N'Bán hàng')
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [DiaChi], [Tuoi], [GioiTinh], [NhiemVu]) VALUES (N'NV06', N'Trần Bảo Huy', N'Phú Binh - Thái Nguyên', 25, N'Nam', N'Nhập hàng')
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [DiaChi], [Tuoi], [GioiTinh], [NhiemVu]) VALUES (N'NV07', N'Đỗ Hải Yến', N'Phú Lương - Thái Nguyên', 23, N'Nữ', N'Nhập hàng')
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [DiaChi], [Tuoi], [GioiTinh], [NhiemVu]) VALUES (N'NV08', N'Nguyễn Hoàng Long', N'Hà Nội', 23, N'Nam', N'Nhập hàng')
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [DiaChi], [Tuoi], [GioiTinh], [NhiemVu]) VALUES (N'NV09', N'Lê Trung Hiếu', N'Thái Nguyên', 21, N'Nam', N'Nhập hàng')
GO
INSERT [dbo].[NhanVien_SDT] ([MaNV], [SDT]) VALUES (N'NV01', 987654321)
INSERT [dbo].[NhanVien_SDT] ([MaNV], [SDT]) VALUES (N'NV010', 987654321)
INSERT [dbo].[NhanVien_SDT] ([MaNV], [SDT]) VALUES (N'NV02', 987654321)
INSERT [dbo].[NhanVien_SDT] ([MaNV], [SDT]) VALUES (N'NV03', 987654321)
INSERT [dbo].[NhanVien_SDT] ([MaNV], [SDT]) VALUES (N'NV04', 987654321)
INSERT [dbo].[NhanVien_SDT] ([MaNV], [SDT]) VALUES (N'NV05', 987654321)
INSERT [dbo].[NhanVien_SDT] ([MaNV], [SDT]) VALUES (N'NV06', 987654321)
INSERT [dbo].[NhanVien_SDT] ([MaNV], [SDT]) VALUES (N'NV07', 987654321)
INSERT [dbo].[NhanVien_SDT] ([MaNV], [SDT]) VALUES (N'NV08', 987654321)
INSERT [dbo].[NhanVien_SDT] ([MaNV], [SDT]) VALUES (N'NV09', 987654321)
GO
INSERT [dbo].[Sach] ([MaSach], [TacGia], [TheLoai]) VALUES (N'HS001', N'Nguyễn Nhật Ánh', N'Tiểu thuyết')
INSERT [dbo].[Sach] ([MaSach], [TacGia], [TheLoai]) VALUES (N'HS002', N'Paulo Coelho', N'Văn học nước ngoài')
INSERT [dbo].[Sach] ([MaSach], [TacGia], [TheLoai]) VALUES (N'HS003', N'Nguyễn Ngọc Thuần', N'Tản văn')
INSERT [dbo].[Sach] ([MaSach], [TacGia], [TheLoai]) VALUES (N'HS004', N'Nguyễn Ngọc Thuần ', N'Sách tiếng anh')
INSERT [dbo].[Sach] ([MaSach], [TacGia], [TheLoai]) VALUES (N'HS005', N'Mai Chánh Trí', N'Giáo dục')
INSERT [dbo].[Sach] ([MaSach], [TacGia], [TheLoai]) VALUES (N'HS006', N'Toni buổi sáng', N'Kỹ năng sống')
GO
INSERT [dbo].[Sach_TB] ([MaSach], [TaiBan]) VALUES (N'HS001', N'Lần thứ 3')
INSERT [dbo].[Sach_TB] ([MaSach], [TaiBan]) VALUES (N'HS002', N'Lần thứ nhất')
INSERT [dbo].[Sach_TB] ([MaSach], [TaiBan]) VALUES (N'HS003', N'Lần thứ 5')
INSERT [dbo].[Sach_TB] ([MaSach], [TaiBan]) VALUES (N'HS004', N'Chưa tái bản')
INSERT [dbo].[Sach_TB] ([MaSach], [TaiBan]) VALUES (N'HS005', N'Lầm thứ hai')
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [QLCH_Sach_VanPP] SET  READ_WRITE 
GO
