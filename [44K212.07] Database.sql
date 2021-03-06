USE [SOFTWARE_ENGINEER]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 28/3/2021 11:04:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [char](5) NOT NULL,
	[TenDichVu] [nvarchar](150) NULL,
	[LoaiDichVu] [nvarchar](150) NULL,
	[Gia] [numeric](15, 0) NULL,
	[MaTG] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanKhachHang]    Script Date: 28/3/2021 11:04:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanKhachHang](
	[MaTK] [char](5) NOT NULL,
	[TenDangNhap] [varchar](100) NULL,
	[MatKhau] [varchar](150) NULL,
	[LoaiTK] [nvarchar](50) NULL,
	[MaKH] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanQuanLy]    Script Date: 28/3/2021 11:04:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanQuanLy](
	[MaTK] [char](5) NOT NULL,
	[TenDangNhap] [varchar](100) NULL,
	[MatKhau] [varchar](150) NULL,
	[LoaiTK] [nvarchar](50) NULL,
	[MaQL] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiGian]    Script Date: 28/3/2021 11:04:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiGian](
	[MaTG] [char](5) NOT NULL,
	[NgayThue] [date] NULL,
	[ThoiGianThue] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinKhachHang]    Script Date: 28/3/2021 11:04:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinKhachHang](
	[MaKH] [char](5) NOT NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[SoDT] [varchar](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[NgayThue] [date] NULL,
	[TinhTrangThue] [nvarchar](20) NULL,
	[MaDV] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinQuanLy]    Script Date: 28/3/2021 11:04:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinQuanLy](
	[MaQL] [char](5) NOT NULL,
	[TenQuanLy] [nvarchar](100) NULL,
	[SoDT] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDichVu], [LoaiDichVu], [Gia], [MaTG]) VALUES (N'DV001', N'Win 10', N'Cài Win', CAST(150000 AS Numeric(15, 0)), N'TG001')
