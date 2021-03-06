USE [master]
GO
/****** Object:  Database [QLyThueNha03]    Script Date: 04-Oct-19 8:16:04 PM ******/
CREATE DATABASE [QLyThueNha03]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLyThueNha03', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QLyThueNha03.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLyThueNha03_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QLyThueNha03_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLyThueNha03] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLyThueNha03].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLyThueNha03] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLyThueNha03] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLyThueNha03] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLyThueNha03] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLyThueNha03] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLyThueNha03] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLyThueNha03] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLyThueNha03] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLyThueNha03] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLyThueNha03] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLyThueNha03] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLyThueNha03] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLyThueNha03] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLyThueNha03] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLyThueNha03] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLyThueNha03] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLyThueNha03] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLyThueNha03] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLyThueNha03] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLyThueNha03] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLyThueNha03] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLyThueNha03] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLyThueNha03] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLyThueNha03] SET  MULTI_USER 
GO
ALTER DATABASE [QLyThueNha03] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLyThueNha03] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLyThueNha03] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLyThueNha03] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLyThueNha03] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLyThueNha03] SET QUERY_STORE = OFF
GO
USE [QLyThueNha03]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QLyThueNha03]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[idChiNhanh] [int] NOT NULL,
	[dChi] [nvarchar](256) NULL,
	[dThoai] [nvarchar](14) NULL,
	[sFax] [nvarchar](14) NULL,
	[tTrang] [int] NULL,
 CONSTRAINT [PK_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[idChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuNha](
	[idChuNha] [int] NOT NULL,
	[tenCN] [nvarchar](128) NULL,
	[dChi] [nvarchar](256) NULL,
	[dThoai] [nvarchar](14) NULL,
	[Pass] [nvarchar](128) NULL,
	[tKhoan] [nvarchar](128) NULL,
	[tTrang] [int] NULL,
 CONSTRAINT [PK_ChuNha] PRIMARY KEY CLUSTERED 
(
	[idChuNha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNha](
	[idLoaiNha] [int] NOT NULL,
	[tenLoaiNha] [nvarchar](128) NULL,
	[tTrang] [int] NULL,
 CONSTRAINT [PK_LoaiNha] PRIMARY KEY CLUSTERED 
(
	[idLoaiNha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiThue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiThue](
	[idNguoiThue] [int] NOT NULL,
	[tenNT] [nvarchar](128) NULL,
	[dChi] [nvarchar](256) NULL,
	[dThoai] [nvarchar](14) NULL,
	[idChiNhanh] [int] NULL,
	[tKhoan] [nvarchar](128) NULL,
	[Pass] [nvarchar](128) NULL,
	[tTrang] [nvarchar](32) NULL,
 CONSTRAINT [PK_NguoiThue] PRIMARY KEY CLUSTERED 
(
	[idNguoiThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nha](
	[idNha] [int] NOT NULL,
	[dChi] [nvarchar](256) NULL,
	[soPhong] [int] NULL,
	[tienthue1Thang] [float] NULL,
	[idLoaiNha] [int] NULL,
	[idChuNha] [int] NULL,
	[idNhanVien] [int] NULL,
	[idChiNhanh] [int] NULL,
	[tTrang] [int] NULL,
 CONSTRAINT [PK_Nha] PRIMARY KEY CLUSTERED 
(
	[idNha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[idNhanVien] [int] NOT NULL,
	[tenNV] [nvarchar](128) NULL,
	[dChi] [nvarchar](256) NULL,
	[dThoai] [nvarchar](14) NULL,
	[gtinh] [nvarchar](4) NULL,
	[ngSinh] [datetime] NULL,
	[Luong] [float] NULL,
	[idChiNhanh] [int] NULL,
	[tKhoan] [nvarchar](128) NULL,
	[Pass] [nvarchar](128) NULL,
	[tTrang] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[idNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thue](
	[idNguoiThue] [int] NOT NULL,
	[idNha] [int] NOT NULL,
	[ngXem] [datetime] NULL,
	[nhanXet] [nvarchar](256) NULL,
	[tinhtrangThue] [nvarchar](256) NULL,
	[tTrang] [int] NULL,
 CONSTRAINT [PK_Thue] PRIMARY KEY CLUSTERED 
(
	[idNguoiThue] ASC,
	[idNha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiNhanh] ([idChiNhanh], [dChi], [dThoai], [sFax], [tTrang]) VALUES (1, N'123 Điện Biên Phủ', N'23123', N'324234', 1)
INSERT [dbo].[ChiNhanh] ([idChiNhanh], [dChi], [dThoai], [sFax], [tTrang]) VALUES (2, N'123 CMT8', N'23123', N'324234', 1)
INSERT [dbo].[ChuNha] ([idChuNha], [tenCN], [dChi], [dThoai], [Pass], [tKhoan], [tTrang]) VALUES (1, N'Châu', N'asd', N'324234', N'123456', N'Chau', 1)
INSERT [dbo].[ChuNha] ([idChuNha], [tenCN], [dChi], [dThoai], [Pass], [tKhoan], [tTrang]) VALUES (2, N'Linh', N'dwdw', N'324234', N'123456', N'Linh', 1)
INSERT [dbo].[ChuNha] ([idChuNha], [tenCN], [dChi], [dThoai], [Pass], [tKhoan], [tTrang]) VALUES (3, N'Ngô Lê Kim', N'asdwe', N'012312315', N'123456', N'Kim', 1)
INSERT [dbo].[ChuNha] ([idChuNha], [tenCN], [dChi], [dThoai], [Pass], [tKhoan], [tTrang]) VALUES (4, N'Ngô Lê Lam', N'asdwe', N'012312315', N'123456', N'Lam', 1)
INSERT [dbo].[ChuNha] ([idChuNha], [tenCN], [dChi], [dThoai], [Pass], [tKhoan], [tTrang]) VALUES (5, N'Ngô Lê KimMinh', N'asdwe', N'012312315', N'123456', N'KimMinh', 2)
INSERT [dbo].[ChuNha] ([idChuNha], [tenCN], [dChi], [dThoai], [Pass], [tKhoan], [tTrang]) VALUES (6, N'tamcn', N'123 dien bien phu', N'987654321', N'123456', N'tamcn@gmail.com', 1)
INSERT [dbo].[LoaiNha] ([idLoaiNha], [tenLoaiNha], [tTrang]) VALUES (1, N'Nhà Cấp 1', 1)
INSERT [dbo].[LoaiNha] ([idLoaiNha], [tenLoaiNha], [tTrang]) VALUES (2, N'Nhà Cấp 2', 1)
INSERT [dbo].[LoaiNha] ([idLoaiNha], [tenLoaiNha], [tTrang]) VALUES (3, N'Nhà Cấp 3', 1)
INSERT [dbo].[NguoiThue] ([idNguoiThue], [tenNT], [dChi], [dThoai], [idChiNhanh], [tKhoan], [Pass], [tTrang]) VALUES (1, N'Qúy pede', N'asaaaadwe', N'01231212315', 1, N'Quy', N'123456', N'1')
INSERT [dbo].[NguoiThue] ([idNguoiThue], [tenNT], [dChi], [dThoai], [idChiNhanh], [tKhoan], [Pass], [tTrang]) VALUES (2, N'Như', N'asdasd', N'32429834', 1, N'Nhu', N'123456', N'1')
INSERT [dbo].[NguoiThue] ([idNguoiThue], [tenNT], [dChi], [dThoai], [idChiNhanh], [tKhoan], [Pass], [tTrang]) VALUES (3, N'Ngô Ngọc Khải', N'asdwe', N'012312315', 1, N'Khai', N'123456', N'1')
INSERT [dbo].[NguoiThue] ([idNguoiThue], [tenNT], [dChi], [dThoai], [idChiNhanh], [tKhoan], [Pass], [tTrang]) VALUES (4, N'Ngô Ngọc Phong', N'asdwe', N'012312315', 2, N'Phong', N'123456', N'1')
INSERT [dbo].[NguoiThue] ([idNguoiThue], [tenNT], [dChi], [dThoai], [idChiNhanh], [tKhoan], [Pass], [tTrang]) VALUES (5, N'Ngô Ngọc Lan', N'asdwe', N'012312315', 1, N'Lan', N'123456', N'1')
INSERT [dbo].[NguoiThue] ([idNguoiThue], [tenNT], [dChi], [dThoai], [idChiNhanh], [tKhoan], [Pass], [tTrang]) VALUES (6, N'Ngô Ngọc Phong', N'asdwe', N'012312315', 2, N'Minh', N'123456', N'2')
INSERT [dbo].[NguoiThue] ([idNguoiThue], [tenNT], [dChi], [dThoai], [idChiNhanh], [tKhoan], [Pass], [tTrang]) VALUES (7, N'tam', N'123 dien bien phu', N'123456789', 1, N'tam@gmail.com', N'123456', N'1')
INSERT [dbo].[Nha] ([idNha], [dChi], [soPhong], [tienthue1Thang], [idLoaiNha], [idChuNha], [idNhanVien], [idChiNhanh], [tTrang]) VALUES (1, N'23 vÕ VĂN KỆT', 5, 3231, 1, 1, 1, 1, 1)
INSERT [dbo].[Nha] ([idNha], [dChi], [soPhong], [tienthue1Thang], [idLoaiNha], [idChuNha], [idNhanVien], [idChiNhanh], [tTrang]) VALUES (2, N'125 Lê Văn Sĩ', 3, 1100, 3, 2, 2, 1, 0)
INSERT [dbo].[Nha] ([idNha], [dChi], [soPhong], [tienthue1Thang], [idLoaiNha], [idChuNha], [idNhanVien], [idChiNhanh], [tTrang]) VALUES (3, N'125 Lê Văn Tám', 3, 1400, 2, 1, 1, 1, 1)
INSERT [dbo].[Nha] ([idNha], [dChi], [soPhong], [tienthue1Thang], [idLoaiNha], [idChuNha], [idNhanVien], [idChiNhanh], [tTrang]) VALUES (4, N'321 LÊ VĂN', 3, 1231, 2, 1, 2, 1, 1)
INSERT [dbo].[Nha] ([idNha], [dChi], [soPhong], [tienthue1Thang], [idLoaiNha], [idChuNha], [idNhanVien], [idChiNhanh], [tTrang]) VALUES (5, N'322 HẦU VĂN', 3, 1231, 2, 1, 2, 1, 1)
INSERT [dbo].[Nha] ([idNha], [dChi], [soPhong], [tienthue1Thang], [idLoaiNha], [idChuNha], [idNhanVien], [idChiNhanh], [tTrang]) VALUES (6, N'321 CMT8', 11, 13230, 1, 6, 2, 1, 1)
INSERT [dbo].[NhanVien] ([idNhanVien], [tenNV], [dChi], [dThoai], [gtinh], [ngSinh], [Luong], [idChiNhanh], [tKhoan], [Pass], [tTrang]) VALUES (1, N'Thúy', N'asdasd', N'32429834', N'Nữ', CAST(N'2017-11-12T00:00:00.000' AS DateTime), 2500, 1, N'Thuy', N'123456', 1)
INSERT [dbo].[NhanVien] ([idNhanVien], [tenNV], [dChi], [dThoai], [gtinh], [ngSinh], [Luong], [idChiNhanh], [tKhoan], [Pass], [tTrang]) VALUES (2, N'Hải', N'asdasd', N'32429834', N'Nam', CAST(N'2017-11-12T00:00:00.000' AS DateTime), 2500, 1, N'Hai', N'123456', 2)
INSERT [dbo].[Thue] ([idNguoiThue], [idNha], [ngXem], [nhanXet], [tinhtrangThue], [tTrang]) VALUES (1, 4, CAST(N'2019-09-26T00:00:00.000' AS DateTime), N'Nhà sạch đẹp', N'Đã thuê', 1)
INSERT [dbo].[Thue] ([idNguoiThue], [idNha], [ngXem], [nhanXet], [tinhtrangThue], [tTrang]) VALUES (2, 1, CAST(N'2019-09-26T00:00:00.000' AS DateTime), N'Nhà sạch đẹp', N'Đã thuê', 1)
INSERT [dbo].[Thue] ([idNguoiThue], [idNha], [ngXem], [nhanXet], [tinhtrangThue], [tTrang]) VALUES (2, 3, CAST(N'2019-09-26T00:00:00.000' AS DateTime), N'Nhà sạch đẹp', N'Đang chờ thuê', 1)
INSERT [dbo].[Thue] ([idNguoiThue], [idNha], [ngXem], [nhanXet], [tinhtrangThue], [tTrang]) VALUES (7, 5, CAST(N'2019-10-04T00:00:00.000' AS DateTime), N'Đẹp, rẻ', N'Đang chờ thuê', 1)
INSERT [dbo].[Thue] ([idNguoiThue], [idNha], [ngXem], [nhanXet], [tinhtrangThue], [tTrang]) VALUES (7, 6, CAST(N'2019-10-02T00:00:00.000' AS DateTime), N'Xanh sạch đẹp', N'Đang chờ thuê', 1)
ALTER TABLE [dbo].[NguoiThue]  WITH CHECK ADD  CONSTRAINT [FK_NguoiThue_ChiNhanh] FOREIGN KEY([idChiNhanh])
REFERENCES [dbo].[ChiNhanh] ([idChiNhanh])
GO
ALTER TABLE [dbo].[NguoiThue] CHECK CONSTRAINT [FK_NguoiThue_ChiNhanh]
GO
ALTER TABLE [dbo].[Nha]  WITH CHECK ADD  CONSTRAINT [FK_Nha_ChiNhanh] FOREIGN KEY([idChiNhanh])
REFERENCES [dbo].[ChiNhanh] ([idChiNhanh])
GO
ALTER TABLE [dbo].[Nha] CHECK CONSTRAINT [FK_Nha_ChiNhanh]
GO
ALTER TABLE [dbo].[Nha]  WITH CHECK ADD  CONSTRAINT [FK_Nha_ChuNha] FOREIGN KEY([idChuNha])
REFERENCES [dbo].[ChuNha] ([idChuNha])
GO
ALTER TABLE [dbo].[Nha] CHECK CONSTRAINT [FK_Nha_ChuNha]
GO
ALTER TABLE [dbo].[Nha]  WITH CHECK ADD  CONSTRAINT [FK_Nha_LoaiNha] FOREIGN KEY([idLoaiNha])
REFERENCES [dbo].[LoaiNha] ([idLoaiNha])
GO
ALTER TABLE [dbo].[Nha] CHECK CONSTRAINT [FK_Nha_LoaiNha]
GO
ALTER TABLE [dbo].[Nha]  WITH CHECK ADD  CONSTRAINT [FK_Nha_NhanVien] FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[NhanVien] ([idNhanVien])
GO
ALTER TABLE [dbo].[Nha] CHECK CONSTRAINT [FK_Nha_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChiNhanh] FOREIGN KEY([idChiNhanh])
REFERENCES [dbo].[ChiNhanh] ([idChiNhanh])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChiNhanh]
GO
ALTER TABLE [dbo].[Thue]  WITH CHECK ADD  CONSTRAINT [FK_Thue_NguoiThue] FOREIGN KEY([idNguoiThue])
REFERENCES [dbo].[NguoiThue] ([idNguoiThue])
GO
ALTER TABLE [dbo].[Thue] CHECK CONSTRAINT [FK_Thue_NguoiThue]
GO
ALTER TABLE [dbo].[Thue]  WITH CHECK ADD  CONSTRAINT [FK_Thue_Nha] FOREIGN KEY([idNha])
REFERENCES [dbo].[Nha] ([idNha])
GO
ALTER TABLE [dbo].[Thue] CHECK CONSTRAINT [FK_Thue_Nha]
GO
/****** Object:  StoredProcedure [dbo].[dangNhap]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[dangNhap]
@tKhoan nvarchar(50),
@PASS nvarchar(100),
@out nvarchar(1000) output
AS 
BEGIN TRAN
	BEGIN TRY
	Declare @num int;
	--Để check lỗi
	declare @loai int
	declare @loaiChu nvarchar(50)
	
	IF EXISTS(SELECT * FROM NguoiThue WHERE tKhoan = @tKhoan ) BEGIN			set @loai = 1			set @loaiChu = N'NGƯỜI THUÊ'	END
	IF  EXISTS(SELECT * FROM ChuNha WHERE tKhoan = @tKhoan ) BEGIN			set @loai = 2			set @loaiChu = N'CHỦ NHÀ'	END
		IF  EXISTS(SELECT * FROM NhanVien WHERE tKhoan = @tKhoan) BEGIN			set @loai = 3			set @loaiChu = N'NHÂN VIÊN'	END

	IF EXISTS(SELECT * FROM NguoiThue WHERE tKhoan = @tKhoan and Pass =@PASS and tTrang !=0) OR EXISTS(SELECT * FROM ChuNha WHERE tKhoan = @tKhoan and Pass =@PASS and tTrang !=0) OR EXISTS(SELECT * FROM NhanVien WHERE tKhoan = @tKhoan and Pass =@PASS and tTrang !=0) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' ĐĂNG NHẬP THÀNH CÔNG!!!'			set @out = N'1,'+ CAST( @loai as varchar(20))+N', TÀI KHOẢNG '+@loaiChu+N': '+@tKhoan +N' ĐĂNG NHẬP THÀNH CÔNG!!!' 			ROLLBACK TRAN			RETURN 1	END
	IF EXISTS(SELECT * FROM NguoiThue WHERE tKhoan = @tKhoan and Pass !=@PASS and tTrang !=0) OR EXISTS(SELECT * FROM ChuNha WHERE tKhoan = @tKhoan and Pass !=@PASS and tTrang !=0) OR EXISTS(SELECT * FROM NhanVien WHERE tKhoan = @tKhoan and Pass !=@PASS and tTrang !=0) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' SAI MẬT KHẨU!!!'			set @out = N'0, TÀI KHOẢNG: '+@tKhoan +N' SAI MẬT KHẨU!!!' 			ROLLBACK TRAN			RETURN 0	END
		IF EXISTS(SELECT * FROM NguoiThue WHERE tKhoan != @tKhoan ) AND EXISTS(SELECT * FROM ChuNha WHERE tKhoan != @tKhoaN) AND EXISTS(SELECT * FROM NhanVien WHERE tKhoan != @tKhoan) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' KHÔNG TỒN TẠI!!!'			set @out = N'0, TÀI KHOẢNG: '+@tKhoan +N' KHÔNG TỒN TẠI!!!'			ROLLBACK TRAN			RETURN 0	END
		IF EXISTS(SELECT * FROM NguoiThue WHERE tKhoan = @tKhoan and Pass =@PASS and tTrang =0) OR EXISTS(SELECT * FROM ChuNha WHERE tKhoan = @tKhoan and Pass =@PASS and tTrang =0) OR EXISTS(SELECT * FROM NhanVien WHERE tKhoan = @tKhoan and Pass =@PASS and tTrang =0) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' ĐĂNG NHẬP THÀNH CÔNG!!!'			set @out = N'0, TÀI KHOẢNG: '+@tKhoan +N' ĐÃ BỊ XÓA!!!' 			ROLLBACK TRAN			RETURN 0	END
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		set @out =  N'0, LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[dkChuNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[dkChuNha]
@tKhoan nvarchar(50),
@PASS nvarchar(100),
@hTen nvarchar(50),
@dChi nvarchar(255),
@SDT nvarchar(15),
@out nvarchar(100) output
AS 
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
BEGIN TRAN
	BEGIN TRY
	Declare @num int;
	--Để check lỗi
	IF EXISTS(SELECT * FROM NguoiThue WHERE tKhoan = @tKhoan ) OR EXISTS(SELECT * FROM ChuNha WHERE tKhoan = @tKhoan ) OR EXISTS(SELECT * FROM NhanVien WHERE tKhoan = @tKhoan ) BEGIN
			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'
			set @out =  N'0, TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'
			ROLLBACK TRAN
			RETURN 0
	END
	--Để code
	SET @num = (select MAX(idChuNha) from ChuNha)
	SET @num = @num + 1
	INSERT INTO ChuNha
	values(@num,@hTen, @dChi, @SDT,@PASS, @tKhoan,2);
	set @out =  N'1, TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ THÊM THÀNH CÔNG!!!'
	--Để bắt các lỗi hệ thống
	END TRY
	BEGIN CATCH
		--PRINT N'LỖI HỆ THỐNG'
		set @out =  N'0, LỖI HỆ THỐNG'
		ROLLBACK TRAN
	END CATCH
COMMIT TRAN
RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[dkNguoiThue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[dkNguoiThue]
@tKhoan nvarchar(50),
@PASS nvarchar(100),
@hTen nvarchar(50),
@dChi nvarchar(255),
@SDT nvarchar(15),
@out nvarchar(100) output
AS
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

BEGIN TRAN
	BEGIN TRY
	Declare @num int;
	--Để check lỗi
	declare @num2 int;
	IF EXISTS(SELECT * FROM NguoiThue WITH (XLOCK)  WHERE tKhoan = @tKhoan ) OR EXISTS(SELECT * FROM ChuNha WITH (XLOCK)  WHERE tKhoan = @tKhoan ) OR EXISTS(SELECT * FROM NhanVien WITH (XLOCK)  WHERE tKhoan = @tKhoan ) BEGIN
			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'
			set @out =  N'0, TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'
			ROLLBACK TRAN
			RETURN 0
	END
	--Để code
	SET @num = (select MAX(idNguoiThue) from NguoiThue)
	SET @num2 = (select MAX(idChiNhanh) from ChiNhanh)
	SET @num = @num + 1
	INSERT INTO NguoiThue
	values(@num,@hTen, @dChi, @SDT,@num2, @tKhoan,@PASS,2);
	set @out =  N'1, TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ THÊM THÀNH CÔNG!!!'
	--Để bắt các lỗi hệ thống
	END TRY
	BEGIN CATCH
		--PRINT N'LỖI HỆ THỐNG'
		set @out =  N'0, LỖI HỆ THỐNG'
		ROLLBACK TRAN
	END CATCH
COMMIT TRAN
RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[loaiNguoiDung]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[loaiNguoiDung]
@tKhoan nvarchar(50),
@out int output
AS 
BEGIN TRAN
	BEGIN TRY
	Declare @num int;
	--Để check lỗi
	IF EXISTS(SELECT * FROM NguoiThue WHERE tKhoan = @tKhoan ) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'			set @out = 1			--set @out = N'1, TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!' 			ROLLBACK TRAN			RETURN 1	END
	IF  EXISTS(SELECT * FROM ChuNha WHERE tKhoan = @tKhoan ) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ CHỦ NHÀ!!!'			set @out = 2			--set @out = N'2, TÀI KHOẢNG: '+@tKhoan +N' CHỦ NHÀ!!!' 			ROLLBACK TRAN			RETURN 2	END
		IF  EXISTS(SELECT * FROM NhanVien WHERE tKhoan != @tKhoan) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NHÂN VIÊN!!!'			set @out = 3			--set @out = N'3, TÀI KHOẢNG: '+@tKhoan +N' LÀ NHÂN VIÊN!!!'			ROLLBACK TRAN			RETURN 3	END
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		set @out = 0		--set @out =  N'0, LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[suaChuNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[suaChuNha]
@tKhoan nvarchar(50),
@hTen nvarchar(50),
@dChi nvarchar(255),
@SDT nvarchar(15),
@out nvarchar(100) output
AS 
BEGIN TRAN
	BEGIN TRY
	Declare @num int;
	--Để check lỗi
	IF EXISTS(SELECT * FROM ChuNha WHERE tKhoan != @tKhoan and dThoai = @SDT and tTrang !=0)  BEGIN			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'			set @out =  N'0, SỐ ĐIỆN THOẠI NÀY ĐÃ TỒN TẠI!!!'			ROLLBACK TRAN			RETURN 0	END
	--Để code
	UPDATE ChuNha
	set tenCN = @hTen, dChi = @dChi, dThoai = @SDT
	where tKhoan = @tKhoan
	set @out =  N'1, TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ SỬA THÀNH CÔNG!!!'

	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		set @out =  N'0, LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[suaNguoiThue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[suaNguoiThue]
@tKhoan nvarchar(50),
@hTen nvarchar(50),
@dChi nvarchar(255),
@SDT nvarchar(15),
@out nvarchar(100) output
AS 
BEGIN TRAN
	BEGIN TRY
	
	--Để check lỗi
	IF EXISTS(SELECT * FROM NguoiThue WHERE dThoai = @SDT and tKhoan !=@tKhoan and tTrang !=0)  BEGIN			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'			set @out =  N'0, SỐ ĐIỆN THOẠI NÀY ĐÃ TỒN TẠI!!!'			ROLLBACK TRAN			RETURN 0	END
	--Để code
	
	UPDATE NguoiThue
	set tenNT = @hTen, dChi = @dChi, dThoai = @SDT
	where tKhoan = @tKhoan
	set @out =  N'1, TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ SỬA THÀNH CÔNG!!!'
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		set @out =  N'0, LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[suaNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc  [dbo].[suaNha]
@idNha int,
@dChi nvarchar(50),
@soPhong int,
@tienThue int,
@idLoaiNha int,
@out nvarchar(100) output
AS
BEGIN TRAN
	BEGIN TRY
	Declare @num int;
	--Để check lỗi
	IF EXISTS(SELECT * FROM Nha WHERE dChi = @dChi and idNha !=@idNha  and tTrang !=0) BEGIN			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'			set @out =  N'0, ĐIA CHI: '+@dChi +N' NÀY ĐÃ TỒN TẠI!!!'			ROLLBACK TRAN			RETURN 0	END
	--Để code
	update Nha
	SET dChi = @dChi, soPhong =@soPhong, tienthue1Thang =@tienThue, idLoaiNha =@idLoaiNha
	where idNha = @idNha
	set @out =  N'1, ĐÃ SỬA NHÀ Ở: '+@dChi +N' NÀY ĐÃ THÊM THÀNH CÔNG!!!'
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		set @out =  N'0, LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[themNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[themNha]
@dChi nvarchar(50),
@soPhong int,
@tienThue int,
@idLoaiNha int,
@tkChuNha nvarchar(25),
@out nvarchar(100) output
AS
BEGIN TRAN
	BEGIN TRY
	Declare @num int;
	Declare @idChuNha int;
	Declare @idNV int;
	Declare @idCN int;
	SET @idNV =  (select max(idNhanVien) from NhanVien)
	SET @idCN =  (select max(idChiNhanh) from NhanVien)
	SET @idChuNha = (SELECT idChuNha from ChuNha where tKhoan = @tkChuNha)
	--Để check lỗi
	IF EXISTS(SELECT * FROM Nha WITH (XLOCK)  WHERE dChi = @dChi and tTrang !=0) BEGIN
			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'
			set @out =  N'0, ĐIA CHI: '+@dChi +N' NÀY ĐÃ TỒN TẠI!!!'
			ROLLBACK TRAN
			RETURN 0
	END
	IF EXISTS(SELECT * FROM ChuNha where tKhoan = @tkChuNha and tTrang !=1) BEGIN
			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'
			set @out =  N'0, TÀI KHOẢN: '+@tkChuNha +N' CHƯA ĐƯỢC XÁC NHẬN HAY BỊ XÓA, KHÔNG THỂ THÊM NHÀ ĐƯỢC!!!'
			ROLLBACK TRAN
			RETURN 0
	END
	
	--Để code
	SET @num = (select MAX(idNha) from Nha)
	SET @num = @num + 1
	INSERT INTO Nha
	values(@num,@dChi, @soPhong, @tienThue,@idLoaiNha, @idChuNha, @idNV,@idCN,2);
	set @out =  N'1, ĐÃ THÊM NHÀ Ở: '+@dChi +N' NÀY ĐÃ THÊM THÀNH CÔNG!!!'
	--Để bắt các lỗi hệ thống
	END TRY
	BEGIN CATCH
		--PRINT N'LỖI HỆ THỐNG'
		set @out =  N'0, LỖI HỆ THỐNG'
		ROLLBACK TRAN
	END CATCH
COMMIT TRAN
RETURN 1

GO
/****** Object:  StoredProcedure [dbo].[themThue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[themThue]
@tkNguoiThue nvarchar(50),
@idNha int,
@nhanXet nvarchar(500),
@out nvarchar(200) output
AS
BEGIN TRAN
	BEGIN TRY
	Declare @idNguoiThue int;
	Declare @idNV int;
	Declare @idCN int;
	Declare @dChi nvarchar(150);
	SET @idNguoiThue =  (select idNguoiThue from NguoiThue where tKhoan = @tkNguoiThue)
	SET @dChi =  (select dChi from Nha where idNha = @idNha)
	--Để check lỗi
	IF EXISTS(SELECT * FROM Thue where idNguoiThue = @idNguoiThue and idNha = @idNha and tinhtrangThue != N'Hủy thuê' ) BEGIN			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'			set @out =  N'0, GIAO DỊCH NÀY ĐÃ TỒN TẠI!!!'			ROLLBACK TRAN			RETURN 0	END
	ELSE IF EXISTS(SELECT * FROM Thue where idNguoiThue = @idNguoiThue and idNha = @idNha and tinhtrangThue = N'Hủy thuê' ) BEGIN			UPDATE Thue			set tinhtrangThue = N'Đang chờ thuê'			where idNguoiThue = @idNguoiThue and idNha = @idNha			set @out =  N'1, ĐÃ THUÊ THÀNH CÔNG!!!'			COMMIT TRAN			RETURN 1	END
	ELSE IF EXISTS(SELECT * FROM Thue where  idNha = @idNha AND tinhtrangThue = N'Đã thuê') BEGIN			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'			set @out =  N'0, NHÀ  NÀY ĐÃ ĐƯỢC THUÊ!!!'			ROLLBACK TRAN			RETURN -1	END

	ELSE IF EXISTS(SELECT * FROM Nha where  idNha = @idNha AND tTrang =0 ) BEGIN			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'			set @out =  N'0, NHÀ  NÀY ĐÃ BỊ XÓA!!!'			ROLLBACK TRAN			RETURN -2	END
	ELSE IF EXISTS(SELECT * FROM Nha where  idNha = @idNha AND tTrang =2 ) BEGIN			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'			set @out =  N'0, NHÀ NÀY CHƯA ĐƯỢC XÁC NHẬN !'			ROLLBACK TRAN			RETURN -3	END
	ELSE IF EXISTS(SELECT * FROM NguoiThue where  idNguoiThue = @idNguoiThue AND tTrang =0 ) BEGIN			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'			set @out =  N'0, NGƯỜI DÙNG NÀY ĐÃ BỊ XÓA, KHÔNG THỂ THUÊ !'			ROLLBACK TRAN			RETURN -4	END

	ELSE IF EXISTS(SELECT * FROM NguoiThue where  idNguoiThue = @idNguoiThue AND tTrang =2 ) BEGIN			--PRINT N'TÀI KHOẢNG: '+@tKhoan +N' NÀY ĐÃ TỒN TẠI!!!'			set @out =  N'0, NGƯỜI DÙNG NÀY CHƯA ĐƯỢC XÁC NHẬN, KHÔNG THỂ THUÊ !'			ROLLBACK TRAN			RETURN -5	END
	--Để code
	INSERT INTO Thue
	values(@idNguoiThue,@idNha, CONVERT (date, GETDATE()), @nhanXet , N'Đang chờ thuê', 1);
	set @out =  N'1, ĐÃ CHỌN THUÊ THÀNH CÔNG NHÀ: '+@dChi +N' NÀY, BẠN HÃY CHỜ XÁC NHẬN VÀ LIÊN HỆ VỚI NHÂN VIÊN ĐỂ LÀM THỦ TỤC'
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		set @out =  N'0, LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 1
GO
/****** Object:  StoredProcedure [dbo].[xacNhanNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xacNhanNha]
@idNha int,
@tKhoanNV nvarchar(50),
@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @num int;
	Declare @idCN int;
	Declare @idNV int;
	Declare @diachi nvarchar(200);
	 set @idCN = (select idChiNhanh from NhanVien Where tKhoan = @tKhoanNV)
	 set @idNV = (select idNhanVien from NhanVien Where tKhoan = @tKhoanNV)
	 --set @idChuNha = (select idChiNhanh from NhanVien Where tKhoan = @tKhoanNV)
	 set @diachi = (select dChi from Nha Where idNha = @idNha)
	--Để check lỗi
	IF EXISTS(SELECT * FROM Nha WHERE idNha = @idNha and idChuNha IN (select idChuNha from ChuNha where  tTrang != 1) ) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'			set @out = N'0, CHỦ NHÀ NÀY ĐANG ĐÃ BỊ XÓA HOẶC CHƯA XÁC NHẬN, NÊN KHÔNG THỂ XÁT NHẬN NHÀ '+ @diachi			ROLLBACK TRAN			RETURN -1	END
	
	ELSE IF EXISTS(SELECT * FROM Nha WHERE idNha = @idNha ) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'			update Nha			SET tTrang = 1, idNhanVien =  @idNV, idChiNhanh = @idCN			where idNha = @idNha			set @out = N'1, ĐÃ XÁC NHẬN Nhà: '+ @diachi			COMMIT TRAN			RETURN 1	END
	
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		set @out =  N'0, LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xacNhanThue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[xacNhanThue]
@tKhoanNguoiThue nvarchar(50),
@idNha int,
@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @idNgThue int;
	Declare @idNV int;
	Declare @diachi nvarchar(200);

	 set @idNgThue = (select idNguoiThue from NguoiThue Where tKhoan = @tKhoanNguoiThue)
	 set @diachi = (select dChi from Nha Where idNha = @idNha)
	--Để check lỗi
	IF EXISTS(SELECT * FROM Thue WITH (XLOCK) WHERE idNha = @idNha and idNguoiThue = @idNgThue ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'
			update Thue
			SET tinhtrangThue = N'Đã thuê'
			WHERE idNha = @idNha and idNguoiThue = @idNgThue
			set @out =N'1, TÀI KHOẢN: ' + @tKhoanNguoiThue + N'. ĐÃ THUÊ NHÀ: '+ @diachi +N' THÀNH CÔNG'
			COMMIT TRAN
			RETURN 1
	END
	
	--Để bắt các lỗi hệ thống
	END TRY
	BEGIN CATCH
		--PRINT N'LỖI HỆ THỐNG'
		set @out =  N'0, LỖI HỆ THỐNG'
		ROLLBACK TRAN
	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xacNhanTK]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[xacNhanTK]
@tKhoan2 nvarchar(50),
@tKhoanNV nvarchar(50),
@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @num int;
	Declare @idCN int;
	 set @idCN = (select idChiNhanh from NhanVien Where tKhoan = @tKhoanNV)
	--Để check lỗi
	IF EXISTS(SELECT * FROM NguoiThue WITH (XLOCK)  WHERE tKhoan = @tKhoan2 ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'
			update NguoiThue
			SET tTrang = 1, idChiNhanh = @idCN 
			where tKhoan = @tKhoan2
			set @out = N'1, ĐÃ XÁC NHẬN TÀI KHOẢNG: '+@tKhoan2
			COMMIT TRAN
			RETURN 1
	END
	IF  EXISTS(SELECT * FROM ChuNha WITH (XLOCK)  WHERE tKhoan = @tKhoan2 ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ CHỦ NHÀ!!!'
			update ChuNha
			SET tTrang = 1
			where tKhoan = @tKhoan2
			set @out = N'1, ĐÃ XÁC NHẬN TÀI KHOẢNG: '+@tKhoan2
			COMMIT TRAN
			RETURN 2
	END
	
	--Để bắt các lỗi hệ thống
	END TRY
	BEGIN CATCH
		--PRINT N'LỖI HỆ THỐNG'
		set @out =  N'0, LỖI HỆ THỐNG'
		ROLLBACK TRAN
	END CATCH
COMMIT TRAN
RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[xem1ChuNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xem1ChuNha]
@tKhoanChuNha nvarchar(50)
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @idChuNha int;
	Declare @idNV int;
	Declare @diachi nvarchar(200);

	 set @idChuNha = (select idChuNha from ChuNha Where tKhoan = @tKhoanChuNha)
	--Để check lỗi
	IF EXISTS(SELECT * from ChuNha Where tKhoan = @tKhoanChuNha ) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'			SELECT * from ChuNha Where tKhoan = @tKhoanChuNha			COMMIT TRAN			RETURN 1	END
	
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xem1NguoiThue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xem1NguoiThue]
@tKhoanNguoiThue nvarchar(50)
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @idNguoiThue int;

	 set @idNguoiThue = (select idNguoiThue from NguoiThue Where tKhoan = @tKhoanNguoiThue)
	--Để check lỗi
	IF EXISTS(SELECT * from NguoiThue Where tKhoan = @tKhoanNguoiThue ) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'			SELECT * from NguoiThue Where tKhoan = @tKhoanNguoiThue			COMMIT TRAN			RETURN 1	END
	
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xem1Nha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xem1Nha]
@idNha int
--@out nvarchar(100) output
AS 
SET TRAN ISOLATION LEVEL REPEATABLE READ
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @kq nvarchar(50);
	Declare @kq2 nvarchar(50);
	IF EXISTS(select* from Thue where idNha = @idNha and tinhtrangThue = N'Đã thuê') BEGIN
	set @kq2 = (select (select tKhoan from NguoiThue where idNguoiThue = t.idNguoiThue) from Thue t where t.idNha = @idNha and t.tinhtrangThue = N'Đã thuê')
		set @kq = N'Đã được thuê bởi tài khoản: '+ @kq2
	END
	ELSE BEGIN
		set @kq = N'Đang chờ được thuê'
	END
	--Để check lỗi
	IF EXISTS(SELECT * from Nha Where idNha = @idNha ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'
			SELECT n.idNha, n.dChi, n.soPhong, n.tienthue1Thang, 
			n.idLoaiNha, (select tenLoaiNha from LoaiNha where idLoaiNha = n.idLoaiNha) AS tenLoaiNha, 
			n.idChuNha, (select tKhoan from ChuNha where idChuNha = n.idChuNha) AS tKhoanChuNha, 
			n.idNhanVien, (select tKhoan from NhanVien where idNhanVien= n.idNhanVien) AS tKhoanNhanVien, 
			n.idChiNhanh, (select count(*) from Thue where idNha = n.idNha and tinhtrangThue != N'Hủy thuê') AS soluongdatthue
			, @kq AS tinhTrangThue from Nha n Where n.idNha = @idNha and n.tTrang !=0
			COMMIT TRAN
			RETURN 1
	END

	--Để bắt các lỗi hệ thống
	END TRY
	BEGIN CATCH
		--PRINT N'LỖI HỆ THỐNG'
		--set @out =  N'LỖI HỆ THỐNG'
		ROLLBACK TRAN
	END CATCH
COMMIT TRAN
RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[xem1NhanVien]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[xem1NhanVien]
@tKhoanNhanVien nvarchar(50)
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @idNhanVien int;

	 set @idNhanVien = (select idNhanVien from NhanVien Where tKhoan = @tKhoanNhanVien)
	--Để check lỗi
	IF EXISTS(SELECT * from NhanVien Where tKhoan = @tKhoanNhanVien ) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'			SELECT * from NhanVien Where tKhoan = @tKhoanNhanVien			COMMIT TRAN			RETURN 1	END
	
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xem1Thue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xem1Thue]
@tKhoanNguoiThue nvarchar(50),
@idNha nvarchar(50)
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @idNguoiThue int;

	 set @idNguoiThue = (select idNguoiThue from NguoiThue Where tKhoan = @tKhoanNguoiThue)
	--Để check lỗi
	IF EXISTS(SELECT * from Thue Where idNguoiThue = @idNguoiThue and idNha = @idNha ) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'			SELECT t.idNguoiThue, @tKhoanNguoiThue AS tKhoanNguoiThue, 			t.idNha, (select dChi from Nha where idNha = t.idNha) AS diaChi		    , t.ngXem, t.nhanXet, t.tinhtrangThue from Thue t Where t.idNguoiThue = @idNguoiThue and t.idNha = @idNha			COMMIT TRAN			RETURN 1	END
	
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xemNChiNhanh]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xemNChiNhanh]
@dbatdau int,
@dlay int,
@dem int output 
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	
	Declare @lenh nvarchar(1280);
	set @dbatdau = @dbatdau -1;

		set @lenh=N' SELECT * from ChiNhanh'
		set @dem = (select count(*) from ChiNhanh)
		--print @lenh;
		EXEC sp_executesql @lenh;
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xemNChuNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xemNChuNha]
@dbatdau int,
@dlay int,
@tinhTrang int,
@dem int output
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @idChuNha int;
	Declare @idNV int;
	Declare @diachi nvarchar(200);
	Declare @lenh nvarchar(1280);
	set @dbatdau = @dbatdau -1;

	if (@tinhTrang = 3) BEGIN
	set @lenh='	SELECT * from ChuNha 			ORDER BY idChuNha			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'
	set @dem= (SELECT count(*) from ChuNha )
	END
	ELSE BEGIN	set @lenh='	SELECT * from ChuNha 			where tTrang = '+ CAST(@tinhTrang as varchar(50))+' 			ORDER BY idChuNha			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'			set @dem= (SELECT count(*) from ChuNha where tTrang =@tinhTrang )	END
		EXEC sp_executesql @lenh;
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[xemNLoaiNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xemNLoaiNha]
@dbatdau int,
@dlay int,
@dem int output 
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	
	Declare @lenh nvarchar(1280);
	set @dbatdau = @dbatdau -1;

		set @lenh=N' SELECT * from LoaiNha '
		set @dem = (select count(*) from LoaiNha)
		--print @lenh;
		EXEC sp_executesql @lenh;
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xemNNguoiThue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xemNNguoiThue]
@dbatdau int,
@dlay int,
@tinhTrang int,
@dem int output
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	
	Declare @lenh nvarchar(1280);
	set @dbatdau = @dbatdau -1;

	if (@tinhTrang = 3) BEGIN
	set @lenh='	SELECT * from NguoiThue			ORDER BY idNguoiThue			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'
	set @dem= (SELECT count(*) from NguoiThue )
	END
	ELSE BEGIN	set @lenh='	SELECT * from NguoiThue 			where tTrang = '+ CAST(@tinhTrang as varchar(50))+' 			ORDER BY idNguoiThue			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'	set @dem= (SELECT count(*) from NguoiThue where tTrang =  @tinhTrang)	END
		EXEC sp_executesql @lenh;
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[xemNNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[xemNNha]
@dbatdau int,
@dlay int,
@tinhTrang int,
@dem int output
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	
	Declare @lenh nvarchar(1280);
	set @dbatdau = @dbatdau -1;

	if (@tinhTrang = 3) BEGIN
		set @lenh=N' SELECT  n.idNha, n.dChi, n.soPhong, n.tienthue1Thang, 			n.idLoaiNha, (select tenLoaiNha from LoaiNha where idLoaiNha = n.idLoaiNha) AS tenLoaiNha, 			n.idChuNha, (select tKhoan from ChuNha where idChuNha = n.idChuNha) AS tKhoanChuNha, 			n.idNhanVien, (select tKhoan from NhanVien where idNhanVien= n.idNhanVien) AS tKhoanNhanVien, 			n.idChiNhanh, (select count(*) from Thue where idNha = n.idNha and tinhtrangThue != N''Hủy thuê'') AS soluongdatthue,			CASE WHEN n.idNha IN (select idNha from Thue where tinhtrangThue = N''Đã thuê'') THEN N''Đã được thuê'' ELSE N''ĐANG CHỜ ĐƯỢC THUÊ'' END AS tinhTrangNha			, n.tTrang
			 from Nha n 
			 ORDER BY n.idNha 
			 OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'
		set @dem= (SELECT count(*) from Nha)
	END
	ELSE BEGIN	set @lenh=N'	SELECT n.idNha, n.dChi, n.soPhong, n.tienthue1Thang, 			n.idLoaiNha, (select tenLoaiNha from LoaiNha where idLoaiNha = n.idLoaiNha) AS tenLoaiNha, 			n.idChuNha, (select tKhoan from ChuNha where idChuNha = n.idChuNha) AS tKhoanChuNha, 			n.idNhanVien, (select tKhoan from NhanVien where idNhanVien= n.idNhanVien) AS tKhoanNhanVien, 			n.idChiNhanh, (select count(*) from Thue where idNha = n.idNha and tinhtrangThue != N''Hủy thuê'') AS soluongdatthue,			CASE WHEN n.idNha IN (select idNha from Thue where tinhtrangThue = N''Đã thuê'') THEN N''Đã được thuê'' ELSE N''ĐANG CHỜ ĐƯỢC THUÊ'' END AS tinhTrangNha			, n.tTrang from Nha n  			where tTrang = '+ CAST(@tinhTrang as varchar(50))+' 			ORDER BY  n.idNha 			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'			set @dem= (SELECT count(*) from Nha where tTrang = @tinhTrang)				END
		--print @lenh;
		EXEC sp_executesql @lenh;
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xemNNhaTheoTK]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[xemNNhaTheoTK]
@tkChuNha nvarchar(100),
@dbatdau int,
@dlay int,
@tinhTrang int,
@dem int output
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @idCN int;
	Declare @lenh nvarchar(1280);
	set @dbatdau = @dbatdau -1;
	set @idCN = (select idChuNha from ChuNha where tKhoan = @tkChuNha )
	if (@tinhTrang = 3) BEGIN
		set @lenh=N' SELECT  n.idNha, n.dChi, n.soPhong, n.tienthue1Thang, 			n.idLoaiNha, (select tenLoaiNha from LoaiNha where idLoaiNha = n.idLoaiNha) AS tenLoaiNha, 			n.idChuNha, (select tKhoan from ChuNha where idChuNha = n.idChuNha) AS tKhoanChuNha, 			n.idNhanVien, (select tKhoan from NhanVien where idNhanVien= n.idNhanVien) AS tKhoanNhanVien, 			n.idChiNhanh, (select count(*) from Thue where idNha = n.idNha and tinhtrangThue != N''Hủy thuê'') AS soluongdatthue,			CASE WHEN n.idNha IN (select idNha from Thue where tinhtrangThue = N''Đã thuê'') THEN N''Đã được thuê'' ELSE N''ĐANG CHỜ ĐƯỢC THUÊ'' END AS tinhTrangNha			 from Nha n where n.idChuNha = '+CAST(@idCN as varchar(10)) +'
			 ORDER BY n.idNha 
			 OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'
		set @dem= (SELECT count(*) from Nha)
	END
	ELSE BEGIN	set @lenh=N'	SELECT n.idNha, n.dChi, n.soPhong, n.tienthue1Thang, 			n.idLoaiNha, (select tenLoaiNha from LoaiNha where idLoaiNha = n.idLoaiNha) AS tenLoaiNha, 			n.idChuNha, (select tKhoan from ChuNha where idChuNha = n.idChuNha) AS tKhoanChuNha, 			n.idNhanVien, (select tKhoan from NhanVien where idNhanVien= n.idNhanVien) AS tKhoanNhanVien, 			n.idChiNhanh, (select count(*) from Thue where idNha = n.idNha and tinhtrangThue != N''Hủy thuê'') AS soluongdatthue,			CASE WHEN n.idNha IN (select idNha from Thue where tinhtrangThue = N''Đã thuê'') THEN N''Đã được thuê'' ELSE N''ĐANG CHỜ ĐƯỢC THUÊ'' END AS tinhTrangNha			 from Nha n  			where tTrang = '+ CAST(@tinhTrang as varchar(50))+' and n.idChuNha = '+CAST(@idCN as varchar(10)) +' 			ORDER BY  n.idNha 			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'			set @dem= (SELECT count(*) from Nha where tTrang = @tinhTrang)				END
		--print @lenh;
		EXEC sp_executesql @lenh;
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xemNThue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xemNThue]
@dbatdau int,
@dlay int,
@tinhTrang int,
@dem int output 
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	
	Declare @lenh nvarchar(1280);
	set @dbatdau = @dbatdau -1;

	if (@tinhTrang = 3) BEGIN
		set @lenh=N' SELECT t.idNguoiThue, (select tKhoan from NguoiThue where idNguoiThue = t.idNguoiThue) AS tKhoanNguoiThue, 			t.idNha, (select dChi from Nha where idNha = t.idNha) AS diaChi		    , t.ngXem, t.nhanXet, t.tinhtrangThue from Thue t  
			 ORDER BY t.idNha 
			 OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'
		set @dem = (select count(*) from Thue)
	END
	ELSE if (@tinhTrang = 2) BEGIN	set @lenh=N'	SELECT t.idNguoiThue, (select tKhoan from NguoiThue where idNguoiThue = t.idNguoiThue) AS tKhoanNguoiThue, 			t.idNha, (select dChi from Nha where idNha = t.idNha) AS diaChi		    , t.ngXem, t.nhanXet, t.tinhtrangThue from Thue t 			where tinhtrangThue = N''Đang chờ thuê'' 			ORDER BY t.idNha 			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'			set @dem = (select count(*) from Thue where tinhtrangThue = N'Đang chờ thuê')	END
	ELSE if (@tinhTrang = 1) BEGIN	set @lenh=N'	SELECT t.idNguoiThue, (select tKhoan from NguoiThue where idNguoiThue = t.idNguoiThue) AS tKhoanNguoiThue, 			t.idNha, (select dChi from Nha where idNha = t.idNha) AS diaChi		    , t.ngXem, t.nhanXet, t.tinhtrangThue from Thue t 			where tinhtrangThue = N''Đã thuê'' 			ORDER BY t.idNha 			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'			set @dem = (select count(*) from Thue where tinhtrangThue = N'Đã thuê')	END
	ELSE  BEGIN	set @lenh=N'	SELECT t.idNguoiThue, (select tKhoan from NguoiThue where idNguoiThue = t.idNguoiThue) AS tKhoanNguoiThue, 			t.idNha, (select dChi from Nha where idNha = t.idNha) AS diaChi		    , t.ngXem, t.nhanXet, t.tinhtrangThue from Thue t 			where tinhtrangThue = N''Hủy thuê'' 			ORDER BY t.idNha 			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'			set @dem = (select count(*) from Thue where tinhtrangThue = N'Hủy thuê')	END
		--print @lenh;
		EXEC sp_executesql @lenh;
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xemNThueTheoTK]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xemNThueTheoTK]
@tkNThue nvarchar(100),
@dbatdau int,
@dlay int,
@tinhTrang int,
@dem int output 
--@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @idNT int;
	Declare @lenh nvarchar(1280);
	set @dbatdau = @dbatdau -1;
	set @idNT = (select idNguoiThue from NguoiThue where tKhoan = @tkNThue)
	if (@tinhTrang = 3) BEGIN
		set @lenh=N' SELECT t.idNguoiThue, (select tKhoan from NguoiThue where idNguoiThue = t.idNguoiThue) AS tKhoanNguoiThue, 			t.idNha, (select dChi from Nha where idNha = t.idNha) AS diaChi		    , t.ngXem, t.nhanXet, t.tinhtrangThue from Thue t  where t.idNguoiThue = '+CAST(@idNT as varchar(10))+'  
			 ORDER BY t.idNha 
			 OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'
		set @dem = (select count(*) from Thue)
	END
	ELSE if (@tinhTrang = 2) BEGIN	set @lenh=N'	SELECT t.idNguoiThue, (select tKhoan from NguoiThue where idNguoiThue = t.idNguoiThue) AS tKhoanNguoiThue, 			t.idNha, (select dChi from Nha where idNha = t.idNha) AS diaChi		    , t.ngXem, t.nhanXet, t.tinhtrangThue from Thue t 			where tinhtrangThue = N''Đang chờ thuê'' and t.idNguoiThue = '+CAST(@idNT as varchar(10))+'  			ORDER BY t.idNha 			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'			set @dem = (select count(*) from Thue where tinhtrangThue = N'Đang chờ thuê')	END
	ELSE if (@tinhTrang = 1) BEGIN	set @lenh=N'	SELECT t.idNguoiThue, (select tKhoan from NguoiThue where idNguoiThue = t.idNguoiThue) AS tKhoanNguoiThue, 			t.idNha, (select dChi from Nha where idNha = t.idNha) AS diaChi		    , t.ngXem, t.nhanXet, t.tinhtrangThue from Thue t 			where tinhtrangThue = N''Đã thuê'' and t.idNguoiThue = '+CAST(@idNT as varchar(10))+'  			ORDER BY t.idNha 			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'			set @dem = (select count(*) from Thue where tinhtrangThue = N'Đã thuê')	END
	ELSE  BEGIN	set @lenh=N'	SELECT t.idNguoiThue, (select tKhoan from NguoiThue where idNguoiThue = t.idNguoiThue) AS tKhoanNguoiThue, 			t.idNha, (select dChi from Nha where idNha = t.idNha) AS diaChi		    , t.ngXem, t.nhanXet, t.tinhtrangThue from Thue t 			where tinhtrangThue = N''Hủy thuê'' and t.idNguoiThue = '+CAST(@idNT as varchar(10))+'  			ORDER BY t.idNha 			OFFSET '+ CAST(@dbatdau as varchar(10))+' ROWS
			FETCH NEXT '+ CAST(@dlay as varchar(10))+'  ROWS ONLY;'			set @dem = (select count(*) from Thue where tinhtrangThue = N'Hủy thuê')	END
		--print @lenh;
		EXEC sp_executesql @lenh;
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		--set @out =  N'LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0

GO
/****** Object:  StoredProcedure [dbo].[xoaNha]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoaNha]
@idNha int,
@out nvarchar(100) output
AS 
SET TRAN ISOLATION LEVEL SERIALIZABLE
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @num int;
	Declare @diachi nvarchar(200);
	--Để check lỗi
	set @diachi = (select dChi from Nha Where idNha = @idNha)
	IF EXISTS(SELECT * FROM Thue WHERE idNha = @idNha and tinhtrangThue = N'Đã thuê' ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'
			set @out = N'0, Nhà đã thuê, KHÔNG XÓA ĐƯỢC!'
			COMMIT TRAN
			RETURN -1
	END
	ELSE IF EXISTS(SELECT * FROM Thue WHERE idNha = @idNha and tinhtrangThue = N'Đang chờ thuê' ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'
			set @out = N'0, Nhà đang trong giai đoạn giao dịch, KHÔNG XÓA ĐƯỢC!'
			COMMIT TRAN
			RETURN -1
	END
	ELSE IF EXISTS(SELECT * FROM Nha WHERE idNha = @idNha ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'
			update Nha
			SET tTrang = 0
			where idNha = @idNha
			set @out = N'1, ĐÃ XÓA NHÀ: '+ @diachi
			COMMIT TRAN
			RETURN 1
	END
	
	--Để bắt các lỗi hệ thống
	END TRY
	BEGIN CATCH
		--PRINT N'LỖI HỆ THỐNG'
		set @out =  N'0, LỖI HỆ THỐNG'
		ROLLBACK TRAN
	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xoaThue]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  proc [dbo].[xoaThue]
@tKhoanNguoiThue nvarchar(50),
@idNha int,
@out nvarchar(100) output
AS 
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @idNgThue int;
	Declare @idNV int;
	Declare @diachi nvarchar(200);

	 set @idNgThue = (select idNguoiThue from NguoiThue Where tKhoan = @tKhoanNguoiThue)
	 set @diachi = (select dChi from Nha Where idNha = @idNha)
	--Để check lỗi
	IF EXISTS(SELECT * FROM Thue WHERE idNha = @idNha and idNguoiThue = @idNgThue ) BEGIN			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'			update Thue			SET tinhtrangThue = N'Hủy thuê'			WHERE idNha = @idNha and idNguoiThue = @idNgThue			set @out =N'1, TÀI KHOẢN: ' + @tKhoanNguoiThue + N'. ĐÃ HỦY THUÊ NHÀ: '+ @diachi +N' THÀNH CÔNG'			COMMIT TRAN			RETURN 1	END
	
	--Để bắt các lỗi hệ thống
	END TRY	BEGIN CATCH		--PRINT N'LỖI HỆ THỐNG'		set @out =  N'0, LỖI HỆ THỐNG'		ROLLBACK TRAN	END CATCH
COMMIT TRAN
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[xoaTK]    Script Date: 04-Oct-19 8:16:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[xoaTK]
@tKhoan2 nvarchar(50),
@out nvarchar(100) output
AS 
SET TRAN ISOLATION LEVEL SERIALIZABLE
BEGIN TRAN
    SET NOCOUNT ON
    SET XACT_ABORT ON
	BEGIN TRY
	Declare @num int;
	--Để check lỗi (select idNguoiThue from NguoiThue Where tKhoan = @tKhoan2)
	IF EXISTS(SELECT * FROM Thue WHERE idNguoiThue IN (select idNguoiThue from NguoiThue Where tKhoan = @tKhoan2) and tinhtrangThue =N'Đã thuê' ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'
			set @out = N'0, TÀI KHOẢN NÀY ĐÃ THUÊ NHÀ, KHÔNG XÓA ĐƯỢC '
			ROLLBACK TRAN
			RETURN 0
	END
	ELSE IF EXISTS(SELECT * FROM Thue WHERE idNguoiThue IN (select idNguoiThue from NguoiThue Where tKhoan = @tKhoan2) and tinhtrangThue =N'Đang chờ thuê' ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'
			set @out = N'0, TÀI KHOẢN NÀY ĐANG CHỜ THUÊ NHÀ, KHÔNG XÓA ĐƯỢC '
			ROLLBACK TRAN
			RETURN -1
	END
	ELSE IF EXISTS(SELECT * FROM Nha WHERE idChuNha IN (select idChuNha from ChuNha Where tKhoan = @tKhoan2) and tTrang !=0 ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'
			set @out = N'0, TÀI KHOẢN ĐANG CHO THUÊ NHÀ, KHÔNG XÓA ĐƯỢC '
			ROLLBACK TRAN
			RETURN -1
	END
	IF EXISTS(SELECT * FROM NguoiThue WITH (XLOCK)  WHERE tKhoan = @tKhoan2 ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NGƯỜI THUÊ!!!'
			update NguoiThue
			SET tTrang = 0
			where tKhoan = @tKhoan2
			set @out = N'1, ĐÃ XÓA TÀI KHOẢNG: '+@tKhoan2
			COMMIT TRAN
			RETURN 1
	END
	IF  EXISTS(SELECT * FROM ChuNha WITH (XLOCK)  WHERE tKhoan = @tKhoan2 ) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ CHỦ NHÀ!!!'
			update ChuNha
			SET tTrang = 0
			where tKhoan = @tKhoan2
			set @out = N'1, ĐÃ XÓA TÀI KHOẢNG: '+@tKhoan2
			COMMIT TRAN
			RETURN 2
	END
		IF  EXISTS(SELECT * FROM NhanVien WHERE tKhoan != @tKhoan2) BEGIN
			--PRINT  N'TÀI KHOẢNG: '+@tKhoan +N' LÀ NHÂN VIÊN!!!'
			update NhanVien
			SET tTrang = 0
			where tKhoan = @tKhoan2
			set @out = N'1, ĐÃ XÓA TÀI KHOẢNG: '+@tKhoan2
			COMMIT TRAN
			RETURN 3
	END
	--Để bắt các lỗi hệ thống
	END TRY
	BEGIN CATCH
		--PRINT N'LỖI HỆ THỐNG'
		set @out =  N'0, LỖI HỆ THỐNG'
		ROLLBACK TRAN
	END CATCH
COMMIT TRAN
RETURN 0
GO
USE [master]
GO
ALTER DATABASE [QLyThueNha03] SET  READ_WRITE 
GO
