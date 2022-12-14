USE [master]
GO
/****** Object:  Database [WebDauThau]    Script Date: 10/27/2022 7:39:21 PM ******/
CREATE DATABASE [WebDauThau]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebDauThau', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\WebDauThau.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebDauThau_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\WebDauThau_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WebDauThau] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebDauThau].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebDauThau] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebDauThau] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebDauThau] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebDauThau] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebDauThau] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebDauThau] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebDauThau] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebDauThau] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebDauThau] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebDauThau] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebDauThau] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebDauThau] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebDauThau] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebDauThau] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebDauThau] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebDauThau] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebDauThau] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebDauThau] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebDauThau] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebDauThau] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebDauThau] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebDauThau] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebDauThau] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebDauThau] SET  MULTI_USER 
GO
ALTER DATABASE [WebDauThau] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebDauThau] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebDauThau] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebDauThau] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebDauThau] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebDauThau', N'ON'
GO
ALTER DATABASE [WebDauThau] SET QUERY_STORE = OFF
GO
USE [WebDauThau]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = OFF;
GO
USE [WebDauThau]
GO
/****** Object:  User [NT AUTHORITY\IUSR]    Script Date: 10/27/2022 7:39:23 PM ******/
CREATE USER [NT AUTHORITY\IUSR] FOR LOGIN [NT AUTHORITY\IUSR]
GO
/****** Object:  User [IIS APPPOOL\WebLuuTru]    Script Date: 10/27/2022 7:39:23 PM ******/
CREATE USER [IIS APPPOOL\WebLuuTru] FOR LOGIN [IIS APPPOOL\WebLuuTru] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NT AUTHORITY\IUSR]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [NT AUTHORITY\IUSR]
GO
ALTER ROLE [db_datareader] ADD MEMBER [IIS APPPOOL\WebLuuTru]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [IIS APPPOOL\WebLuuTru]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/27/2022 7:39:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[HashedPassword] [varbinary](max) NOT NULL,
	[Key] [varbinary](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Admin] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenMoiThauDaDuyet]    Script Date: 10/27/2022 7:39:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenMoiThauDaDuyet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Mã cơ quan] [nvarchar](10) NULL,
	[Bên mời thầu] [nvarchar](max) NOT NULL,
	[Địa chỉ] [nvarchar](max) NULL,
	[Số điện thoại] [nvarchar](15) NULL,
	[Tên viết tắt] [nvarchar](50) NULL,
	[Tên tiếng Anh] [nvarchar](max) NULL,
	[Phân loại trực thuộc] [nvarchar](50) NULL,
	[Tập đoàn TCT Bộ ban ngành] [nvarchar](50) NULL,
	[Tỉnh Thành Phố] [nvarchar](50) NULL,
	[Số Fax cơ quan] [nvarchar](50) NULL,
	[Trang web] [nvarchar](max) NULL,
	[Hình thái kinh doanh] [nvarchar](50) NULL,
	[Mã số thuế] [nvarchar](50) NULL,
	[Ngành nghề] [nvarchar](50) NULL,
	[Loại đăng ký] [nvarchar](50) NULL,
	[Ngày phê duyệt] [date] NULL,
	[Số ĐKKD] [nvarchar](50) NULL,
	[Trạng thái] [nvarchar](50) NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_BenMoiThauDaDuyet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File]    Script Date: 10/27/2022 7:39:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Thông báo ID] [int] NULL,
	[Kết quả ID] [int] NULL,
	[Path] [nvarchar](max) NOT NULL,
	[FileSize] [int] NOT NULL,
	[Hashed Content] [varbinary](max) NOT NULL,
	[Content] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQuaLuaChonNhaThau_ThongTinChiTiet]    Script Date: 10/27/2022 7:39:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQuaLuaChonNhaThau_ThongTinChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Loại thông báo] [nvarchar](20) NULL,
	[Số TBMT] [nvarchar](50) NOT NULL,
	[Số hiệu KHLCNT] [nvarchar](50) NOT NULL,
	[Tên gói thầu] [nvarchar](max) NOT NULL,
	[Tên dự án/ Dự toán mua sắm] [nvarchar](max) NULL,
	[Bên mời thầu] [nvarchar](max) NULL,
	[Hình thức lựa chọn NT] [nvarchar](50) NULL,
	[Giá dự toán] [bigint] NULL,
	[Giá gói thầu] [bigint] NULL,
	[Nhà thầu trúng thầu] [nvarchar](max) NULL,
	[Giá trúng thầu] [bigint] NULL,
	[Hình thức hợp đồng] [nvarchar](20) NULL,
	[Thời gian thực hiện HĐ] [int] NULL,
	[Số quyết định phê duyệt] [nvarchar](max) NULL,
	[Ngày phê duyệt] [datetime2](0) NULL,
	[Ngày đăng tải] [datetime2](0) NULL,
	[Lĩnh vực] [nvarchar](20) NULL,
	[AccountID] [int] NULL,
	[NhaThauTrungThauID] [int] NULL,
	[ThongBaoMoiThauID] [int] NULL,
 CONSTRAINT [PK_KetQuaLuaChonNhaThau_ThongTinChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaThauDaDuyet]    Script Date: 10/27/2022 7:39:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaThauDaDuyet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tên nhà thầu] [nvarchar](max) NOT NULL,
	[Số ĐKKD] [nvarchar](10) NULL,
	[Địa chỉ] [nvarchar](max) NULL,
	[Ngày phê duyệt] [date] NULL,
	[Trạng thái] [nvarchar](50) NULL,
	[Loại hình doanh nghiệp] [nvarchar](50) NULL,
	[Ngày thành lập] [date] NULL,
	[Tên tiếng Anh] [nvarchar](max) NULL,
	[Tỉnh Thành phố] [nvarchar](50) NULL,
	[Quốc gia] [nvarchar](50) NULL,
	[Địa chỉ giao dịch] [nvarchar](max) NULL,
	[Số nhân viên] [int] NULL,
	[Loại đăng ký] [nvarchar](50) NULL,
	[Vị trí nhà thầu] [nvarchar](50) NULL,
	[Số điện thoại] [nvarchar](20) NULL,
	[Số Fax] [nvarchar](20) NULL,
	[Trạng thái đóng phí] [nvarchar](50) NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_NhaThauDaDuyet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBaoMoiThau_ThongTinChiTiet]    Script Date: 10/27/2022 7:39:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBaoMoiThau_ThongTinChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Hình thức thông báo] [nvarchar](50) NULL,
	[Loại thông báo] [nvarchar](50) NULL,
	[Số TBMT] [nvarchar](50) NOT NULL,
	[Số hiệu KHLCNT] [nvarchar](50) NOT NULL,
	[Thời điểm đăng tải] [datetime2](0) NULL,
	[Lĩnh vực] [nvarchar](20) NULL,
	[Bên mời thầu] [nvarchar](max) NULL,
	[Tên gói thầu] [nvarchar](max) NOT NULL,
	[Phân loại] [nvarchar](50) NULL,
	[Tên dự toán mua sắm] [nvarchar](max) NULL,
	[Chi tiết nguồn vốn] [nvarchar](max) NULL,
	[Loại hợp đồng] [nvarchar](20) NULL,
	[Hình thức lựa chọn nhà thầu] [nvarchar](50) NULL,
	[Phương thức LCNT] [nvarchar](30) NULL,
	[Thời gian thực hiện hợp đồng] [int] NULL,
	[Hình thức dự thầu] [nvarchar](20) NULL,
	[Chi phí E-HSMT] [bigint] NULL,
	[Thời gian hiệu lực của E-HSDT] [int] NULL,
	[Địa điểm nhận HSDT] [nvarchar](max) NULL,
	[Địa điểm thực hiện gói thầu] [nvarchar](max) NULL,
	[Thời điểm đóng/mở thầu] [datetime2](0) NULL,
	[Địa điểm mở thầu] [nvarchar](max) NULL,
	[Dự toán gói thầu] [bigint] NULL,
	[Số tiền bảo đảm dự thầu] [bigint] NULL,
	[Hình thức bảo đảm dự thầu] [nvarchar](20) NULL,
	[Lần chỉnh sửa] [int] NOT NULL,
	[AccountID] [int] NOT NULL,
	[BenMoiThauID] [int] NULL,
 CONSTRAINT [PK_ThongBaoMoiThau_ThongTinChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_Admin]  DEFAULT ((0)) FOR [Admin]
