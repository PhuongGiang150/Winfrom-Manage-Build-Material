USE [master]
GO
/****** Object:  Database [DoAnQuanLyVLXD]    Script Date: 07/04/2020 17:38:24 ******/
CREATE DATABASE [DoAnQuanLyVLXD] ON  PRIMARY 
( NAME = N'DoAnQuanLyVLXD', FILENAME = N'D:\DoAnLapTrinhNangCao\SQL\DoAnQuanLyVLXD.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DoAnQuanLyVLXD_log', FILENAME = N'D:\DoAnLapTrinhNangCao\SQL\DoAnQuanLyVLXD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoAnQuanLyVLXD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET ARITHABORT OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET  DISABLE_BROKER
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET  READ_WRITE
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET  MULTI_USER
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DoAnQuanLyVLXD] SET DB_CHAINING OFF
GO
USE [DoAnQuanLyVLXD]
GO
/****** Object:  Table [dbo].[TaiKhoanDangNhap]    Script Date: 07/04/2020 17:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanDangNhap](
	[NameUser] [nvarchar](50) NULL,
	[NameAcount] [nchar](20) NOT NULL,
	[PassWord] [nchar](10) NULL,
	[Quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoanDangNhap] PRIMARY KEY CLUSTERED 
(
	[NameAcount] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TaiKhoanDangNhap] ([NameUser], [NameAcount], [PassWord], [Quyen]) VALUES (N'Trần Viết Huy', N'HuyTran             ', N'huy123    ', N'QuanLy')
INSERT [dbo].[TaiKhoanDangNhap] ([NameUser], [NameAcount], [PassWord], [Quyen]) VALUES (N'Trần Viết Huy', N'HuyTran123          ', N'huytran   ', N'QuanLy')
INSERT [dbo].[TaiKhoanDangNhap] ([NameUser], [NameAcount], [PassWord], [Quyen]) VALUES (N'Giang Tuấn Phương', N'PhuongGiang         ', N'deptrai9x ', N'Admin')
INSERT [dbo].[TaiKhoanDangNhap] ([NameUser], [NameAcount], [PassWord], [Quyen]) VALUES (N'Phạm Văn Trưởng', N'Truong123           ', N'truongabc ', N'NhanVien')
/****** Object:  Table [dbo].[NhanVien]    Script Date: 07/04/2020 17:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](12) NULL,
	[Luong] [char](10) NULL,
	[CongViec] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SDT], [Luong], [CongViec]) VALUES (N'NVBH001   ', N'Lê Văn Hoàng', N'Quỳnh Phụ - Thái Bình', N'708698767   ', N'6800000   ', N'Bán Vật Liệu Khu 1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SDT], [Luong], [CongViec]) VALUES (N'NVBH002   ', N'Lê Thu Huyền', N'Hưng Hà - Thái Bình', N'0234725782  ', N'8400000   ', N'Bán Vật Liệu Khu 2')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SDT], [Luong], [CongViec]) VALUES (N'NVBH003   ', N'Nguyễn Tuấn Nghĩa', N'Quỳnh Phụ - Thái Bình', N'06758645634 ', N'750000    ', N'Bán Vật Liệu Khu 3')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SDT], [Luong], [CongViec]) VALUES (N'NVBH004   ', N'Phạm Văn Trưởng', N'Tp Thái Bình - Thái Bình', N'03387546455 ', N'6800000   ', N'Bán Vật Liệu Khu 4')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SDT], [Luong], [CongViec]) VALUES (N'NVBH005   ', N'Trần Tuấn Quang', N'Kiến Xương - Thái Bình', N'0745874378  ', N'6000000   ', N'Bán Vật Liệu Khu 5')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [SDT], [Luong], [CongViec]) VALUES (N'QLNV001   ', N'Trần Viết Huy', N'Quỳnh Phụ - Thái Bình', N'03783235332 ', N'9800000   ', N'Quản Lý Nhân Viên')
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 07/04/2020 17:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](12) NULL,
	[Website] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Website]) VALUES (N'CHAULONG  ', N'VLXD Châu Long', N'P. Phước Nguyên, TP.', N'0984285012  ', N'group.chaulong@com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Website]) VALUES (N'DHA       ', N'VLXD Đạt Hoàng Anh', N'P. Mỹ Xuân, TX. Phú ', N'02543895810 ', N'congtydha2019@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Website]) VALUES (N'GIAVIET   ', N'VLXD Gia Việt', N'TP. Phan Rang - Tháp', N'02593897897 ', N'giaviet@giavietninhthuan.com.vn')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Website]) VALUES (N'HALO      ', N'Công ty  Halo Group', N'P. Phước Nguyên, TP.', N'02839257666 ', N' halomart.north@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Website]) VALUES (N'NHAXANH   ', N'VLXD Nhà Xanh ', N'P. Phú Mỹ, TP. Thủ D', N'0933106187  ', N'xaydung@nhaxanh.com.vn')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Website]) VALUES (N'SONGTHAO  ', N'VLXD Sông Thao', N'Đường Quang Trung', N'0906262100  ', N'vuatronsan@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Website]) VALUES (N'VINABUILT ', N'VLXD Vina Built', N' P. 10, Q. Tân Bình,', N'0987447766  ', N'vinbuilt7777@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Website]) VALUES (N'VINHPHU   ', N'VLXD Vĩnh Phú', N'P. Phú Hữu, Q. 9,Tp.', N'02866589777 ', N'ctvinhphu@gmail.com')
/****** Object:  Table [dbo].[KhachHang]    Script Date: 07/04/2020 17:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](12) NULL,
	[Diem] [char](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Diem]) VALUES (N'KhA001    ', N'Trần Thanh Quân', N'Hà Nội', N'0238577982  ', N'5500      ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Diem]) VALUES (N'KhA002    ', N'Trần Công Đại', N'Thái Bình', N'0437239735  ', N'5700      ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Diem]) VALUES (N'KhB001    ', N'Lê Thu Uyên', N'Hà Nội', N'0328523673  ', N'4500      ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Diem]) VALUES (N'KhC001    ', N'Trần Thanh Quân', N'Đà Nẵng', N'0473943747  ', N'2500      ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Diem]) VALUES (N'KhD001    ', N'Trần Thanh Bình', N'Hà Nội', N'058372485   ', N'1500      ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Diem]) VALUES (N'KhE001    ', N'Nguyễn Thu Nga', N'Quảnh Ninh', N'0238572393  ', N'500       ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Diem]) VALUES (N'KhS001    ', N'Lê Tuấn Minh', N'Hà Nội', N'0434897373  ', N'9900      ')
/****** Object:  Table [dbo].[VatLieu]    Script Date: 07/04/2020 17:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VatLieu](
	[MaVL] [nchar](10) NOT NULL,
	[TenVL] [nvarchar](50) NULL,
	[DvTinh] [nchar](10) NULL,
	[GiaNhap] [char](10) NULL,
	[Loai] [nchar](10) NULL,
	[MaNCC] [nchar](10) NULL,
 CONSTRAINT [PK_VatLieu] PRIMARY KEY CLUSTERED 
(
	[MaVL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'CaBTL1    ', N'Cát Bê Tông Loại 1', N'Khối      ', N'200000    ', N'Cát       ', N'HALO      ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'CaBTL2    ', N'Cát Bê Tông Loại 2', N'Khối      ', N'180000    ', N'Cát       ', N'HALO      ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'CaBTV     ', N'Cát bê tông rửa vàng', N'Khối      ', N'240000    ', N'Đá        ', N'VINHPHU   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'CaSL      ', N'Cát san lấp', N'Khối      ', N'140000    ', N'Cát       ', N'NHAXANH   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'CaTX      ', N'Cát Xây Tô', N'Khối      ', N'160000    ', N'Cát       ', N'VINABUILT ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'Da0x4     ', N'Đá 0x4', N'Khối      ', N'220000    ', N'Đá        ', N'GIAVIET   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'DA4x6X    ', N'Đá 4x6 Xanh', N'Khối      ', N'320000    ', N'Đá        ', N'HALO      ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'DAD1x1    ', N'Đá đen 1x1', N'Khối      ', N'270000    ', N'Đá        ', N'GIAVIET   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'DaMiB     ', N'Đá Mi Bụi', N'Khối      ', N'170000    ', N'Đá        ', N'NHAXANH   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'DaMIS     ', N'Đá Mi Sàng', N'Khối      ', N'210000    ', N'Đá        ', N'GIAVIET   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'DAXDN     ', N'Đá xanh Đồng Nai', N'Khối      ', N'370000    ', N'Đá        ', N'CHAULONG  ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'GAB       ', N'Gạch An Bình', N'Viên      ', N'850       ', N'Gạch      ', N'GIAVIET   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'GdPT      ', N'Gạch Đinh Phước Thành', N'Viên      ', N'1080      ', N'Gạch      ', N'GIAVIET   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'GoPT      ', N'Gạch Ống Phước Thành', N'Viên      ', N'1080      ', N'Gạch      ', N'HALO      ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'GoQT      ', N'Gạch Ống Quốc Toàn', N'Viên      ', N'1090      ', N'Gạch      ', N'GIAVIET   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'Tp10      ', N'Thép Pomina phi 10 ', N'Cây       ', N'10185     ', N'Thép      ', N'NHAXANH   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'Tp12      ', N'Thép Pomina phi 12', N'Cây       ', N'10185     ', N'Thép      ', N'SONGTHAO  ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'Tp14      ', N'Thép Pomina phi 14', N'Cây       ', N'10185     ', N'Thép      ', N'NHAXANH   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'Tp16      ', N'Thép Phi 16', N'Cây       ', N'90000     ', N'Thép      ', N'VINABUILT ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'Tp18      ', N'Thép Pomina phi 18', N'Cây       ', N'10185     ', N'Thép      ', N'DHA       ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'Tp20      ', N'Thép Pomina phi 20', N'Cây       ', N'10185     ', N'Thép      ', N'NHAXANH   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'Tp6       ', N'Thép Pomina phi 6', N'Cây       ', N'10035     ', N'Thép      ', N'HALO      ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'Tp8       ', N'Thép Pomina phi 8', N'Cây       ', N'10185     ', N'Thép      ', N'NHAXANH   ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'XiFico    ', N'Xi măng FiCo', N'Bao       ', N'75000     ', N'Xi Măng   ', N'HALO      ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'XiHL      ', N'Xi măng Hạ Long', N'Bao       ', N'72500     ', N'Xi Măng   ', N'SONGTHAO  ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'XiHTDD    ', N'Xi măng Hà Tiền đa dụng', N'Bao       ', N'87000     ', N'Xi Măng   ', N'VINABUILT ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'XiNS      ', N'Xi măng Nghi Sơn', N'Bao       ', N'75000     ', N'Xi Măng   ', N'VINABUILT ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'XiTL      ', N'Xi măng Thăng Long', N'Bao       ', N'72500     ', N'Xi Măng   ', N'CHAULONG  ')
INSERT [dbo].[VatLieu] ([MaVL], [TenVL], [DvTinh], [GiaNhap], [Loai], [MaNCC]) VALUES (N'XMFC      ', N'Xi Măng Fico', N'Bao       ', N'850000    ', N'Xi Măng   ', N'VINHPHU   ')
/****** Object:  Table [dbo].[HoaDon]    Script Date: 07/04/2020 17:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nchar](10) NOT NULL,
	[TenHD] [nvarchar](50) NULL,
	[MaNV] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NOT NULL,
	[NgayLap] [date] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([MaHD], [TenHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD001     ', N'Bán Gạch- Xi măng', N'NVBH001   ', N'KhA001    ', CAST(0x42410B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [TenHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD002     ', N'Bán Thép- Tôn', N'NVBH002   ', N'KhA002    ', CAST(0xDC400B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [TenHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD003     ', N'Bán Cát- Đá', N'NVBH003   ', N'KhB001    ', CAST(0xC9400B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [TenHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD004     ', N'Bán Gạch Rỗng - Cát Đen- Xi Măng', N'NVBH004   ', N'KhC001    ', CAST(0x2B410B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [TenHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD005     ', N'Bán Gạch  Men', N'NVBH005   ', N'KhD001    ', CAST(0xD6400B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [TenHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD006     ', N'Bán Đá Xanh- Xi măng', N'NVBH004   ', N'KhS001    ', CAST(0xF6400B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [TenHD], [MaNV], [MaKH], [NgayLap]) VALUES (N'HD007     ', N'Bán Thép ', N'NVBH005   ', N'KhS001    ', CAST(0x46410B00 AS Date))
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 07/04/2020 17:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ID] [nchar](10) NOT NULL,
	[MaHD] [nchar](10) NOT NULL,
	[MaVL] [nchar](10) NULL,
	[SL] [char](10) NULL,
	[GiaBan] [char](10) NULL,
	[ThanhTien] [char](10) NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([ID], [MaHD], [MaVL], [SL], [GiaBan], [ThanhTien]) VALUES (N'1         ', N'HD002     ', N'XiTL      ', N'120       ', N'72500     ', N'8650000   ')
INSERT [dbo].[ChiTietHoaDon] ([ID], [MaHD], [MaVL], [SL], [GiaBan], [ThanhTien]) VALUES (N'2         ', N'HD001     ', N'XMFC      ', N'111       ', N'222       ', N'24642     ')
INSERT [dbo].[ChiTietHoaDon] ([ID], [MaHD], [MaVL], [SL], [GiaBan], [ThanhTien]) VALUES (N'3         ', N'HD001     ', N'Tp18      ', N'150       ', N'10185     ', N'0         ')
INSERT [dbo].[ChiTietHoaDon] ([ID], [MaHD], [MaVL], [SL], [GiaBan], [ThanhTien]) VALUES (N'5         ', N'HD004     ', N'Tp16      ', N'100       ', N'100       ', N'10000     ')
INSERT [dbo].[ChiTietHoaDon] ([ID], [MaHD], [MaVL], [SL], [GiaBan], [ThanhTien]) VALUES (N'6         ', N'HD001     ', N'Tp16      ', N'100       ', N'100       ', N'10000     ')
INSERT [dbo].[ChiTietHoaDon] ([ID], [MaHD], [MaVL], [SL], [GiaBan], [ThanhTien]) VALUES (N'7         ', N'HD004     ', N'Tp20      ', N'200       ', N'10185     ', N'1987000   ')
/****** Object:  ForeignKey [FK_VatLieu_NhaCungCap]    Script Date: 07/04/2020 17:38:25 ******/
ALTER TABLE [dbo].[VatLieu]  WITH CHECK ADD  CONSTRAINT [FK_VatLieu_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VatLieu] CHECK CONSTRAINT [FK_VatLieu_NhaCungCap]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 07/04/2020 17:38:25 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_HoaDon_NhanVien]    Script Date: 07/04/2020 17:38:25 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
/****** Object:  ForeignKey [FK_ChiTietHoaDon_HoaDon1]    Script Date: 07/04/2020 17:38:25 ******/
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon1] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon1]
GO
/****** Object:  ForeignKey [FK_ChiTietHoaDon_VatLieu]    Script Date: 07/04/2020 17:38:25 ******/
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_VatLieu] FOREIGN KEY([MaVL])
REFERENCES [dbo].[VatLieu] ([MaVL])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_VatLieu]
GO
