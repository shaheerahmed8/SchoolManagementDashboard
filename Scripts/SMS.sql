USE [master]
GO
/****** Object:  Database [School Management]    Script Date: 7/3/2021 11:55:47 PM ******/
CREATE DATABASE [School Management]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'School Management', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\School Management.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'School Management_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\School Management_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [School Management].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [School Management] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [School Management] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [School Management] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [School Management] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [School Management] SET ARITHABORT OFF 
GO
ALTER DATABASE [School Management] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [School Management] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [School Management] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [School Management] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [School Management] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [School Management] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [School Management] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [School Management] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [School Management] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [School Management] SET  DISABLE_BROKER 
GO
ALTER DATABASE [School Management] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [School Management] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [School Management] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [School Management] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [School Management] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [School Management] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [School Management] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [School Management] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [School Management] SET  MULTI_USER 
GO
ALTER DATABASE [School Management] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [School Management] SET DB_CHAINING OFF 
GO
ALTER DATABASE [School Management] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [School Management] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [School Management] SET DELAYED_DURABILITY = DISABLED 
GO
USE [School Management]
GO
/****** Object:  Table [dbo].[tbl_Admin]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Designation] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Applicant]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Applicant](
	[ApplicantID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Age] [int] NULL,
	[Experience] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[File] [varbinary](50) NULL,
 CONSTRAINT [PK_tbl_Applicant] PRIMARY KEY CLUSTERED 
(
	[ApplicantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Class]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Class](
	[ClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ClassSectionDetails]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ClassSectionDetails](
	[ClassDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[SectionID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ClassCourses] PRIMARY KEY CLUSTERED 
(
	[ClassDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Course]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CurrentClassResults]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CurrentClassResults](
	[CCRID] [int] IDENTITY(1,1) NOT NULL,
	[ExamID] [int] NULL,
	[StudentID] [int] NULL,
	[ClassID] [int] NULL,
	[MarksObtained] [float] NULL,
	[TotalMarks] [int] NULL,
	[Percentage] [float] NULL,
	[CurrentResultID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_CurrentClassResults] PRIMARY KEY CLUSTERED 
(
	[CCRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CurrentResult]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CurrentResult](
	[CurrentResultID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [int] NOT NULL,
	[ExamID] [int] NOT NULL,
	[ClassID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[MarksObtained] [float] NOT NULL,
	[TotalMarks] [int] NOT NULL,
 CONSTRAINT [PK_tbl_MarkSheet] PRIMARY KEY CLUSTERED 
(
	[CurrentResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Detail]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Detail](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyID] [int] NULL,
	[SectionID] [int] NULL,
	[CourseID] [int] NULL,
	[HeaderID] [int] NULL,
 CONSTRAINT [PK_tbl_AConnection] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Exam]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Exam](
	[ExamID] [int] IDENTITY(1,1) NOT NULL,
	[ExamName] [varchar](50) NOT NULL,
	[ExamTypeID] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[IsCurrent] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Exam] PRIMARY KEY CLUSTERED 
(
	[ExamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ExamType]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ExamType](
	[ExamTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_ExamType] PRIMARY KEY CLUSTERED 
(
	[ExamTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Faculty]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Faculty](
	[FacultyID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyName] [varchar](20) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Contact] [varchar](50) NOT NULL,
	[Qualification] [varchar](10) NOT NULL,
	[Experience] [varchar](10) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[JoinDate] [date] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[IsVisiting] [varchar](50) NULL,
	[Cnic] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Faculty] PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FacultyAttendance]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FacultyAttendance](
	[FAStatusID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyID] [int] NOT NULL,
	[DateDay] [date] NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_FAStatus] PRIMARY KEY CLUSTERED 
(
	[FAStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FacultyDetail]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FacultyDetail](
	[FDID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyID] [int] NOT NULL,
	[ClassID] [int] NULL,
	[SectionID] [int] NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_FacultyDetail] PRIMARY KEY CLUSTERED 
(
	[FDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Form]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Form](
	[FormID] [int] IDENTITY(1,1) NOT NULL,
	[FormName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Form] PRIMARY KEY CLUSTERED 
(
	[FormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Header]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Header](
	[HeaderID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [int] NULL,
	[ClassID] [int] NULL,
 CONSTRAINT [PK_tbl_Connection] PRIMARY KEY CLUSTERED 
(
	[HeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HistoryResult]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HistoryResult](
	[ResultID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[ClassID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[MarksObtained] [float] NOT NULL,
	[TotalMarks] [int] NOT NULL,
	[Grade] [varchar](2) NOT NULL,
	[CCRID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Result] PRIMARY KEY CLUSTERED 
(
	[ResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Lock]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Lock](
	[LockID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[SessionID] [int] NULL,
	[ExamID] [int] NULL,
 CONSTRAINT [PK_tbl_Lock] PRIMARY KEY CLUSTERED 
(
	[LockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Login]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Login](
	[UserID] [int] NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OnlineAdmission]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OnlineAdmission](
	[AdmissionID] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NOT NULL,
	[FatherName] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NULL,
	[DateOfBirth] [date] NOT NULL,
	[age] [int] NULL,
	[Cnic] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_OnlineAdmission] PRIMARY KEY CLUSTERED 
(
	[AdmissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Payroll]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Payroll](
	[PayrollID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyID] [int] NOT NULL,
	[BasicPay] [varchar](50) NOT NULL,
	[Allowances] [varchar](50) NOT NULL,
	[NetSalary] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Payroll] PRIMARY KEY CLUSTERED 
(
	[PayrollID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PORequest]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PORequest](
	[PO Request ID] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[FulFill Date] [date] NULL,
	[Create Time] [date] NULL,
	[Approved] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PurchaseOrder]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PurchaseOrder](
	[Purchase iD] [int] NOT NULL,
	[Vendor ID] [int] NOT NULL,
	[Product ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total Price] [int] NOT NULL,
	[Order Date] [date] NOT NULL,
	[Entry Date] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_Purchase] PRIMARY KEY CLUSTERED 
(
	[Purchase iD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Section]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Section](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Section] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Session]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Session](
	[SessionID] [int] IDENTITY(1,1) NOT NULL,
	[SessionName] [varchar](50) NOT NULL,
	[IsCurrent] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Session] PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Standard]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Standard](
	[StandardID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Standard] PRIMARY KEY CLUSTERED 
(
	[StandardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_StudAttendance]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_StudAttendance](
	[SAttendance] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[DateDay] [datetime] NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_StudAttendnce] PRIMARY KEY CLUSTERED 
(
	[SAttendance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_StudClassInfo]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_StudClassInfo](
	[SCIID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [int] NULL,
	[StudentID] [int] NOT NULL,
	[ClassID] [int] NULL,
	[SectionID] [int] NULL,
 CONSTRAINT [PK_tbl_StudClassInfo] PRIMARY KEY CLUSTERED 
(
	[SCIID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Student]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](20) NOT NULL,
	[FatherName] [varchar](20) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[Contact] [nvarchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Cnic] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Age] [int] NOT NULL,
	[DateOfAdmission] [date] NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UFV]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UFV](
	[UFVID] [int] IDENTITY(1,1) NOT NULL,
	[FormID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_UFV] PRIMARY KEY CLUSTERED 
(
	[UFVID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [varchar](50) NOT NULL,
	[StudentID] [int] NOT NULL,
	[FacultyID] [int] NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Vendor]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Vendor](
	[Vendor ID] [int] NOT NULL,
	[Vendor Name] [varchar](50) NOT NULL,
	[Product ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Vendor] PRIMARY KEY CLUSTERED 
(
	[Vendor ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Admin] ON 

INSERT [dbo].[tbl_Admin] ([AdminID], [AdminName], [Password], [Designation]) VALUES (1, N'Faisal', N'Admin', N'Director Admin')
INSERT [dbo].[tbl_Admin] ([AdminID], [AdminName], [Password], [Designation]) VALUES (2, N'Ali', N'Admin', N'Director FInance')
INSERT [dbo].[tbl_Admin] ([AdminID], [AdminName], [Password], [Designation]) VALUES (3, N'Babar', N'123', N'Principal')
INSERT [dbo].[tbl_Admin] ([AdminID], [AdminName], [Password], [Designation]) VALUES (4, N'Saad', N'123', N'Vice Principal')
SET IDENTITY_INSERT [dbo].[tbl_Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Applicant] ON 

INSERT [dbo].[tbl_Applicant] ([ApplicantID], [ApplicantName], [Email], [Contact], [Address], [Age], [Experience], [Description], [File]) VALUES (1, N'Ahmed', N'ahmed@hotmail.com', NULL, N'wdwedwed', 12, N'5 years', N'ewcewerewfferewrewvcc', NULL)
INSERT [dbo].[tbl_Applicant] ([ApplicantID], [ApplicantName], [Email], [Contact], [Address], [Age], [Experience], [Description], [File]) VALUES (2, N'Shaheer Ahmed', N'ashaheer160@gmail.com', N'dwsdwdwcdvdcd', N'03347208910', 24, N'5 years', N'', NULL)
INSERT [dbo].[tbl_Applicant] ([ApplicantID], [ApplicantName], [Email], [Contact], [Address], [Age], [Experience], [Description], [File]) VALUES (3, N'Usman', N'usman@aziz.com', N'scsdsdsdsadsadsdasddad', N'32434332423', 24, N'5 years', N'wsdwdwfdwfdfdsfdw', NULL)
SET IDENTITY_INSERT [dbo].[tbl_Applicant] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Class] ON 

INSERT [dbo].[tbl_Class] ([ClassID], [ClassName]) VALUES (1, N'Class 1')
INSERT [dbo].[tbl_Class] ([ClassID], [ClassName]) VALUES (2, N'Class 2')
INSERT [dbo].[tbl_Class] ([ClassID], [ClassName]) VALUES (3, N'Class 3')
INSERT [dbo].[tbl_Class] ([ClassID], [ClassName]) VALUES (4, N'class 4')
INSERT [dbo].[tbl_Class] ([ClassID], [ClassName]) VALUES (5, N'Class 5')
SET IDENTITY_INSERT [dbo].[tbl_Class] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ClassSectionDetails] ON 

INSERT [dbo].[tbl_ClassSectionDetails] ([ClassDetailsID], [ClassID], [SectionID]) VALUES (6, 1, 6)
INSERT [dbo].[tbl_ClassSectionDetails] ([ClassDetailsID], [ClassID], [SectionID]) VALUES (7, 1, 1)
INSERT [dbo].[tbl_ClassSectionDetails] ([ClassDetailsID], [ClassID], [SectionID]) VALUES (8, 3, 11)
INSERT [dbo].[tbl_ClassSectionDetails] ([ClassDetailsID], [ClassID], [SectionID]) VALUES (9, 3, 12)
INSERT [dbo].[tbl_ClassSectionDetails] ([ClassDetailsID], [ClassID], [SectionID]) VALUES (10, 3, 13)
INSERT [dbo].[tbl_ClassSectionDetails] ([ClassDetailsID], [ClassID], [SectionID]) VALUES (11, 3, 14)
SET IDENTITY_INSERT [dbo].[tbl_ClassSectionDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Course] ON 

INSERT [dbo].[tbl_Course] ([CourseID], [CourseName]) VALUES (1, N'Maths1')
INSERT [dbo].[tbl_Course] ([CourseID], [CourseName]) VALUES (2, N'Urdu 1')
INSERT [dbo].[tbl_Course] ([CourseID], [CourseName]) VALUES (3, N'English 1')
INSERT [dbo].[tbl_Course] ([CourseID], [CourseName]) VALUES (4, N'Science 1')
INSERT [dbo].[tbl_Course] ([CourseID], [CourseName]) VALUES (5, N'Islamiat 1')
INSERT [dbo].[tbl_Course] ([CourseID], [CourseName]) VALUES (6, N'Social Studies 1')
INSERT [dbo].[tbl_Course] ([CourseID], [CourseName]) VALUES (7, N'Social Studies 3')
INSERT [dbo].[tbl_Course] ([CourseID], [CourseName]) VALUES (8, N'English 3')
SET IDENTITY_INSERT [dbo].[tbl_Course] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_CurrentClassResults] ON 

INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (36, 4, 2, 1, 60, 75, 80, 1)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (37, 4, 3, 1, 65, 75, 86.666666666666671, 2)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (38, 4, 2, 1, 60, 75, 80, 3)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (39, 4, 3, 1, 55, 75, 73.333333333333329, 4)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (40, 4, 12, 3, 20, 25, 80, 5)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (41, 4, 6, 3, 20, 25, 80, 6)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (42, 4, 15, 3, 20, 25, 80, 7)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (43, 4, 22, 3, 20, 25, 80, 8)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (44, 4, 5, 3, 20, 25, 80, 9)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (45, 4, 26, 3, 20, 25, 80, 10)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (46, 6, 2, 1, 20, 25, 80, 11)
INSERT [dbo].[tbl_CurrentClassResults] ([CCRID], [ExamID], [StudentID], [ClassID], [MarksObtained], [TotalMarks], [Percentage], [CurrentResultID]) VALUES (47, 6, 2, 1, 25, 25, 100, 12)
SET IDENTITY_INSERT [dbo].[tbl_CurrentClassResults] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_CurrentResult] ON 

INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (1, 5, 4, 1, 2, 1, 60, 75)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (2, 5, 4, 1, 3, 1, 65, 75)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (3, 5, 4, 1, 2, 3, 60, 75)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (4, 5, 4, 1, 3, 3, 55, 75)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (5, 5, 4, 3, 12, 8, 20, 25)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (6, 5, 4, 3, 6, 8, 20, 25)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (7, 5, 4, 3, 15, 8, 20, 25)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (8, 5, 4, 3, 22, 8, 20, 25)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (9, 5, 4, 3, 5, 8, 20, 25)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (10, 5, 4, 3, 26, 8, 20, 25)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (11, 5, 6, 1, 2, 1, 20, 25)
INSERT [dbo].[tbl_CurrentResult] ([CurrentResultID], [SessionID], [ExamID], [ClassID], [StudentID], [CourseID], [MarksObtained], [TotalMarks]) VALUES (12, 5, 6, 1, 2, 3, 25, 25)
SET IDENTITY_INSERT [dbo].[tbl_CurrentResult] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Exam] ON 

INSERT [dbo].[tbl_Exam] ([ExamID], [ExamName], [ExamTypeID], [StartDate], [EndDate], [IsCurrent]) VALUES (4, N'Summers Mids', 3, CAST(N'2021-06-17' AS Date), CAST(N'2021-07-01' AS Date), N'false')
INSERT [dbo].[tbl_Exam] ([ExamID], [ExamName], [ExamTypeID], [StartDate], [EndDate], [IsCurrent]) VALUES (6, N'2ndMonthly', 2, CAST(N'2021-07-15' AS Date), CAST(N'2021-07-30' AS Date), N'true')
SET IDENTITY_INSERT [dbo].[tbl_Exam] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ExamType] ON 

INSERT [dbo].[tbl_ExamType] ([ExamTypeID], [Name]) VALUES (1, N'1st Monthly')
INSERT [dbo].[tbl_ExamType] ([ExamTypeID], [Name]) VALUES (2, N'2nd Monthly')
INSERT [dbo].[tbl_ExamType] ([ExamTypeID], [Name]) VALUES (3, N'Mid Term')
INSERT [dbo].[tbl_ExamType] ([ExamTypeID], [Name]) VALUES (4, N'Final Term')
SET IDENTITY_INSERT [dbo].[tbl_ExamType] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Faculty] ON 

INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (1, N'Athar Abbas', N'dffdxdxdexd', N'45465677676', N'Active', N'5 years', N'abc', N'Male', N'atharabbas@gmail.com', CAST(N'2021-06-26' AS Date), N'Active', N'True', N'1232343433543')
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (2, N'Fahad', N'hdsghfgsdfjd', N'67526253576', N'Active', N'5 years', N'abcd', N'Male', N'fahad@gmail.com', CAST(N'2021-05-17' AS Date), N'Active', N'False', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (3, N'Kamran Khan', N'ewrewrewrwr', N'53454535345', N'Active', N'5 years', N'ggrertret', N'Male', N'kamran@gmail.com', CAST(N'2021-05-28' AS Date), N'Active', N'True', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (4, N'Muhammad Ali', N'fffdsd', N'23232342342', N'Active', N'5 years', N'eeqeqwe', N'--Select--', N'rrrrtcrt22@gghj.com', CAST(N'2021-05-28' AS Date), N'Active', N'True', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (5, N'Mahira ', N'fqdqdf', N'53621535126', N'Active', N'5 years', N'ddwdwdwd', N'FeMale', N'drdrf@jjj.com', CAST(N'2021-05-28' AS Date), N'Active', N'False', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (6, N'Shaista', N'fehfed', N'22132312321', N'Active', N'5 years', N'dwwewew', N'FeMale', N'rrrrtcrt22@gghj.com', CAST(N'2021-05-28' AS Date), N'Active', N'False', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (7, N'Rizwan Safder', N'weqweqwe', N'23232343242', N'Active', N'5 years', N'dwweqweq', N'Male', N'rizwan@gmail.com', CAST(N'2021-05-28' AS Date), N'Active', N'True', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (8, N'Kashif', N'dsddwefwefwefewfw', N'43424342423', N'Active', N'5 years', N'kashif', N'Male', N'kashif@hotmail.com', CAST(N'2021-06-02' AS Date), N'Active', N'True', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (14, N'dwdw', N'wedwedwe', N'34435667689', N'hthy', N'5 years', N'&nbsp;', N'Male', N'wefwe@gmail.com', CAST(N'2021-06-16' AS Date), N'Active', N'True', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (15, N'dwd', N'wddqwdwq', N'32342423432', N'sadwd', N'5 years', N'&nbsp;', N'Male', N'sww@dfds.com', CAST(N'2021-06-17' AS Date), N'Active', N'True', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (16, N'Basit', N'dsdssd', N'24343676809', N'bcom', N'5 years', N'basit', N'Male', N'basit@gmail.com', CAST(N'2021-06-21' AS Date), N'Active', N'True', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (17, N'dwefwef', N'fwefwefwf', N'24343676809', N'dsfsfsdfsd', N'5 years', N'fsdfsdfsdfs', N'Male', N'rrrrtcrt22@gghj.com', CAST(N'2021-06-21' AS Date), N'Active', N'True', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (18, N'wddwed', N'dwedwedwedwe', N'45465677676', N'bcom', N'dwedw', N'asdfgh', N'Male', N'atharabbas@gmail.com', CAST(N'2021-06-21' AS Date), N'Active', N'True', NULL)
INSERT [dbo].[tbl_Faculty] ([FacultyID], [FacultyName], [Address], [Contact], [Qualification], [Experience], [Password], [Gender], [Email], [JoinDate], [Status], [IsVisiting], [Cnic]) VALUES (19, N'Athar Abbas', N'dwdwdwd', N'45465677676', N'bcom', N'5 years', N'dfdfdf', N'Male', N'atharabbas@gmail.com', CAST(N'2021-06-23' AS Date), N'Active', N'True', NULL)
SET IDENTITY_INSERT [dbo].[tbl_Faculty] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FacultyAttendance] ON 

INSERT [dbo].[tbl_FacultyAttendance] ([FAStatusID], [FacultyID], [DateDay], [Status]) VALUES (12, 1, CAST(N'2021-11-06' AS Date), N'Present')
INSERT [dbo].[tbl_FacultyAttendance] ([FAStatusID], [FacultyID], [DateDay], [Status]) VALUES (14, 1, CAST(N'2021-12-06' AS Date), N'Absent')
INSERT [dbo].[tbl_FacultyAttendance] ([FAStatusID], [FacultyID], [DateDay], [Status]) VALUES (15, 1, CAST(N'2021-05-31' AS Date), N'Present')
INSERT [dbo].[tbl_FacultyAttendance] ([FAStatusID], [FacultyID], [DateDay], [Status]) VALUES (16, 1, CAST(N'2021-05-31' AS Date), N'Present')
INSERT [dbo].[tbl_FacultyAttendance] ([FAStatusID], [FacultyID], [DateDay], [Status]) VALUES (17, 2, CAST(N'2021-05-31' AS Date), N'Absent')
INSERT [dbo].[tbl_FacultyAttendance] ([FAStatusID], [FacultyID], [DateDay], [Status]) VALUES (18, 1, CAST(N'2021-05-31' AS Date), N'Absent')
INSERT [dbo].[tbl_FacultyAttendance] ([FAStatusID], [FacultyID], [DateDay], [Status]) VALUES (19, 1, CAST(N'2021-05-31' AS Date), N'Present')
SET IDENTITY_INSERT [dbo].[tbl_FacultyAttendance] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FacultyDetail] ON 

INSERT [dbo].[tbl_FacultyDetail] ([FDID], [FacultyID], [ClassID], [SectionID], [CourseID]) VALUES (3, 1, 1, 1, 1)
INSERT [dbo].[tbl_FacultyDetail] ([FDID], [FacultyID], [ClassID], [SectionID], [CourseID]) VALUES (4, 2, 1, 1, 3)
INSERT [dbo].[tbl_FacultyDetail] ([FDID], [FacultyID], [ClassID], [SectionID], [CourseID]) VALUES (21, 16, 3, 11, 6)
INSERT [dbo].[tbl_FacultyDetail] ([FDID], [FacultyID], [ClassID], [SectionID], [CourseID]) VALUES (22, 8, 3, 11, 8)
SET IDENTITY_INSERT [dbo].[tbl_FacultyDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Lock] ON 

INSERT [dbo].[tbl_Lock] ([LockID], [Date], [SessionID], [ExamID]) VALUES (1, CAST(N'2021-06-29' AS Date), 5, 4)
SET IDENTITY_INSERT [dbo].[tbl_Lock] OFF
GO
INSERT [dbo].[tbl_Login] ([UserID], [Password]) VALUES (1, N'ABC')
GO
SET IDENTITY_INSERT [dbo].[tbl_Section] ON 

INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (1, N'1a')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (2, N'1b')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (3, N'1c')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (4, N'1d')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (5, N'2a')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (6, N'1a')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (7, N'2a')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (8, N'2b')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (9, N'2c')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (10, N'2d')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (11, N'3a')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (12, N'3b')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (13, N'3c')
INSERT [dbo].[tbl_Section] ([SectionID], [SectionName]) VALUES (14, N'3d')
SET IDENTITY_INSERT [dbo].[tbl_Section] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Session] ON 

INSERT [dbo].[tbl_Session] ([SessionID], [SessionName], [IsCurrent]) VALUES (5, N'2020-21', N'True')
INSERT [dbo].[tbl_Session] ([SessionID], [SessionName], [IsCurrent]) VALUES (6, N'2018-19', N'False')
INSERT [dbo].[tbl_Session] ([SessionID], [SessionName], [IsCurrent]) VALUES (7, N'2016-17', N'False')
INSERT [dbo].[tbl_Session] ([SessionID], [SessionName], [IsCurrent]) VALUES (8, N'2019-20', N'False')
SET IDENTITY_INSERT [dbo].[tbl_Session] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Standard] ON 

INSERT [dbo].[tbl_Standard] ([StandardID], [Description]) VALUES (1, N'Standard 1')
INSERT [dbo].[tbl_Standard] ([StandardID], [Description]) VALUES (2, N'Standard 2')
INSERT [dbo].[tbl_Standard] ([StandardID], [Description]) VALUES (3, N'Standard 3')
INSERT [dbo].[tbl_Standard] ([StandardID], [Description]) VALUES (4, N'Standard 4')
INSERT [dbo].[tbl_Standard] ([StandardID], [Description]) VALUES (5, N'Standard 5')
INSERT [dbo].[tbl_Standard] ([StandardID], [Description]) VALUES (6, N'Standard 6')
INSERT [dbo].[tbl_Standard] ([StandardID], [Description]) VALUES (7, N'Standard 7')
INSERT [dbo].[tbl_Standard] ([StandardID], [Description]) VALUES (8, N'Standard 8')
INSERT [dbo].[tbl_Standard] ([StandardID], [Description]) VALUES (9, N'Standard 9')
INSERT [dbo].[tbl_Standard] ([StandardID], [Description]) VALUES (10, N'Standard 10')
SET IDENTITY_INSERT [dbo].[tbl_Standard] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_StudAttendance] ON 

INSERT [dbo].[tbl_StudAttendance] ([SAttendance], [StudentID], [DateDay], [Status]) VALUES (1, 2, CAST(N'2021-06-26T00:00:00.000' AS DateTime), N'Present')
INSERT [dbo].[tbl_StudAttendance] ([SAttendance], [StudentID], [DateDay], [Status]) VALUES (2, 3, CAST(N'2021-06-26T00:00:00.000' AS DateTime), N'Absent')
SET IDENTITY_INSERT [dbo].[tbl_StudAttendance] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_StudClassInfo] ON 

INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (18, 5, 1, 1, 6)
INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (19, 5, 2, 1, 1)
INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (20, 5, 3, 3, 11)
INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (21, 5, 14, 3, 14)
INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (22, 5, 12, 3, 11)
INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (23, 5, 6, 3, 11)
INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (24, 5, 15, 3, 11)
INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (25, 5, 22, 3, 11)
INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (26, 5, 5, 3, 11)
INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (27, 5, 26, 3, 11)
INSERT [dbo].[tbl_StudClassInfo] ([SCIID], [SessionID], [StudentID], [ClassID], [SectionID]) VALUES (28, 6, 14, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_StudClassInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Student] ON 

INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (1, N'Ahmed', N'Ali Shaikh', N'Male', N'12345678901', N'abcdefghi', N'1345678901234', CAST(N'1999-04-01' AS Date), 21, CAST(N'2019-02-04' AS Date), N'Abcd', N'inActive')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (2, N'danish Aziz', N'khan', N'Male', N'10345454546', N'qwerrtugfdx', N'2000000000000', CAST(N'2021-02-13' AS Date), 3, CAST(N'2021-02-13' AS Date), N'abc', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (3, N'Usman', N'Aziz', N'Male', N'01230000000', N'safdfsdfasfdfasg', N'1110000000000', CAST(N'2021-02-16' AS Date), 5, CAST(N'2021-02-16' AS Date), N'asdfgh', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (4, N'Basit', N'Ali', N'Male', N'11000000000', N'ddwwwewewqeqw', N'1000000000000', CAST(N'2021-02-17' AS Date), 6, CAST(N'2021-02-17' AS Date), N'ddssdsd', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (5, N'Ali Muhammad', N'Ali Ahmed', N'Male', N'32234566767', N'd wfewfewfew', N'3244340000000', CAST(N'2013-01-24' AS Date), 8, CAST(N'2021-06-02' AS Date), N'rwcerwercrwecr', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (6, N'Muhammad Hussain', N'Ali Muhammad', N'Male', N'67236542354', N'fwfwef', N'34442-2422423-4', CAST(N'2010-01-15' AS Date), 11, CAST(N'2021-06-09' AS Date), N'fgfdf', N'inActive')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (11, N'Usman', N'khan', N'Male', N'43543434677', N'dfsdgjdjjgdvvdvdvuvd', N'3521347124761', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-19' AS Date), N'abcdefg', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (12, N'Fahad', N'Fahad', N'Male', N'12345678', N'abc', N'5675657656576', CAST(N'2020-01-01' AS Date), 19, CAST(N'2020-01-01' AS Date), N'abc21323', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (13, N'test', N'test', N'test', N'test', N'test', N'test', CAST(N'2020-01-01' AS Date), 1, CAST(N'2020-01-01' AS Date), N'test', N'test')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (14, N'Kamran', N'Ali', N'Male', N'32113243434', N'sersresresrzrz', N'3453543543543', CAST(N'2021-03-29' AS Date), 0, CAST(N'2021-04-24' AS Date), N'abc', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (15, N'Ahmed', N'es', N'Male', N'54543345354', N'rrrdd', N'1111111111111', CAST(N'2021-03-29' AS Date), 0, CAST(N'2021-04-24' AS Date), N'abcd123', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (16, N'wqwwe', N'wqdqw', N'Male', N'13223324324', N'wewedwedwe', N'1343243243430', CAST(N'2009-01-29' AS Date), 12, CAST(N'2021-04-24' AS Date), N'abcd', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (17, N'dsds', N'qeqwe', N'Male', N'12312312300', N'dqdqwdqwdqw', N'1000000000000', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-24' AS Date), N'sdddas', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (18, N'sssddsd', N'qdwdwq', N'Male', N'1000000000', N'dqweqweqw', N'10000000', CAST(N'2021-03-29' AS Date), 0, CAST(N'2021-04-24' AS Date), N'wddwdwedw', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (19, N'ddsdfsd', N'sadasd', N'Male', N'10000000', N'dasdasd', N'10000000000', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-24' AS Date), N'ddffdfds', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (20, N'Imran', N'Aziz', N'Male', N'23435676775', N'rgrggthgtyhyhtht', N'53344566656', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-25' AS Date), N'gbgbgbfeferf', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (21, N'Usman', N'Ali', N'Male', N'55675432110', N'rffgyggfesws', N'4555654324444', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-25' AS Date), N'gthghtgh', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (22, N'mobeen', N'Ahmed', N'Male', N'09328982349', N'jfienffnvnhfnvfv', N'5879475893857', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-25' AS Date), N'rrfefeeeeeeeeeeee', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (23, N'mobeen', N'Ahmed', N'Male', N'85593485785', N'bhfhebefghbvhfbvhef', N'4534543543345', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-25' AS Date), N'frgerggrgegeg', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (24, N'dede', N'efece', N'Male', N'43432435450', N'rgrfgrfvrfv', N'3424454435345', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-25' AS Date), N'fvfvfvfdf', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (25, N'Ahmed', N'khan', N'Male', N'34433434444', N'rerrefer', N'3342334556677', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-25' AS Date), N'rtgrgrgrg', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (26, N'danish', N'Ali', N'Male', N'34234234232', N'dtdrdcrcrcrdc', N'4345335345345', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-25' AS Date), N'cfcf', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (27, N'Ahmed', N'khan', N'Male', N'4453450000', N'hghhhvhvh', N'3243342400000', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-30' AS Date), N'gghgh', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (28, N'Imran', N'Aziz', N'Male', N'6545435400', N'hfhgghc', N'543323400000', CAST(N'2021-03-28' AS Date), 0, CAST(N'2021-04-30' AS Date), N'gvhvg', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (29, N'Faiza', N'Ali', N'Female', N'31212323213', N'dwdwwedwwew', N'2342323432432', CAST(N'2014-01-24' AS Date), 7, CAST(N'2021-05-10' AS Date), N'sadadasd', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (30, N'Maaz ahmed khan', N'Ali Khan', N'Male', N'32423324422', N'werwerwerwerwerwe', N'4234324254566', CAST(N'2016-11-18' AS Date), 4, CAST(N'2021-05-10' AS Date), N'werwerewr', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (31, N'Kabir', N'Ahmed', N'Male', N'32332432432', N'ffeferfedfsfefs', N'3232432343243', CAST(N'2016-12-15' AS Date), 4, CAST(N'2021-05-15' AS Date), N'dfgerg', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (32, N'Ahmed Khan', N'Khan Muhammad', N'Male', N'21321123244', N'sffsffsdf', N'3454534545353', CAST(N'2010-01-29' AS Date), 11, CAST(N'2021-06-02' AS Date), N'fdfsfdsf', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (33, N'Abdul Malik', N'Abdul Khaliq', N'Male', N'32324343556', N'dweewrerw', N'4234344354554', CAST(N'2012-01-19' AS Date), 9, CAST(N'2021-06-02' AS Date), N'er3r34rc', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (34, N'Imran Ali', N'Ali', N'Male', N'34534354546', N'drdtrddd', N'3434545657788', CAST(N'2012-01-19' AS Date), 9, CAST(N'2021-06-02' AS Date), N'drfdxfxf', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (35, N'Hamza', N'Rizwan', N'Male', N'23213231220', N'fwdfwewed', N'2324324234324', CAST(N'2013-01-02' AS Date), 8, CAST(N'2021-06-02' AS Date), N'wdwqdqwqeqw', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (36, N'Muhammad Asif Iqbal', N'Asif Iqbal', N'Male', N'44555555454', N'fefefcefee', N'4353455345535', CAST(N'2015-02-06' AS Date), 6, CAST(N'2021-06-02' AS Date), N'wwfewfe', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (37, N'danish', N'feferf', N'Male', N'32324000000', N'dewrcw', N'3244565467768', CAST(N'2012-01-27' AS Date), 9, CAST(N'2021-06-02' AS Date), N'dewcwe', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (38, N'Khalid', N'chisti', N'Male', N'35244566554', N'vgfhwgfvw', N'5342334224333', CAST(N'2013-01-25' AS Date), 8, CAST(N'2021-06-02' AS Date), N'wdjhdwjhf', N'Active')
INSERT [dbo].[tbl_Student] ([StudentID], [StudentName], [FatherName], [Gender], [Contact], [Address], [Cnic], [DateOfBirth], [Age], [DateOfAdmission], [Password], [Status]) VALUES (39, N'Muhammad Hussain', N'Ali Hussain', N'Male', N'42534326453', N'fwgfwytfw', N'3243243242342', CAST(N'2006-01-20' AS Date), 15, CAST(N'2021-06-09' AS Date), N'dgfdfw', N'inActive')
SET IDENTITY_INSERT [dbo].[tbl_Student] OFF
GO
ALTER TABLE [dbo].[tbl_ClassSectionDetails]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ClassSectionDetails_tbl_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[tbl_Class] ([ClassID])
GO
ALTER TABLE [dbo].[tbl_ClassSectionDetails] CHECK CONSTRAINT [FK_tbl_ClassSectionDetails_tbl_Class]
GO
ALTER TABLE [dbo].[tbl_ClassSectionDetails]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ClassSectionDetails_tbl_Section] FOREIGN KEY([SectionID])
REFERENCES [dbo].[tbl_Section] ([SectionID])
GO
ALTER TABLE [dbo].[tbl_ClassSectionDetails] CHECK CONSTRAINT [FK_tbl_ClassSectionDetails_tbl_Section]
GO
ALTER TABLE [dbo].[tbl_CurrentClassResults]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CurrentClassResults_tbl_CurrentResult] FOREIGN KEY([CurrentResultID])
REFERENCES [dbo].[tbl_CurrentResult] ([CurrentResultID])
GO
ALTER TABLE [dbo].[tbl_CurrentClassResults] CHECK CONSTRAINT [FK_tbl_CurrentClassResults_tbl_CurrentResult]
GO
ALTER TABLE [dbo].[tbl_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Detail_tbl_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[tbl_Course] ([CourseID])
GO
ALTER TABLE [dbo].[tbl_Detail] CHECK CONSTRAINT [FK_tbl_Detail_tbl_Course]
GO
ALTER TABLE [dbo].[tbl_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Detail_tbl_Faculty] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[tbl_Faculty] ([FacultyID])
GO
ALTER TABLE [dbo].[tbl_Detail] CHECK CONSTRAINT [FK_tbl_Detail_tbl_Faculty]
GO
ALTER TABLE [dbo].[tbl_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Detail_tbl_Header] FOREIGN KEY([HeaderID])
REFERENCES [dbo].[tbl_Header] ([HeaderID])
GO
ALTER TABLE [dbo].[tbl_Detail] CHECK CONSTRAINT [FK_tbl_Detail_tbl_Header]
GO
ALTER TABLE [dbo].[tbl_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Detail_tbl_Section] FOREIGN KEY([SectionID])
REFERENCES [dbo].[tbl_Section] ([SectionID])
GO
ALTER TABLE [dbo].[tbl_Detail] CHECK CONSTRAINT [FK_tbl_Detail_tbl_Section]
GO
ALTER TABLE [dbo].[tbl_Exam]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Exam_tbl_ExamType] FOREIGN KEY([ExamTypeID])
REFERENCES [dbo].[tbl_ExamType] ([ExamTypeID])
GO
ALTER TABLE [dbo].[tbl_Exam] CHECK CONSTRAINT [FK_tbl_Exam_tbl_ExamType]
GO
ALTER TABLE [dbo].[tbl_FacultyAttendance]  WITH CHECK ADD  CONSTRAINT [FK_tbl_FacultyAttendance_tbl_Faculty] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[tbl_Faculty] ([FacultyID])
GO
ALTER TABLE [dbo].[tbl_FacultyAttendance] CHECK CONSTRAINT [FK_tbl_FacultyAttendance_tbl_Faculty]
GO
ALTER TABLE [dbo].[tbl_Header]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Header_tbl_Session] FOREIGN KEY([SessionID])
REFERENCES [dbo].[tbl_Session] ([SessionID])
GO
ALTER TABLE [dbo].[tbl_Header] CHECK CONSTRAINT [FK_tbl_Header_tbl_Session]
GO
ALTER TABLE [dbo].[tbl_HistoryResult]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HistoryResult_tbl_CurrentClassResults] FOREIGN KEY([CCRID])
REFERENCES [dbo].[tbl_CurrentClassResults] ([CCRID])
GO
ALTER TABLE [dbo].[tbl_HistoryResult] CHECK CONSTRAINT [FK_tbl_HistoryResult_tbl_CurrentClassResults]
GO
ALTER TABLE [dbo].[tbl_StudAttendance]  WITH CHECK ADD  CONSTRAINT [FK_tbl_StudAttendnce_tbl_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[tbl_Student] ([StudentID])
GO
ALTER TABLE [dbo].[tbl_StudAttendance] CHECK CONSTRAINT [FK_tbl_StudAttendnce_tbl_Student]
GO
ALTER TABLE [dbo].[tbl_StudClassInfo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_StudClassInfo_tbl_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[tbl_Student] ([StudentID])
GO
ALTER TABLE [dbo].[tbl_StudClassInfo] CHECK CONSTRAINT [FK_tbl_StudClassInfo_tbl_Student]
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckCurrentClassResult]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_CheckCurrentClassResult]

@exid int,
@cid int,
@sid int

as

if exists (select * from  tbl_CurrentClassResults

where StudentID=@sid and ClassID=@cid and ExamID=@exid)
begin
select 1 as Result;
end
else
select 0 as Result;
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckFacDetail]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CheckFacDetail]


@fid int,
@cid int,
@sid int,
@Corid int

as

if exists (select * from  tbl_FacultyDetail
where facultyID=@fid and  CourseID=@Corid and  ClassID=@cid and SectionID=@sid)
begin
select 1 as Result;
end
else
select 0 as Result;
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckFacDetail1]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_CheckFacDetail1]


@cid int,
@sid int,
@Corid int

as

if exists (select * from  tbl_FacultyDetail
where CourseID=@Corid and  ClassID=@cid and SectionID=@sid)
begin
select 1 as Result;
end
else
select 0 as Result;
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckLock]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CheckLock]


@sid int,
@eid int
as

if exists (select * from tbl_Lock
where  SessionID=@sid and ExamID=@eid)

begin
select 1 as Result;
end
else
select 0 as Result;
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckMSDetail]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_CheckMSDetail]


@sessid int,
@eid int,
@cid int,
@sid int,
@Corid int

as

if exists (select * from  tbl_CurrentResult
where SessionID=@sessid and ExamID=@eid and  ClassID=@cid and StudentID=@sid and CourseID=@Corid)
begin
select 1 as Result;
end
else
select 0 as Result;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAdmin]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetAdmin]
as
select * from tbl_Admin
GO
/****** Object:  StoredProcedure [dbo].[sp_GetApplicantMasterData]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetApplicantMasterData]

as

select * from tbl_Applicant
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCCR]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetCCR]

as


select * from tbl_CurrentClassResults
GO
/****** Object:  StoredProcedure [dbo].[sp_GetClass]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetClass]

as

select * from tbl_class
GO
/****** Object:  StoredProcedure [dbo].[sp_GetClassByStudentID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetClassByStudentID]

@sid int

as

SELECT c.[ClassID],c.ClassName FROM [tbl_StudClassInfo] sci join tbl_class c on c.ClassID = sci.ClassID
where StudentID=@sid
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCourse]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetCourse]
as
Select * from tbl_Course
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCR]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetCR]

as


select * from tbl_CurrentClassResults
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCurrentClassResult]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetCurrentClassResult]

as

select ex.ExamID,ex.ExamName,c.ClassID,c.ClassName,s.StudentID,s.StudentName,ccr.MarksObtained,ccr.TotalMarks,ccr.Percentage from tbl_CurrentClassResults ccr 
join tbl_Exam ex on ex.ExamID=ccr.ExamID 
join tbl_Class c on c.ClassID=ccr.ClassID
join tbl_CurrentResult cr on cr.CurrentResultID=ccr.CurrentResultID
join tbl_Student s on s.StudentID=ccr.StudentID

GO
/****** Object:  StoredProcedure [dbo].[sp_GetCurrentResult]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetCurrentResult]

as

select sess.SessionID,sess.SessionName, ex.ExamID,ex.ExamName,c.ClassID,c.ClassName,s.StudentID,s.StudentName,cor.CourseName,ccr.MarksObtained,ccr.TotalMarks from tbl_CurrentResult ccr 
join tbl_Exam ex on ex.ExamID=ccr.ExamID 
join tbl_Class c on c.ClassID=ccr.ClassID
join tbl_Student s on s.StudentID=ccr.StudentID
join tbl_Session sess on sess.SessionID=ccr.SessionID
join tbl_Course cor on cor.CourseID=ccr.CourseID
where sess.IsCurrent='true' and ex.IsCurrent='true'
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCurrentSession]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetCurrentSession]
as
select SessionID,SessionName from tbl_Session 
where IsCurrent= 'true'
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDetail]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetDetail]
as
select * from tbl_Detail
GO
/****** Object:  StoredProcedure [dbo].[sp_GetExam]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetExam]
as
select * from tbl_Exam
GO
/****** Object:  StoredProcedure [dbo].[sp_GetExamType]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetExamType]
as
select * from tbl_ExamType
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFacCourses]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetFacCourses]

as

Select * from tbl_FacultyCourses
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFacDetails]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetFacDetails]


as

select fd.FacultyID,f.FacultyName,fd.ClassID,c.ClassName,fd.SectionID,sec.SectionName,fd.CourseID,cor.CourseName from tbl_FacultyDetail fd join  tbl_Faculty f on f.FacultyID=fd.FacultyID join tbl_Class c on
fd.ClassID=c.ClassID join tbl_Section sec on fd.SectionID=sec.SectionID join tbl_Course cor on fd.CourseID=cor.CourseID
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFacDetailsByFacID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetFacDetailsByFacID]

@fid int
as

select fd.FacultyID,f.FacultyName,fd.ClassID,c.ClassName,fd.SectionID,sec.SectionName,fd.CourseID,cor.CourseName from tbl_FacultyDetail fd join  tbl_Faculty f on f.FacultyID=fd.FacultyID join tbl_Class c on
fd.ClassID=c.ClassID join tbl_Section sec on fd.SectionID=sec.SectionID join tbl_Course cor on fd.CourseID=cor.CourseID
where f.FacultyID=@fid
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFacID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetFacID]

as

select top 1 FacultyID from tbl_Faculty order by FacultyID desc
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFaculty]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetFaculty]
as
select * from tbl_Faculty
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFacultyAttendance]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetFacultyAttendance]



as

select fa.*,f.FacultyName from tbl_FacultyAttendance fa join tbl_Faculty f on fa.FacultyID=f.FacultyID
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFacultyAttendanceByID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetFacultyAttendanceByID]


@fid int
as

select fa.*,f.FacultyName from tbl_FacultyAttendance fa join tbl_Faculty f on fa.FacultyID=f.FacultyID 
where f.FacultyID=@fid
GO
/****** Object:  StoredProcedure [dbo].[sp_GetHeader]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetHeader]
as
select * from tbl_Header
GO
/****** Object:  StoredProcedure [dbo].[sp_GetHeaderByID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetHeaderByID]

@id int
as

select * from tbl_Header
where HeaderID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPassingStudents]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetPassingStudents]

as

select s.StudentID,StudentName,Percentage from tbl_CurrentClassResults ccr
join tbl_CurrentResult cr on cr.CurrentResultID=ccr.CurrentResultID
join tbl_Exam ex on ex.ExamID=ccr.ExamID
join tbl_Student s on s.StudentID=ccr.StudentID
join tbl_Session ss on ss.SessionID=cr.SessionID

where ExamName like '%Final%' and Percentage > 60 and ss.IsCurrent='true'
group By s.StudentID,StudentName,Percentage
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRemainingFaculty]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetRemainingFaculty]


as

select f.FacultyID,f.FacultyName from tbl_Faculty f
where f.FacultyID not in (Select tfc.FacultyID From tbl_FacultyDetail tfc)
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRemainingStudents]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetRemainingStudents]


as

select s.StudentID,s.StudentName from tbl_Student s 
where s.StudentID not in (Select tsc.StudentID From tbl_StudClassInfo tsc)
and Status='Active'
GO
/****** Object:  StoredProcedure [dbo].[sp_GetResultHistory]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_GetResultHistory]

as


select Ex.ExamName,c.ClassName,s.StudentID,StudentName,ccr.MarksObtained,ccr.TotalMarks,Percentage from tbl_CurrentClassResults ccr
join tbl_CurrentResult cr on cr.CurrentResultID=ccr.CurrentResultID
join tbl_Exam ex on ex.ExamID=ccr.ExamID
join tbl_Student s on s.StudentID=ccr.StudentID
join tbl_Session ss on ss.SessionID=cr.SessionID
join tbl_Class c on c.ClassID=ccr.ClassID

where ExamName like '%Final%' and s.StudentID=1
group By Ex.ExamName,c.ClassName,s.StudentID,StudentName,ccr.MarksObtained,ccr.TotalMarks,Percentage
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSCI]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetSCI]
as
Select sci.StudentID,s.StudentName,sci.ClassID,c.ClassName,sci.SectionID,sec.SectionName from tbl_StudClassInfo sci join  tbl_Student s on s.StudentID=sci.StudentID
join tbl_Class c on c.ClassID=sci.ClassID join tbl_Section sec on sec.SectionID=sci.SectionID
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSCIByStudentID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_GetSCIByStudentID]

@sid int
as
Select sci.StudentID,s.StudentName,sci.ClassID,c.ClassName,sci.SectionID,sec.SectionName from tbl_StudClassInfo sci join  tbl_Student s on s.StudentID=sci.StudentID
join tbl_Class c on c.ClassID=sci.ClassID join tbl_Section sec on sec.SectionID=sci.SectionID 
where s.StudentID=@sid
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSection]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetSection]
as
Select * from tbl_Section
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSectionByClassID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetSectionByClassID] 

@cid int

as

select c.SectionID,s.SectionName from tbl_Class c join tbl_Section s on c.SectionID=s.SectionID
where c.ClassID=@cid
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSectionByID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[sp_GetSectionByID]
@id int
as
Select * from tbl_Section
Where SectionID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSession]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetSession]

as

select * from tbl_Session
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStandard]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetStandard]
as
Select * from tbl_Standard
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStudAttendance]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[sp_GetStudAttendance]
as

select sa.*,s.StudentName from tbl_StudAttendance sa join tbl_Student s on s.StudentID=sa.StudentID
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStudAttendanceByID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  proc [dbo].[sp_GetStudAttendanceByID]

@sid int
as

select sa.*,s.StudentName from tbl_StudAttendance sa join tbl_Student s on s.StudentID=sa.StudentID
where s.StudentID=@sid
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStudDetails]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetStudDetails]

@ClassID int,
@SectionID int

as

select s.StudentID,s.StudentName from tbl_StudClassInfo sc join tbl_Student s on s.StudentID=sc.StudentID
where sc.ClassID=@ClassID and sc.SectionID=@SectionID
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStudent]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[sp_GetStudent]
As
select * from tbl_Student
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStudentByID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_GetStudentByID]
@id int
as
begin
select * from tbl_Student
where StudentID=@id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStudID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetStudID]
as
begin

select top 1 StudentID from tbl_Student order by StudentID desc

end
GO
/****** Object:  StoredProcedure [dbo].[sp_insertApplicant]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_insertApplicant]

@name varchar(50),
@email varchar(50),
@contact varchar(50),
@address varchar(50),
@age int null,
@exp varchar(50),
@desc varchar(50) null

as

insert into tbl_Applicant(ApplicantName,Email,contact,Address,Age,Experience,Description) values ( @name, @email,@contact,@address,@age,@exp,@desc)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertClass]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertClass]

@cname varchar(50)

as

insert into tbl_Class
(ClassName) values (@cname)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertClassDetails]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertClassDetails]

@cid int,
@courseid int


as

insert into tbl_ClassSectionDetails (ClassID,SectionID) values (@cid,@courseid)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCourse]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_InsertCourse]

@CName varchar(50)
as

insert into tbl_Course(CourseName)values(@CName)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCurrentClassResult]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertCurrentClassResult]

as

insert into tbl_CurrentClassResults(ExamID, StudentID,ClassID,MarksObtained,TotalMarks,Percentage,CurrentResultID)
select ExamID,StudentID,ClassID,sum(MarksObtained) as MarksObtained,sum(TotalMarks) TotalMarks,AVG(MarksObtained*100/TotalMarks) as Percentage,CurrentResultID from tbl_CurrentResult
group by ExamID, StudentID,ClassID,CurrentResultID
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCurrentResult]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertCurrentResult]

@sessid int,
@eid int,
@cid int,
@sid int,
@Courseid int,
@marksobt float,
@tm int


as

insert into tbl_CurrentResult
(SessionID,ExamID,ClassID,StudentID,CourseID,MarksObtained,TotalMarks) values (@sessid,@eid,@cid,@sid,@Courseid,@marksobt,@tm)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertDetail]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertDetail]

@section int,
@faculty int,
@course int,
@Header int

as

begin

insert into tbl_Detail (SectionID,FacultyID,CourseID,HeaderID) values ( @section,@faculty,@course,@Header)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertExam]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertExam]

@Ename varchar(50),
@ETID int,
@SD DateTime,
@ED DateTime,
@iscurr varchar(50)

as

insert into tbl_Exam(ExamName,ExamTypeID,StartDate,EndDate,IsCurrent)values(@Ename,@ETID,@SD,@ED,@iscurr)
GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertFacDetail]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_InsertFacDetail]


@fid int,
@cid int,
@sid int,
@Corid int

as

insert into tbl_FacultyDetail(facultyID,ClassID,SectionID,courseID) values (@fid,@cid,@sid,@Corid)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFaculty]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertFaculty]
@Name VarChar(50),
@Address VarChar(50),
@Contact VarChar(50),
@Qualification VarChar(50),
@Exp VarChar(50),
@Pass VarChar(50),
@Gender VarChar(50),
@Email VarChar(50),
@JD datetime,
@Status VarChar(50),
@IsVisiting varchar(50),
@cnic varchar(50)

as

begin

Insert into tbl_Faculty(FacultyName,Address,Contact,Qualification,Experience,Password,Gender,Email,JoinDate,Status,IsVisiting,Cnic)
values (@Name,@Address,@Contact,@Qualification,@Exp,@Pass,@Gender,@Email,@JD,@Status,@IsVisiting,@cnic)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFAStatus]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertFAStatus]

@fid int,
@dd datetime,
@status varchar(50)
as

insert into tbl_FacultyAttendance( FacultyID,DateDay,Status)values(@fid,@dd,@status)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertHeader]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertHeader]
@session int,
@Class int

as

begin

Insert into tbl_Header (SessionID,ClassID) 
values 
(@session,@Class) 
Select SCOPE_IDENTITY()

end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertLock]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_InsertLock]

@dd date,
@sid int,
@eid int
as

insert into tbl_Lock(Date,SessionID,ExamID)values(@dd,@sid,@eid)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOnlineForm]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertOnlineForm]

@sname varchar(50),
@fname varchar(50),
@dob date,
@age int,
@contact varchar(50),
@address varchar(50),
@gender varchar(50),
@cnic varchar(50)

as

insert into tbl_OnlineAdmission (StudentName,FatherName,Gender,DateOfBirth,age,cnic,Address,Contact)
values
(@sname,@fname,@gender,@dob,@age,@cnic,@address,@contact)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertPayroll]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_InsertPayroll]

@fid int,
@bp varchar(50),
@all varchar(50),
@np varchar(50)
as

insert into tbl_Payroll (FacultyID,BasicPay,Allowances,NetSalary)
values (@fid,@bp,@all,@np)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSection]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[sp_InsertSection]
@sectionName varchar(50)
as
Insert into tbl_Section
(SectionName)
values
(@sectionName)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSession]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertSession]

@sname varchar(50),
@IScurrent varchar(50)


as

insert into tbl_Session (SessionName,IsCurrent) values (@sname,@IScurrent)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertStudClassInfo]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertStudClassInfo]

@sessid int,
@SID int,
@CID int,
@SECID int


as

insert into tbl_StudClassInfo
(SessionID,StudentID,ClassID,SectionID) values (@sessid,@SID,@CID,@SECID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertStudent]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[sp_InsertStudent]

@StudentName VarChar(50),
@FatherName VarChar(50),
@Gender VarChar(50),
@Contact VarChar(50),
@Address VarChar(50),
@CNIC VarChar(50),
@DateOfBirth DateTime,
@Age int,
@DateOfAdmission DateTime,
@Password VarChar(50),
@Status VarChar(50)

as

begin

Insert into tbl_Student (StudentName,FatherName,Gender,Contact,Address,Cnic,DateOfBirth,Age,DateOfAdmission,Password,Status)
values (@StudentName,@FatherName,@Gender,@Contact,@Address,@CNIC,@DateOfBirth,@Age,@DateOfAdmission,@Password,@Status)
return SCOPE_IDENTITY()
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertStudStatus]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_InsertStudStatus]
@sid int,
@dd datetime,
@status varchar(50)
as

insert into tbl_StudAttendance( StudentID,DateDay,Status)values(@sid,@dd,@status)
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadMSGridByFID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadMSGridByFID]
@fid int
as
SELECT sess.SessionID ,sess.SessionName,ex.ExamID,ex.ExamName,sci.StudentID ,s.StudentName,cr.MarksObtained,cr.TotalMarks,fd.CourseID FROM [tbl_FacultyDetail] fd join tbl_StudClassInfo sci on sci.ClassID=fd.ClassID 
and sci.SectionID=fd.SectionID
join tbl_CurrentResult cr on sci.StudentID=cr.StudentID
join tbl_Session sess on sess.SessionID=cr.SessionID
join tbl_Exam ex on ex.ExamID=cr.ExamID
join tbl_Student s on s.StudentID=sci.StudentID
where fd.FacultyID=@fid
GO
/****** Object:  StoredProcedure [dbo].[sp_locktable]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_locktable]

@access bit
as

insert into tbl_CurrentResult(Access)values(@access)
GO
/****** Object:  StoredProcedure [dbo].[sp_LoginFaculty]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoginFaculty]

@fid int,
@pass varchar(50)
as

Select FacultyID,Password from tbl_Faculty
where FacultyID=@fid AND Password=@pass
GO
/****** Object:  StoredProcedure [dbo].[sp_LoginStudent]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_LoginStudent]

@sid int,
@pass varchar(50)
as

Select Count(*) from tbl_Student
where StudentID=''+@sid+'' AND Password=''+@pass+''
GO
/****** Object:  StoredProcedure [dbo].[sp_UpadteClassDetails]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpadteClassDetails]

@id int,
@cid int,
@secid int

as

update tbl_ClassSectionDetails
set 
ClassID=@cid,SectionID=@secid 
where ClassDetailsID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateClass]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateClass]

@cid int,
@cname varchar(50)

as

update tbl_Class
set
ClassName=@cname
where ClassID=@cid
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCourse]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateCourse]

@id int,
@name varchar(50)

as

update tbl_Course
set CourseName=@name where CourseID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCurrentResult]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateCurrentResult]

@crid int,
@sid int,
@mo float,
@tm int
as

update tbl_CurrentResult
set
MarksObtained=@mo,TotalMarks=@tm
where StudentID=@sid and CurrentResultID=@crid
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateExam]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateExam]

@eid int,
@ename varchar(50),
@et int,
@sd DateTime,
@ed DateTime,
@iscurr varchar(50)

as

update tbl_Exam	
set
ExamName=@ename, ExamTypeID=@et,StartDate=@sd,EndDate=@ed,IsCurrent=@iscurr
where ExamID=@eid
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateExamStatus]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateExamStatus]

@id int,
@isc varchar(50)
as

update tbl_Exam 
set
IsCurrent=@isc
where ExamID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFacDetails]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateFacDetails]

@id int,
@fid int,
@cid int,
@sid int,
@Corid int

as

update tbl_FacultyDetail
set 
facultyID=@fid, CourseID=@Corid,  ClassID=@cid,SectionID=@sid
where FCID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFaculty]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateFaculty]

@id int,
@fname varchar(50),
@address varchar(50),
@contact varchar(50),
@qual varchar(50),
@exp varchar(50),
@pass varchar(50),
@gender varchar(50),
@email varchar(50),
@jd DateTime,
@status varchar(50),
@vf varchar(50),
@cnic varchar(50)

as

update tbl_Faculty 

set FacultyName=@fname ,Qualification=@qual,Gender=@gender,Contact=@contact,Address=@address,Experience=@exp,JoinDate=@jd,
Password=@pass,Status=@status,Email=@email,IsVisiting=@vf,Cnic=@cnic
where FacultyID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFacultyPass]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateFacultyPass]

@fid int,
@pass varchar(50)

as

Update tbl_Faculty
set Password=@pass where FacultyID=@fid
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFacultyStatus]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateFacultyStatus]

@id int
as

update tbl_Faculty 
set Status='InActive'
where FacultyID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateFAStatus]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateFAStatus]

@fid int,
@dd datetime,
@status varchar(50)
as
update tbl_FacultyAttendance
set
FacultyID=@fid,DateDay=@dd,Status=@status
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSection]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[sp_UpdateSection]
@id int, @sectionName varchar(50)
as
Update tbl_Section
Set SectionName = @sectionName
Where SectionID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSession]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateSession]

@id int,
@sname varchar(50),
@IScurrent varchar(50)



as

Update  tbl_Session 
set
SessionName=@sname ,IsCurrent=@IScurrent where SessionID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStudAttendance]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateStudAttendance]

@sid int,
@dd datetime,
@status varchar(50)
as

Update  tbl_StudAttendnce 
set 
StudentID=@sid,DateDay=@dd,Status=@status
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStudClassInfo]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateStudClassInfo]

@id int,
@SID int,
@CID int,
@SECID int,
@sessid int

as

update tbl_StudClassInfo 
set
StudentID=@sid,ClassID=@CID,SectionID=@SECID,SessionID=@sessid where SCIID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStudent]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateStudent]

@id int,
@sname varchar(50),
@fname varchar(50),
@gender varchar(50),
@contact varchar(50),
@address varchar(50),
@cnic varchar(50),
@dob DateTime,
@age int,
@doa DateTime,
@pass varchar(50),
@status varchar(50)

as

update tbl_Student 

set StudentName=@sname,FatherName=@fname,Gender=@gender,Contact=@contact,Address=@address,Cnic=@cnic,DateOfBirth=@dob,Age=@age,
DateOfAdmission=@doa,Password=@pass,Status=@status
where StudentID=@id
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStudentPass]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateStudentPass]

@sid int,
@pass varchar(50)

as

Update tbl_Student
set Password=@pass where StudentID=@sid
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStudentStatus]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateStudentStatus]

@id int
as

update tbl_Student 
set Status='InActive'
where StudentID=@id
GO
/****** Object:  StoredProcedure [dbo].[spGetDetailbyHeaderID]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Proc [dbo].[spGetDetailbyHeaderID]
@id int
as
SELECT [DetailID]
      ,f.[FacultyID]
      ,c.[CourseID]
      ,[HeaderID]
	  ,f.FacultyName
	  ,c.CourseName
  FROM [School Management].[dbo].[tbl_Detail] d
  inner join tbl_Faculty f
  on f.FacultyID=d.FacultyID
  inner join tbl_Course c
  on c.CourseID=d.CourseID
  where HeaderID=@id
GO
/****** Object:  StoredProcedure [dbo].[spGetHeaderInfo]    Script Date: 7/3/2021 11:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Proc [dbo].[spGetHeaderInfo]
as
Select h.*,c.ClassName,s.SessionName From tbl_Header h
Inner Join tbl_Session s
On s.SessionID=h.SessionID
Inner Join tbl_Class c
On c.ClassID=h.ClassID
GO
USE [master]
GO
ALTER DATABASE [School Management] SET  READ_WRITE 
GO