GO
ALTER TABLE [dbo].[File] ADD  CONSTRAINT [DF_File_Content]  DEFAULT ((0)) FOR [Content]
GO
ALTER TABLE [dbo].[ThongBaoMoiThau_ThongTinChiTiet] ADD  CONSTRAINT [DF_ThongBaoMoiThau_ThongTinChiTiet_Lần chỉnh sửa]  DEFAULT ((0)) FOR [Lần chỉnh sửa]
GO
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_KetQuaLuaChonNhaThau_ThongTinChiTiet] FOREIGN KEY([Kết quả ID])
REFERENCES [dbo].[KetQuaLuaChonNhaThau_ThongTinChiTiet] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_KetQuaLuaChonNhaThau_ThongTinChiTiet]
GO
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_ThongBaoMoiThau_ThongTinChiTiet] FOREIGN KEY([Thông báo ID])
REFERENCES [dbo].[ThongBaoMoiThau_ThongTinChiTiet] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_ThongBaoMoiThau_ThongTinChiTiet]
GO
ALTER TABLE [dbo].[KetQuaLuaChonNhaThau_ThongTinChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaLuaChonNhaThau_ThongTinChiTiet_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[KetQuaLuaChonNhaThau_ThongTinChiTiet] CHECK CONSTRAINT [FK_KetQuaLuaChonNhaThau_ThongTinChiTiet_Account]
GO
ALTER TABLE [dbo].[KetQuaLuaChonNhaThau_ThongTinChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaLuaChonNhaThau_ThongTinChiTiet_NhaThauDaDuyet] FOREIGN KEY([NhaThauTrungThauID])
REFERENCES [dbo].[NhaThauDaDuyet] ([ID])
GO
ALTER TABLE [dbo].[KetQuaLuaChonNhaThau_ThongTinChiTiet] CHECK CONSTRAINT [FK_KetQuaLuaChonNhaThau_ThongTinChiTiet_NhaThauDaDuyet]
GO
ALTER TABLE [dbo].[KetQuaLuaChonNhaThau_ThongTinChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaLuaChonNhaThau_ThongTinChiTiet_ThongBaoMoiThau_ThongTinChiTiet] FOREIGN KEY([ThongBaoMoiThauID])
REFERENCES [dbo].[ThongBaoMoiThau_ThongTinChiTiet] ([ID])
GO
ALTER TABLE [dbo].[KetQuaLuaChonNhaThau_ThongTinChiTiet] CHECK CONSTRAINT [FK_KetQuaLuaChonNhaThau_ThongTinChiTiet_ThongBaoMoiThau_ThongTinChiTiet]
GO
ALTER TABLE [dbo].[NhaThauDaDuyet]  WITH CHECK ADD  CONSTRAINT [FK_NhaThauDaDuyet_Account1] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[NhaThauDaDuyet] CHECK CONSTRAINT [FK_NhaThauDaDuyet_Account1]
GO
ALTER TABLE [dbo].[ThongBaoMoiThau_ThongTinChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_ThongBaoMoiThau_ThongTinChiTiet_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[ThongBaoMoiThau_ThongTinChiTiet] CHECK CONSTRAINT [FK_ThongBaoMoiThau_ThongTinChiTiet_Account]
GO
ALTER TABLE [dbo].[ThongBaoMoiThau_ThongTinChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_ThongBaoMoiThau_ThongTinChiTiet_BenMoiThauDaDuyet] FOREIGN KEY([BenMoiThauID])
REFERENCES [dbo].[BenMoiThauDaDuyet] ([ID])
GO
ALTER TABLE [dbo].[ThongBaoMoiThau_ThongTinChiTiet] CHECK CONSTRAINT [FK_ThongBaoMoiThau_ThongTinChiTiet_BenMoiThauDaDuyet]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File', @level2type=N'COLUMN',@level2name=N'FileSize'
GO
USE [master]
GO
ALTER DATABASE [WebDauThau] SET  READ_WRITE 
GO