INSERT [dbo].[DichVu] ([MaDV], [TenDichVu], [LoaiDichVu], [Gia], [MaTG]) VALUES (N'DV002', N'Win 8', N'Cài Win', CAST(100000 AS Numeric(15, 0)), N'TG002')
INSERT [dbo].[DichVu] ([MaDV], [TenDichVu], [LoaiDichVu], [Gia], [MaTG]) VALUES (N'DV003', N'Win 7', N'Cài Win', CAST(100000 AS Numeric(15, 0)), N'TG003')
INSERT [dbo].[DichVu] ([MaDV], [TenDichVu], [LoaiDichVu], [Gia], [MaTG]) VALUES (N'DV004', N'Laptop', N'Vệ Sinh', CAST(125000 AS Numeric(15, 0)), N'TG004')
INSERT [dbo].[DichVu] ([MaDV], [TenDichVu], [LoaiDichVu], [Gia], [MaTG]) VALUES (N'DV005', N'PC', N'Vệ Sinh', CAST(250000 AS Numeric(15, 0)), N'TG005')
INSERT [dbo].[DichVu] ([MaDV], [TenDichVu], [LoaiDichVu], [Gia], [MaTG]) VALUES (N'DV006', N'Office 2016', N'Cài Phần Mềm', CAST(90000 AS Numeric(15, 0)), N'TG006')
INSERT [dbo].[DichVu] ([MaDV], [TenDichVu], [LoaiDichVu], [Gia], [MaTG]) VALUES (N'DV007', N'Office 2019', N'Cài Phần Mềm', CAST(90000 AS Numeric(15, 0)), N'TG007')
INSERT [dbo].[DichVu] ([MaDV], [TenDichVu], [LoaiDichVu], [Gia], [MaTG]) VALUES (N'DV008', N'Laptop', N'Sửa chữa', CAST(750000 AS Numeric(15, 0)), N'TG008')
INSERT [dbo].[DichVu] ([MaDV], [TenDichVu], [LoaiDichVu], [Gia], [MaTG]) VALUES (N'DV009', N'PC', N'Sửa chữa', CAST(500000 AS Numeric(15, 0)), N'TG009')
GO
INSERT [dbo].[TaiKhoanKhachHang] ([MaTK], [TenDangNhap], [MatKhau], [LoaiTK], [MaKH]) VALUES (N'TK001', N'kh1', N'12345', N'Khách Hàng', N'KH001')
INSERT [dbo].[TaiKhoanKhachHang] ([MaTK], [TenDangNhap], [MatKhau], [LoaiTK], [MaKH]) VALUES (N'TK002', N'kh2', N'12345', N'Khách Hàng', N'KH003')
INSERT [dbo].[TaiKhoanKhachHang] ([MaTK], [TenDangNhap], [MatKhau], [LoaiTK], [MaKH]) VALUES (N'TK003', N'kh3', N'12345', N'Khách Hàng', N'KH002')
GO
INSERT [dbo].[TaiKhoanQuanLy] ([MaTK], [TenDangNhap], [MatKhau], [LoaiTK], [MaQL]) VALUES (N'TK001', N'ql1', N'12345', N'Quản Lý', N'QL001')
GO
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG001', CAST(N'2021-03-28' AS Date), CAST(N'08:45:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG002', CAST(N'2021-03-22' AS Date), CAST(N'14:30:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG003', CAST(N'2021-03-05' AS Date), CAST(N'09:32:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG004', CAST(N'2020-07-11' AS Date), CAST(N'10:11:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG005', CAST(N'2020-08-12' AS Date), CAST(N'07:50:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG006', CAST(N'2020-11-25' AS Date), CAST(N'15:37:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG007', CAST(N'2021-01-09' AS Date), CAST(N'16:12:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG008', CAST(N'2021-02-10' AS Date), CAST(N'10:02:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG009', CAST(N'2021-03-05' AS Date), CAST(N'14:52:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG010', CAST(N'2020-05-08' AS Date), CAST(N'08:56:00' AS Time))
INSERT [dbo].[ThoiGian] ([MaTG], [NgayThue], [ThoiGianThue]) VALUES (N'TG011', CAST(N'2021-03-29' AS Date), CAST(N'09:47:00' AS Time))
GO
INSERT [dbo].[ThongTinKhachHang] ([MaKH], [TenKhachHang], [SoDT], [DiaChi], [NgayThue], [TinhTrangThue], [MaDV]) VALUES (N'KH001', N'Nguyễn Đăng Chiến', N'0931971871', N'48 Huyền Trân Công Chúa', CAST(N'2021-03-05' AS Date), N'Xong', N'DV003')
INSERT [dbo].[ThongTinKhachHang] ([MaKH], [TenKhachHang], [SoDT], [DiaChi], [NgayThue], [TinhTrangThue], [MaDV]) VALUES (N'KH002', N'Phan Bảo Phúc', N'0964119049', N'75 Hoa Phượng1, Sơn Trà, Đà Nẵng', CAST(N'2021-01-09' AS Date), N'Xong', N'DV007')
INSERT [dbo].[ThongTinKhachHang] ([MaKH], [TenKhachHang], [SoDT], [DiaChi], [NgayThue], [TinhTrangThue], [MaDV]) VALUES (N'KH003', N'Nguyễn Hữu Hiếu Thiên', N'0941549225', N'K39/3 Trương Chí Cương, Hải Châu, Đà Nẵng', CAST(N'2021-03-28' AS Date), N'Đang', N'DV001')
INSERT [dbo].[ThongTinKhachHang] ([MaKH], [TenKhachHang], [SoDT], [DiaChi], [NgayThue], [TinhTrangThue], [MaDV]) VALUES (N'KH004', N'Nguyễn Công Năm', N'0915561541', N'32 Điện Biên Phủ, Thanh Khê, Đà Nẵng', CAST(N'2020-11-25' AS Date), N'Xong', N'DV006')
GO
INSERT [dbo].[ThongTinQuanLy] ([MaQL], [TenQuanLy], [SoDT]) VALUES (N'QL001', N'Nguyễn Công Nam', N'0951248162')
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD FOREIGN KEY([MaTG])
REFERENCES [dbo].[ThoiGian] ([MaTG])
GO
ALTER TABLE [dbo].[TaiKhoanKhachHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[ThongTinKhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[TaiKhoanQuanLy]  WITH CHECK ADD FOREIGN KEY([MaQL])
REFERENCES [dbo].[ThongTinQuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[ThongTinKhachHang]  WITH CHECK ADD FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
