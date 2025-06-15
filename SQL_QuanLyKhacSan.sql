USE [QUANLYKHACHSAN]
GO
/****** Object:  Table [dbo].[ChiTietDatPhong]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatPhong](
	[MaChiTietDatPhong] [char](5) NOT NULL,
	[NgayNhan] [date] NOT NULL,
	[NgayTra] [date] NOT NULL,
	[SoDem] [int] NULL,
	[MaKH] [char](5) NULL,
	[TenLoai] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [char](5) NOT NULL,
	[LoaiDichVu] [nvarchar](10) NULL,
	[TenDV] [nvarchar](10) NOT NULL,
	[DonGia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [char](5) NOT NULL,
	[TongTien] [int] NULL,
	[MaKH] [char](5) NULL,
	[TrangThaiTT] [nvarchar](15) NULL,
	[NgayThanhToan] [date] NULL,
	[NguoiThanhToan] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonDV]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonDV](
	[MaHDDV] [char](5) NOT NULL,
	[MaDV] [char](5) NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [int] NULL,
	[MaHD] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonPhong]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonPhong](
	[MaHDPhong] [char](5) NOT NULL,
	[MaChiTietDP] [char](5) NOT NULL,
	[ThanhTien] [int] NULL,
	[MaHD] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [char](5) NOT NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[CMND] [char](12) NOT NULL,
	[LoaiKH] [nvarchar](30) NULL,
	[SDT] [char](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](20) NOT NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[QuocTich] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[Maloai] [char](5) NOT NULL,
	[TenLoai] [nvarchar](10) NULL,
	[SoNguoi] [int] NULL,
	[DonGia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](5) NOT NULL,
	[TenDangNhap] [varchar](15) NOT NULL,
	[ChucVu] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[CMNDNhanVien] [char](12) NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[NgaySinhNV] [date] NOT NULL,
	[SDT] [char](10) NOT NULL,
	[DiaChi] [nvarchar](20) NOT NULL,
	[NgayVaoLam] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatPhong]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatPhong](
	[MaPhieuDP] [char](5) NOT NULL,
	[MaChiTietDP] [char](5) NOT NULL,
	[MaPhong] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [char](5) NOT NULL,
	[TrangThai] [nvarchar](10) NULL,
	[MaLoai] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/9/2022 10:06:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [varchar](15) NOT NULL,
	[MatKhau] [varchar](10) NOT NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDatPhong] ([MaChiTietDatPhong], [NgayNhan], [NgayTra], [SoDem], [MaKH], [TenLoai]) VALUES (N'A143 ', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-09' AS Date), 2, N'C582 ', N'Standard')
GO
INSERT [dbo].[ChiTietDatPhong] ([MaChiTietDatPhong], [NgayNhan], [NgayTra], [SoDem], [MaKH], [TenLoai]) VALUES (N'A187 ', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-08' AS Date), 2, N'C193 ', N'Sulte')
GO
INSERT [dbo].[ChiTietDatPhong] ([MaChiTietDatPhong], [NgayNhan], [NgayTra], [SoDem], [MaKH], [TenLoai]) VALUES (N'A191 ', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-08' AS Date), 1, N'C581 ', N'Deluxe')
GO
INSERT [dbo].[ChiTietDatPhong] ([MaChiTietDatPhong], [NgayNhan], [NgayTra], [SoDem], [MaKH], [TenLoai]) VALUES (N'A230 ', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-08' AS Date), 2, N'C420 ', N'Standard')
GO
INSERT [dbo].[ChiTietDatPhong] ([MaChiTietDatPhong], [NgayNhan], [NgayTra], [SoDem], [MaKH], [TenLoai]) VALUES (N'A528 ', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-08' AS Date), 2, N'C552 ', N'Sulte')
GO
INSERT [dbo].[ChiTietDatPhong] ([MaChiTietDatPhong], [NgayNhan], [NgayTra], [SoDem], [MaKH], [TenLoai]) VALUES (N'A651 ', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-09' AS Date), 2, N'C868 ', N'Superior')
GO
INSERT [dbo].[ChiTietDatPhong] ([MaChiTietDatPhong], [NgayNhan], [NgayTra], [SoDem], [MaKH], [TenLoai]) VALUES (N'A730 ', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-07' AS Date), 0, N'C785 ', N'Deluxe')
GO
INSERT [dbo].[ChiTietDatPhong] ([MaChiTietDatPhong], [NgayNhan], [NgayTra], [SoDem], [MaKH], [TenLoai]) VALUES (N'A778 ', CAST(N'2022-12-07' AS Date), CAST(N'2022-12-09' AS Date), 2, N'C512 ', N'Superior')
GO
INSERT [dbo].[DichVu] ([MaDV], [LoaiDichVu], [TenDV], [DonGia]) VALUES (N'1    ', N'Đồ Ăn', N'Cơm Phần', 100000)
GO
INSERT [dbo].[DichVu] ([MaDV], [LoaiDichVu], [TenDV], [DonGia]) VALUES (N'2    ', N'Đồ Uống', N'Rựu Nho', 100000)
GO
INSERT [dbo].[DichVu] ([MaDV], [LoaiDichVu], [TenDV], [DonGia]) VALUES (N'3    ', N'Thuê Xe', N'Xe máy', 50000)
GO
INSERT [dbo].[DichVu] ([MaDV], [LoaiDichVu], [TenDV], [DonGia]) VALUES (N'4    ', N'Thuê Xe', N'Xe Hơi', 700000)
GO
INSERT [dbo].[DichVu] ([MaDV], [LoaiDichVu], [TenDV], [DonGia]) VALUES (N'5    ', N'Đồ Uống', N'Coca', 10000)
GO
INSERT [dbo].[DichVu] ([MaDV], [LoaiDichVu], [TenDV], [DonGia]) VALUES (N'6    ', N'Đồ Uống', N'Bia', 10000)
GO
INSERT [dbo].[DichVu] ([MaDV], [LoaiDichVu], [TenDV], [DonGia]) VALUES (N'7    ', N'Đồ Ăn', N'Cơm Chiên', 100000)
GO
INSERT [dbo].[DichVu] ([MaDV], [LoaiDichVu], [TenDV], [DonGia]) VALUES (N'8    ', N'Thuê Xe', N'Xe Đạp', 30000)
GO
INSERT [dbo].[DichVu] ([MaDV], [LoaiDichVu], [TenDV], [DonGia]) VALUES (N'9    ', N'Đồ Ăn', N'Hủ Tiếu', 30000)
GO
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [MaKH], [TrangThaiTT], [NgayThanhToan], [NguoiThanhToan]) VALUES (N'B156 ', 4300000, N'C552 ', N'Đã Thanh Toán', CAST(N'2022-12-08' AS Date), N'Quốc Thiện')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [MaKH], [TrangThaiTT], [NgayThanhToan], [NguoiThanhToan]) VALUES (N'B555 ', 1200000, N'C582 ', N'Chưa Thanh Toán', CAST(N'1900-01-01' AS Date), N'')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [MaKH], [TrangThaiTT], [NgayThanhToan], [NguoiThanhToan]) VALUES (N'B598 ', 2300000, N'C868 ', N'Đã Thanh Toán', CAST(N'2022-12-08' AS Date), N'Quốc Thiện')
GO
INSERT [dbo].[HoaDon] ([MaHD], [TongTien], [MaKH], [TrangThaiTT], [NgayThanhToan], [NguoiThanhToan]) VALUES (N'B967 ', 1800000, N'C581 ', N'Chưa Thanh Toán', CAST(N'1900-01-01' AS Date), N'')
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD209', N'1    ', 1, 2200000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD252', N'1    ', 2, 0, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD279', N'3    ', 2, 100000, N'B598 ')
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD280', N'1    ', 2, 0, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD342', N'1    ', 2, 400000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD347', N'2    ', 1, 50000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD363', N'2    ', 1, 111, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD400', N'1    ', 1, 2300000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD413', N'1    ', 2, 1400000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD418', N'1    ', 2, 1000000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD433', N'2    ', 1, 100000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD492', N'1    ', 2, 800000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD502', N'1    ', 1, 200000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD561', N'1    ', 1, 1900000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD629', N'2    ', 1, 111, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD648', N'1    ', 1, 2100000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD651', N'1    ', 2, 200000, N'B598 ')
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD657', N'1    ', 1, 200000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD778', N'7    ', 1, 100000, N'B156 ')
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD789', N'1    ', 1, 1800000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD793', N'1    ', 1, 2000000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD830', N'1    ', 2, 1200000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD932', N'1    ', 2, 1600000, NULL)
GO
INSERT [dbo].[HoaDonDV] ([MaHDDV], [MaDV], [SoLuong], [ThanhTien], [MaHD]) VALUES (N'HD938', N'1    ', 2, 600000, NULL)
GO
INSERT [dbo].[HoaDonPhong] ([MaHDPhong], [MaChiTietDP], [ThanhTien], [MaHD]) VALUES (N'HP133', N'A651 ', 2000000, N'B598 ')
GO
INSERT [dbo].[HoaDonPhong] ([MaHDPhong], [MaChiTietDP], [ThanhTien], [MaHD]) VALUES (N'HP445', N'A528 ', 4200000, N'B156 ')
GO
INSERT [dbo].[HoaDonPhong] ([MaHDPhong], [MaChiTietDP], [ThanhTien], [MaHD]) VALUES (N'HP575', N'A191 ', 1800000, N'B967 ')
GO
INSERT [dbo].[HoaDonPhong] ([MaHDPhong], [MaChiTietDP], [ThanhTien], [MaHD]) VALUES (N'HP749', N'A143 ', 1200000, N'B555 ')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [CMND], [LoaiKH], [SDT], [NgaySinh], [DiaChi], [GioiTinh], [QuocTich]) VALUES (N'C193 ', N'Nguyễn Thi B', N'323123212   ', N'Khách du lịch', N'0909876543', CAST(N'2000-03-02' AS Date), N'TP HCM', N'Nữ', N'China ')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [CMND], [LoaiKH], [SDT], [NgaySinh], [DiaChi], [GioiTinh], [QuocTich]) VALUES (N'C420 ', N'Nguyễn Trường Thịnh', N'305987625   ', N'Khách vãn lai ', N'022234123 ', CAST(N'2000-03-02' AS Date), N'Thoại Sơn', N'Nam ', N'US')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [CMND], [LoaiKH], [SDT], [NgaySinh], [DiaChi], [GioiTinh], [QuocTich]) VALUES (N'C512 ', N'Nguyễn Văn Tung', N'305987644   ', N'Khách địa phương', N'022234111 ', CAST(N'2000-03-02' AS Date), N'Gia Lai', N'Nam ', N'Canada')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [CMND], [LoaiKH], [SDT], [NgaySinh], [DiaChi], [GioiTinh], [QuocTich]) VALUES (N'C552 ', N'Nguyễn Hoàng Thắng', N'234564211   ', N'Khách địa phương', N'078833421 ', CAST(N'2000-03-02' AS Date), N'TP Bình Dương', N'Nam ', N'Korean ')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [CMND], [LoaiKH], [SDT], [NgaySinh], [DiaChi], [GioiTinh], [QuocTich]) VALUES (N'C581 ', N'Nguyễn Quốc Thiện', N'352698173   ', N'Khách du lịch', N'0789624614', CAST(N'2022-12-07' AS Date), N'An Giang', N'Nam ', N'Việt Nam ')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [CMND], [LoaiKH], [SDT], [NgaySinh], [DiaChi], [GioiTinh], [QuocTich]) VALUES (N'C582 ', N'Nguyễn Thị Ánh', N'305987699   ', N'Khách vãn lai ', N'02011111  ', CAST(N'2000-03-02' AS Date), N'Phú Thọ ', N'Nữ', N'Việt Nam ')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [CMND], [LoaiKH], [SDT], [NgaySinh], [DiaChi], [GioiTinh], [QuocTich]) VALUES (N'C785 ', N'Nguyễn Văn A', N'345678123   ', N'Khách vãn lai ', N'0789665645', CAST(N'2000-02-02' AS Date), N'Phú Hòa ', N'Nữ', N'Japan')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [CMND], [LoaiKH], [SDT], [NgaySinh], [DiaChi], [GioiTinh], [QuocTich]) VALUES (N'C868 ', N'Lê Thị Nhung', N'30598111    ', N'Khách địa phương', N'020090991 ', CAST(N'2000-03-02' AS Date), N'Phú Thọ ', N'Nữ', N'Indonesia ')
GO
INSERT [dbo].[LoaiPhong] ([Maloai], [TenLoai], [SoNguoi], [DonGia]) VALUES (N'DLX  ', N'Deluxe', 4, 1800000)
GO
INSERT [dbo].[LoaiPhong] ([Maloai], [TenLoai], [SoNguoi], [DonGia]) VALUES (N'STD  ', N'Standard', 2, 600000)
GO
INSERT [dbo].[LoaiPhong] ([Maloai], [TenLoai], [SoNguoi], [DonGia]) VALUES (N'SUP  ', N'Superior', 2, 1000000)
GO
INSERT [dbo].[LoaiPhong] ([Maloai], [TenLoai], [SoNguoi], [DonGia]) VALUES (N'SUT  ', N'Sulte', 4, 2100000)
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenDangNhap], [ChucVu], [HoTen], [CMNDNhanVien], [GioiTinh], [NgaySinhNV], [SDT], [DiaChi], [NgayVaoLam]) VALUES (N'E444 ', N'quocthien', N'Admin', N'Quốc Thiện', N'444332      ', N'Nam', CAST(N'2022-11-19' AS Date), N'01010101  ', N'An Giang', CAST(N'2022-11-19' AS Date))
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenDangNhap], [ChucVu], [HoTen], [CMNDNhanVien], [GioiTinh], [NgaySinhNV], [SDT], [DiaChi], [NgayVaoLam]) VALUES (N'E583 ', N'quochung', N'Nhân viên', N'Quốc Hùng', N'4443321     ', N'Nữ', CAST(N'2000-02-01' AS Date), N'01010001  ', N'Mỹ Thoa', CAST(N'2000-06-13' AS Date))
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenDangNhap], [ChucVu], [HoTen], [CMNDNhanVien], [GioiTinh], [NgaySinhNV], [SDT], [DiaChi], [NgayVaoLam]) VALUES (N'E649 ', N'truongthinh', N'Quản lý', N'Trường Thịnh', N'0752123466  ', N'Nam', CAST(N'2000-02-03' AS Date), N'0122456333', N'Vinh Chánh', CAST(N'2011-03-03' AS Date))
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenDangNhap], [ChucVu], [HoTen], [CMNDNhanVien], [GioiTinh], [NgaySinhNV], [SDT], [DiaChi], [NgayVaoLam]) VALUES (N'E756 ', N'hoangthang', N'Nhân viên', N'Hoàng Thắng', N'356248612   ', N'Nam', CAST(N'2022-12-01' AS Date), N'0789562431', N'An Hảo', CAST(N'2022-12-01' AS Date))
GO
INSERT [dbo].[PhieuDatPhong] ([MaPhieuDP], [MaChiTietDP], [MaPhong]) VALUES (N'B160 ', N'A143 ', N'P01  ')
GO
INSERT [dbo].[PhieuDatPhong] ([MaPhieuDP], [MaChiTietDP], [MaPhong]) VALUES (N'B171 ', N'A651 ', N'P09  ')
GO
INSERT [dbo].[PhieuDatPhong] ([MaPhieuDP], [MaChiTietDP], [MaPhong]) VALUES (N'B173 ', N'A191 ', N'P11  ')
GO
INSERT [dbo].[PhieuDatPhong] ([MaPhieuDP], [MaChiTietDP], [MaPhong]) VALUES (N'B981 ', N'A528 ', N'P07  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P01  ', N'Đã Đặt', N'STD  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P02  ', N'Trống', N'SUP  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P03  ', N'Trống', N'SUT  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P04  ', N'Trống', N'SUT  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P05  ', N'Trống', N'SUP  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P06  ', N'Trống', N'STD  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P07  ', N'Đã Đặt', N'SUT  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P08  ', N'Trống', N'STD  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P09  ', N'Đã Đặt', N'SUP  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P10  ', N'Trống', N'DLX  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P11  ', N'Đã Đặt', N'DLX  ')
GO
INSERT [dbo].[Phong] ([MaPhong], [TrangThai], [MaLoai]) VALUES (N'P12  ', N'Trống', N'DLX  ')
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email]) VALUES (N'hoangthang', N'1234', N'thang@gmail.com')
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email]) VALUES (N'quochung', N'1234', N'quochungorg@gmail.com')
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email]) VALUES (N'quocthien', N'1234', N'thang@gmail.com')
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Email]) VALUES (N'truongthinh', N'123', N'thinh@gmail.com')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__F67C8D0B81936BBC]    Script Date: 12/9/2022 10:06:30 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__C4A8C1AE5DB78B2C]    Script Date: 12/9/2022 10:06:30 PM ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[CMNDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietDatPhong_NhanVien1] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ChiTietDatPhong] CHECK CONSTRAINT [fk_ChiTietDatPhong_NhanVien1]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonDV]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonDichVu_HoaDon] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[HoaDonDV] CHECK CONSTRAINT [fk_HoaDonDichVu_HoaDon]
GO
ALTER TABLE [dbo].[HoaDonDV]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonDV_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[HoaDonDV] CHECK CONSTRAINT [fk_HoaDonDV_HoaDon]
GO
ALTER TABLE [dbo].[HoaDonPhong]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonPhong_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[HoaDonPhong] CHECK CONSTRAINT [fk_HoaDonPhong_HoaDon]
GO
ALTER TABLE [dbo].[HoaDonPhong]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonPhong_PhieuDatPhong] FOREIGN KEY([MaChiTietDP])
REFERENCES [dbo].[ChiTietDatPhong] ([MaChiTietDatPhong])
GO
ALTER TABLE [dbo].[HoaDonPhong] CHECK CONSTRAINT [fk_HoaDonPhong_PhieuDatPhong]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien_TaiKhoan] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_PhieuDatPhong_ChiTietDatPhong] FOREIGN KEY([MaChiTietDP])
REFERENCES [dbo].[ChiTietDatPhong] ([MaChiTietDatPhong])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [fk_PhieuDatPhong_ChiTietDatPhong]
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_PhieuDatPhong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [fk_PhieuDatPhong_Phong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [fk_Phong_LoaiPhong] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiPhong] ([Maloai])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [fk_Phong_LoaiPhong]
GO
