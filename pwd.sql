USE [master]
GO
/****** Object:  Database [PWDCRM]    Script Date: 2/16/2020 6:32:28 PM ******/
CREATE DATABASE [PWDCRM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PWDCRM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.KSWTECHNOLOGIES\MSSQL\DATA\PWDCRM.mdf' , SIZE = 7232KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PWDCRM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.KSWTECHNOLOGIES\MSSQL\DATA\PWDCRM_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PWDCRM] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PWDCRM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PWDCRM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PWDCRM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PWDCRM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PWDCRM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PWDCRM] SET ARITHABORT OFF 
GO
ALTER DATABASE [PWDCRM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PWDCRM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PWDCRM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PWDCRM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PWDCRM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PWDCRM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PWDCRM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PWDCRM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PWDCRM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PWDCRM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PWDCRM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PWDCRM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PWDCRM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PWDCRM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PWDCRM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PWDCRM] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PWDCRM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PWDCRM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PWDCRM] SET  MULTI_USER 
GO
ALTER DATABASE [PWDCRM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PWDCRM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PWDCRM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PWDCRM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PWDCRM]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AREA]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AREA](
	[SNO] [float] NULL,
	[AName] [nvarchar](255) NULL,
	[Per] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AREAS$]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AREAS$](
	[SNO] [float] NULL,
	[AName] [nvarchar](255) NULL,
	[Per] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BRLIFT]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BRLIFT](
	[SR] [float] NULL,
	[Descrip] [nvarchar](255) NULL,
	[ITEMS] [nvarchar](255) NULL,
	[I] [float] NULL,
	[II] [float] NULL,
	[III] [float] NULL,
	[IV] [float] NULL,
	[V] [float] NULL,
	[VI] [float] NULL,
	[VII] [float] NULL,
	[VIII] [float] NULL,
	[IX] [float] NULL,
	[X] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONS]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONS](
	[SR_NO] [nvarchar](255) NULL,
	[I_SR_NO] [nvarchar](255) NULL,
	[I_CODE] [nvarchar](255) NULL,
	[BRICKS] [nvarchar](255) NULL,
	[STONE] [nvarchar](255) NULL,
	[SOLING] [nvarchar](255) NULL,
	[MURUM] [nvarchar](255) NULL,
	[SAND] [nvarchar](255) NULL,
	[EARTH] [nvarchar](255) NULL,
	[CRUSH] [nvarchar](255) NULL,
	[TIMBER] [nvarchar](255) NULL,
	[STEEL] [nvarchar](255) NULL,
	[CEMENT] [nvarchar](255) NULL,
	[PIPES] [nvarchar](255) NULL,
	[ABOVE] [nvarchar](255) NULL,
	[BITUMINOUS] [nvarchar](255) NULL,
	[ASPHALT] [nvarchar](255) NULL,
	[BELOW] [nvarchar](255) NULL,
	[RUBBLE] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONS_RATE]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONS_RATE](
	[Sr_No] [nvarchar](255) NULL,
	[Item_No] [nvarchar](255) NULL,
	[Material] [nvarchar](255) NULL,
	[Rate] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DMAT]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DMAT](
	[SNO] [float] NULL,
	[MCAT] [nvarchar](255) NULL,
	[MAT] [nvarchar](255) NULL,
	[Rate] [float] NULL,
	[OSMANABAD] [float] NULL,
	[LATUR] [float] NULL,
	[BEED] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemDetails]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WorkDataID] [int] NOT NULL,
	[ItemNo] [nvarchar](max) NULL,
	[Number] [int] NOT NULL,
	[Length] [int] NOT NULL,
	[BreadthWidth] [int] NOT NULL,
	[DepthHeight] [int] NOT NULL,
	[GeometricalFormulas] [nvarchar](max) NULL,
	[Qty] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdateOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ItemDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LEAD_CHART]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LEAD_CHART](
	[SR_NO] [float] NULL,
	[KM] [float] NULL,
	[TCostMachine] [float] NULL,
	[TCostManual] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lead_Statement]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lead_Statement](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Material] [nvarchar](255) NULL,
	[Source] [nvarchar](250) NULL,
	[Initial_Lead] [int] NULL,
	[Lead] [int] NULL,
	[Total_Lead] [int] NULL,
	[Lead_Charges] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_Lead_Statement] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MATERIAL]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIAL](
	[SR_NO] [float] NULL,
	[MATERIAL] [nvarchar](255) NULL,
	[FACTOR] [float] NULL,
	[MTYPE] [nvarchar](255) NULL,
	[ROY] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MEASUREMENTS]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MEASUREMENTS](
	[Item_Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Description] [varchar](max) NULL,
	[Measurment_Description] [varchar](max) NULL,
	[Numbers] [nvarchar](255) NULL,
	[Lenght] [nvarchar](255) NULL,
	[Breadth] [nvarchar](255) NULL,
	[Depth] [nvarchar](255) NULL,
	[Geometry] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[Total_Quantity] [int] NULL,
	[Unit] [nvarchar](50) NULL,
	[Remarks] [varchar](max) NULL,
	[Lift] [varchar](255) NULL,
	[Sub_Estimate] [int] NULL,
 CONSTRAINT [PK_dbo.Measurements] PRIMARY KEY CLUSTERED 
(
	[Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[METAL]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[METAL](
	[SNO] [float] NULL,
	[20MM] [float] NULL,
	[12MM] [float] NULL,
	[CRMETAL] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MFLOOR]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MFLOOR](
	[SR] [float] NULL,
	[Descrip] [nvarchar](255) NULL,
	[ITEMS] [nvarchar](255) NULL,
	[I] [float] NULL,
	[II] [float] NULL,
	[III] [float] NULL,
	[IV] [float] NULL,
	[V] [float] NULL,
	[VI] [float] NULL,
	[VII] [float] NULL,
	[VIII] [float] NULL,
	[IX] [float] NULL,
	[X] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Office]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Office](
	[ID] [int] NOT NULL,
	[SUB_DIVISION] [nvarchar](255) NOT NULL,
	[JE_SO_AE2] [varchar](255) NOT NULL,
	[DE_SDE_AE1_AEE] [varchar](255) NOT NULL,
	[Division] [nvarchar](255) NOT NULL,
	[EE] [varchar](255) NOT NULL,
	[Circle] [varchar](255) NOT NULL,
	[SE] [varchar](255) NOT NULL,
	[Region] [varchar](255) NOT NULL,
	[CE] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rate_Analysis]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rate_Analysis](
	[ID] [int] NOT NULL,
	[SSR] [nvarchar](50) NULL,
	[Item_No] [nvarchar](50) NULL,
	[Item_Description] [nvarchar](max) NULL,
	[Basic_Rates] [int] NULL,
	[Unit] [nvarchar](50) NULL,
	[Area] [nvarchar](50) NULL,
	[Area_Percentage] [int] NULL,
	[Area_Charges] [int] NULL,
	[Sub_Total] [int] NULL,
	[Material1] [nchar](10) NULL,
	[Quantity1] [int] NULL,
	[Lead1] [int] NULL,
	[Lead_Charges1] [int] NULL,
	[Material2] [varchar](255) NULL,
	[Quantity2] [int] NULL,
	[Lead2] [int] NULL,
	[Lead_Charges2] [int] NULL,
	[Material3] [varchar](255) NULL,
	[Quantity3] [int] NULL,
	[Lead3] [int] NULL,
	[Lead_Charges3] [int] NULL,
	[Material4] [varchar](255) NULL,
	[Quantity4] [int] NULL,
	[Lead4] [int] NULL,
	[Lead_Charges4] [int] NULL,
	[Material5] [varchar](255) NULL,
	[Quantity5] [int] NULL,
	[Lead5] [int] NULL,
	[Lead_Charges5] [int] NULL,
	[Material6] [varchar](255) NULL,
	[Quantity6] [int] NULL,
	[Lead6] [int] NULL,
	[Lead_Charges6] [int] NULL,
	[Material7] [varchar](255) NULL,
	[Lead7] [int] NULL,
	[Lead_Charges7] [int] NULL,
	[Material8] [varchar](255) NULL,
	[Quantity8] [int] NULL,
	[Lead8] [int] NULL,
	[Lead_Charges8] [int] NULL,
	[Material9] [varchar](255) NULL,
	[Quantity9] [int] NULL,
	[Lead9] [int] NULL,
	[Lead_Charges9] [int] NULL,
	[Material10] [varchar](255) NULL,
	[Quantity10] [int] NULL,
	[Lead10] [int] NULL,
	[Lead_Charges10] [int] NULL,
	[Total_Lead_Charges] [int] NULL,
	[Royalty] [varchar](255) NULL,
	[Royalty_charges] [int] NULL,
	[Other] [varchar](255) NULL,
	[Other_Charges] [int] NULL,
	[Other1] [varchar](255) NULL,
	[Other_Charges1] [int] NULL,
	[Completed_Rate] [int] NULL,
	[Remarks] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SETTINGS]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SETTINGS](
	[SNO] [float] NULL,
	[RRATE] [float] NULL,
	[INLEAD] [float] NULL,
	[CEMENT_Rate] [float] NULL,
	[BITUMEN_Rate] [float] NULL,
	[STEEL_Rate] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TESTS]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TESTS](
	[AutoNo] [float] NULL,
	[SNO] [float] NULL,
	[BTest] [nvarchar](255) NULL,
	[NTest] [nvarchar](255) NULL,
	[Material] [nvarchar](255) NULL,
	[TUnit] [nvarchar](255) NULL,
	[Rate] [float] NULL,
	[Freq] [float] NULL,
	[MUnit] [nvarchar](255) NULL,
	[QBy] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkDataDetails]    Script Date: 2/16/2020 6:32:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkDataDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameOfWork] [nvarchar](max) NULL,
	[SSRRate] [nvarchar](max) NULL,
	[Department] [nvarchar](max) NULL,
	[HeadOfAccounts] [nvarchar](max) NULL,
	[Area] [nvarchar](max) NULL,
	[SubDivsion] [nvarchar](max) NULL,
	[Divison] [nvarchar](max) NULL,
	[Circle] [nvarchar](max) NULL,
	[Region] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.WorkDataDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202002090943469_InitialCreate', N'PWDCRMEntity.DbContextClass.DbContextPWDCRM', 0x1F8B0800000000000400ED5ACD6EE33610BE17E83B083AB540D6CACFA50DEC5D64ED6437E8E667AD6473A6A5B14D84A25C9232EC67EBA18FD457E8D012654A726CC98A83EDA20810D8A3996F864372FEE47FFEFABBFB611131670E42D298F7DC93CEB1EB000FE290F249CF4DD4F8DD6FEE87F73FFFD4BD0CA385F3CDF09D693E94E4B2E74E959A9D7B9E0CA61011D989682062198F552788238F84B1777A7CFCBB7772E20142B888E538DD61C2158D60F505BFF6631EC04C2584DDC4213099D1F189BF42756E4904724602E8B9F74F83FEF0E612E5D5B23318A1A88285EA3322A5EB5C304AD0241FD8D87508E7B1220A0D3E7F94E02B11F3893F4302610FCB1920DF983009D942CED7EC75D7747CAAD7E4AD050D54904815470D014FCE32277965F1BD5CEDE64E4437A6EED2AB5EB9B2E75E2B8806A00865E8B5B2BEF33E139AB7E46C4BE6C8B19F1CE50703CF8FFE3B72FA095389801E874409C2903F19311AFC01CB87F819788F278CD916A28DF8AC4040D2BD886720D47208636377E83A5E51CE2B0BE662964CBA9C6BAECE4E5DE71695931183FC00584BF7552CE01370104441784F9402C13506AC965AD15ED2F5148BE70151E47AB04BE7761CEDEBDBD860E0D9C5FBE83A3764F105F8444D7B2E7E749D2BBA80D05032DC474EF1FAA29012C94E35B7493402D1CED4547F3B8C8F0248A8A64F346C8B34C03832FD0C743255ED803E411C01FA3D20EC2A16518201E6E0DBF1551FB036460F312E88E7C31BDAC7FDC2EB71C78D263CF3F08011BDB1C58FB310451B0375BD7548DB1AE8CC856C1AEC4A72FF07BC972208FEBF1B6B6F1DFCD0F9FE7088361E5C0F8610225484EB3FB8AACF18F6EEC6174110634174F86B7B81D7F6F0DB948C06742E5775CBA1778ACEA97C033D7D2A0276F8833784C95B78EDBF9A249A236DCF12BA752014039F394DA6994843FD8654816D44962D64E682A2D929AE0F6A5395BD36256D503A85A7DE76A44A1AABA055383639225FF2BAC3F2D216CBB462DE0BBD58F786CC66784EACDE2CA3387EDA98F5DFF9CD1B9528C5F002B9A15FC9ADCD3561AE2213283D45D568E915155269078C883E06FD30AAB09537F805971B6DD53D2CA7EBF5261819FD3995DBD2A776B660AEFD7A854BD54968B56AC8ADDB6AD14ADEC79295880D35413F6649C45FAA2BB649DB6D8D8D62D3EBA399E6A6604F46AB8F627A171BC5D0EAA398EEC54631B4FA28C5FEC5C62A3EA98F58E8636CC0C283FA781BDB191B7723437DFC55EB62E37DADD68EDBE4F3A46463E4C4FA3856D2B1912C727DAC756F6243ADA955A4AE57BABCE588E1554246A9B62F47A15A31AA1CFB5F2B4EEDC0AD11AB76221C265ED95D49213E58F4FA6879E36143E5C446773A6F2C4A573AA7D7472BF70E3662F9597DD4B445B0B1524A036F59F57FC16116BD81CF4C895F70982136880B59095F080A19AD49949A54D665683F42ACAB6059E4378E769592B5CC926BCF4BD75289DACDCAC5DDEF142AF563CAE23AE8A4390D75EDE82F2556281DCDD0F1FF647D4657D7D530DC104EC720553AEC714F8F4F4E4B6F23BE9F37039E9421ABFF7AE0CD8756543B76E758AA610B591DCCAFD4B41ACBF33911C194885F22B2F8D5C66A3E7ADFC798E2E07D1F844D63F77D70360CDDF781D932726FE56A6BACBE8F59A579492B532A33111D5ED56B0CCE6B02ED3D38FF31C240755CDD6A3B4B23E95658D5B1732BB8CDA3E55690F6F8B89DDB2A23E2769E2B8E81DB5DD0C2A8B71554719CDB12EAFB0D41CD919A8D65ABC3BD571BBAA6651EDA3DD2393DB5F7C053D94D2A5F6B745BAD77BB9EFD4B9BEE00249DAC21F4EF6E3804BA905C831A9E6B3E8ECD7EE38A6D8B0C4BE938DCA0F97802C88550744C02858F039072F572E11B6109B25C62CD135EF3BB44CD12752125442356181375BDEDFA57F3E9A2CDDDBB99FE265F630968264DD3EAC784B230B7FB6AC3217E01421FD72C61A155BED2896BB2CC916E635E1328731FA605E03ADD3D4034630826EFB84FE6B08F6D8F12BEC084044BD3B6BC0CB27B238A6EEF0E28990812C90C632D8F5FF10C87D1E2FDBFAEDEF7DC70260000, N'6.4.0')
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (1, N'Corporation Area', 5)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (2, N'Muncipal Council Area', 4)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (3, N'For Mumbai/Brahan Mumbai', 5)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (4, N'Sugarcane Factory Area (Within 10 KM radius)', 5)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (5, N'Notified Tribal Areas', 10)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (6, N'Hilly  Areas', 10)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (7, N'Inaccessible Areas', 10)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (8, N'Inside Premises of Central Jail', 15)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (9, N'Mental Hospital', 15)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (10, N'Raj Bhawan', 15)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (11, N'Yerawada Printing Presses', 15)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (12, N'Tiger Project Area in Maleghat', 20)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (13, N'Coal / Lime Mining Area', 5)
INSERT [dbo].[AREA] ([SNO], [AName], [Per]) VALUES (14, N'Naxelite Affected Area', 20)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (1, N'Corporation Area', 5)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (2, N'Muncipal Council Area', 4)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (3, N'For Mumbai/Brahan Mumbai', 5)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (4, N'Sugarcane Factory Area (Within 10 KM radius)', 5)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (5, N'Notified Tribal Areas', 10)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (6, N'Hilly  Areas', 10)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (7, N'Inaccessible Areas', 10)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (8, N'Inside Premises of Central Jail', 15)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (9, N'Mental Hospital', 15)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (10, N'Raj Bhawan', 15)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (11, N'Yerawada Printing Presses', 15)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (12, N'Tiger Project Area in Maleghat', 20)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (13, N'Coal / Lime Mining Area', 5)
INSERT [dbo].[AREAS$] ([SNO], [AName], [Per]) VALUES (14, N'Naxelite Affected Area', 20)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (1, N'SINKING', N'SINKING OF WELL', 30, 40, 60, 100, 100, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (2, N'DECK', N'RCC WORK IN SOLID DECK SLAB', 30, 40, 60, 100, 100, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (3, N'GIRDER', N'RCC WORK IN MAIN CROSS GIRDER', 30, 40, 60, 100, 100, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (4, N'"V" shaped', N'PIERS, ABUTMENT, RETURNS, WINGS', 0, 5, 7.5, 10, 10, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (5, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (6, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (7, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (8, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (9, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (10, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (11, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (12, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (1, N'SINKING', N'SINKING OF WELL', 30, 40, 60, 100, 100, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (2, N'DECK', N'RCC WORK IN SOLID DECK SLAB', 30, 40, 60, 100, 100, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (3, N'GIRDER', N'RCC WORK IN MAIN CROSS GIRDER', 30, 40, 60, 100, 100, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (4, N'"V" shaped', N'PIERS, ABUTMENT, RETURNS, WINGS', 0, 5, 7.5, 10, 10, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (5, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (6, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (7, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (8, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (9, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (10, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (11, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[BRLIFT] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (12, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (1, N'CEMENT', N'CEMENT', 4700, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (2, N'TMT-FE-500 reinforcement', N'STEEL', 41200, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (3, N'HCRM/ CRS reinforcement', N'STEEL', 44000, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (4, N'Structural Steel', N'STEEL', 44100, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (5, N'Corrosion Resistant Steel reinforcement', N'STEEL', 48000, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (6, N'High tensile Steel', N'STEEL', 58898, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (7, N'Bitumen VG-10 (Packed)', N'BITUMEN', 31700, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (8, N'Bitumen VG-30 (Packed)', N'BITUMEN', 32500, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (9, N'Bitumen VG-40 (Packed)', N'BITUMEN', 33580, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (10, N'Bitumen VG-10 (Bulk)', N'BITUMEN', 28400, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (11, N'Bitumen VG-30 (Bulk)', N'BITUMEN', 29200, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (12, N'Bitumen VG-40 (Bulk)', N'BITUMEN', 30180, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (13, N'Bitumen Emulsion', N'BITUMEN', 23500, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (14, N'CRMB - 55', N'CRMB - 55', 30555, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (15, N'CRMB - 60', N'CRMB - 60', 30735, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (16, N'PLASTIC', N'PLASTIC', 30000, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (17, N'80MM METAL', N'80MM METAL', 450, 0, 0, 0)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (18, N'60MM METAL', N'60MM METAL', 700, 850, 704, 959)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (19, N'60MM METAL HB', N'60MM METAL HB', 700, 850, 704, 959)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (20, N'60MM METAL CB', N'60MM METAL CB', 700, 850, 704, 959)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (21, N'40MM METAL HB', N'40MM METAL HB', 700, 919, 858, 1008)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (22, N'40MM METAL CB', N'40MM METAL CB', 800, 919, 858, 1008)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (23, N'40MM METAL', N'40MM METAL', 700, 919, 858, 1008)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (24, N'25MM METAL', N'25MM METAL', 800, 800, 800, 800)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (25, N'20MM METAL', N'CR METAL', 800, 1039, 1048, 1049)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (26, N'20MM METAL', N'20MM METAL', 800, 1039, 1048, 1049)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (27, N'12MM METAL', N'CR METAL', 800, 950, 902, 976)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (28, N'12MM METAL', N'12MM METAL', 800, 950, 902, 976)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (29, N'10MM METAL', N'CR METAL', 800, 950, 902, 976)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (30, N'10MM METAL', N'10MM METAL', 800, 950, 902, 976)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (31, N'06MM METAL', N'CHIPS', 800, 982, 965, 804)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (32, N'06MM METAL', N'QUARRY SPAUL', 800, 982, 965, 804)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (33, N'06MM METAL', N'GRIT', 800, 982, 965, 804)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (34, N'06MM METAL', N'SCREENING', 800, 982, 965, 804)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (35, N'06MM METAL', N'06MM METAL', 800, 982, 965, 804)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (36, N'STONE DUST', N'STONE DUST', 700, 930, 945, 921)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (37, N'Natural Sand', N'SAND', 1500, 2881, 2887, 1932)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (38, N'Crushed Sand', N'CRUSHED SAND', 650, 1195, 1247, 1090)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (39, N'Artificial Sand', N'Artificial Sand', 2050, 2050, 2050, 2050)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (40, N'Bricks II Class', N'BRICKS', 5.7, 5, 5, 5)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (41, N'Soft Murum', N'MURUM-SOFT', 212, 212, 212, 212)
INSERT [dbo].[DMAT] ([SNO], [MCAT], [MAT], [Rate], [OSMANABAD], [LATUR], [BEED]) VALUES (42, N'Hard Murum', N'MURUM-HARD', 222, 310, 300, 345)
SET IDENTITY_INSERT [dbo].[ItemDetails] ON 

INSERT [dbo].[ItemDetails] ([Id], [WorkDataID], [ItemNo], [Number], [Length], [BreadthWidth], [DepthHeight], [GeometricalFormulas], [Qty], [Remarks], [CreatedOn], [UpdateOn]) VALUES (1, 1, N'1', 12, 12, 74, 78, N'78', 0, N'R', CAST(N'2020-02-16 12:39:36.527' AS DateTime), CAST(N'2020-02-16 12:39:36.527' AS DateTime))
INSERT [dbo].[ItemDetails] ([Id], [WorkDataID], [ItemNo], [Number], [Length], [BreadthWidth], [DepthHeight], [GeometricalFormulas], [Qty], [Remarks], [CreatedOn], [UpdateOn]) VALUES (2, 1, N'1', 54, 87, 85, 78, N'85', 0, N'e', CAST(N'2020-02-16 12:39:36.527' AS DateTime), CAST(N'2020-02-16 12:39:36.527' AS DateTime))
INSERT [dbo].[ItemDetails] ([Id], [WorkDataID], [ItemNo], [Number], [Length], [BreadthWidth], [DepthHeight], [GeometricalFormulas], [Qty], [Remarks], [CreatedOn], [UpdateOn]) VALUES (3, 1, N'1', 87, 78, 78, 887, N'88', 0, N'm', CAST(N'2020-02-16 12:39:36.527' AS DateTime), CAST(N'2020-02-16 12:39:36.527' AS DateTime))
SET IDENTITY_INSERT [dbo].[ItemDetails] OFF
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (1, 0.5, 928.72, 793.56)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (2, 1, 967.82, 856.52)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (3, 1.5, 1006.42, 917.99)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (4, 2, 1043.99, 976.84)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (5, 2.5, 1081.8, 1037.8)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (6, 3, 1119.3, 1096)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (7, 3.5, 1156.17, 1153.91)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (8, 4, 1192.7, 1210.85)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (9, 4.5, 1228.77, 1266.55)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (10, 5, 1264.27, 1322.61)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (11, 5.5, 1302.11, 1380.99)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (12, 6, 1336.97, 1434.59)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (13, 6.5, 1373.42, 1492.78)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (14, 7, 1408.92, 1545.37)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (15, 7.5, 1444.21, 1599.49)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (16, 8, 1479.43, 1655.45)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (17, 8.5, 1514.17, 1707.12)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (18, 9, 1548.95, 1760.29)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (19, 9.5, 1582.5, 1811.41)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (20, 10, 1615.93, 1860.38)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (21, 10.5, 1644.07, 1897.67)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (22, 11, 1672.21, 1934.96)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (23, 11.5, 1699.67, 1970.945)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (24, 12, 1727.13, 2006.93)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (25, 12.5, 1753.945, 2041.575)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (26, 13, 1780.76, 2076.22)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (27, 13.5, 1807.1, 2111.395)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (28, 14, 1833.44, 2146.57)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (29, 14.5, 1859.22, 2177.92)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (30, 15, 1885, 2209.27)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (31, 15.5, 1918.28, 2258.781)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (32, 16, 1951.56, 2308.292)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (33, 16.5, 1984.84, 2357.803)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (34, 17, 2018.12, 2407.314)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (35, 17.5, 2051.4, 2456.825)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (36, 18, 2084.68, 2506.336)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (37, 18.5, 2117.96, 2555.847)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (38, 19, 2151.24, 2605.358)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (39, 19.5, 2184.52, 2654.869)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (40, 20, 2217.8, 2704.38)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (41, 20.5, 2251.059, 2753.853)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (42, 21, 2284.318, 2803.326)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (43, 21.5, 2317.577, 2852.799)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (44, 22, 2350.836, 2902.272)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (45, 22.5, 2384.095, 2951.745)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (46, 23, 2417.354, 3001.218)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (47, 23.5, 2450.613, 3050.691)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (48, 24, 2483.872, 3100.164)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (49, 24.5, 2517.131, 3149.637)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (50, 25, 2550.39, 3199.11)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (51, 25.5, 2570.955, 3219.65)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (52, 26, 2591.52, 3240.19)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (53, 26.5, 2612.085, 3260.73)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (54, 27, 2632.65, 3281.27)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (55, 27.5, 2653.215, 3301.81)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (56, 28, 2673.78, 3322.35)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (57, 28.5, 2694.345, 3342.89)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (58, 29, 2714.91, 3363.43)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (59, 29.5, 2735.475, 3383.97)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (60, 30, 2756.04, 3404.51)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (61, 30.5, 2787.192, 3449.49)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (62, 31, 2818.344, 3494.47)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (63, 31.5, 2849.496, 3539.45)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (64, 32, 2880.648, 3584.43)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (65, 32.5, 2911.8, 3629.41)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (66, 33, 2942.952, 3674.39)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (67, 33.5, 2974.104, 3719.37)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (68, 34, 3005.256, 3764.35)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (69, 34.5, 3036.408, 3809.33)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (70, 35, 3067.56, 3854.31)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (71, 35.5, 3098.726, 3899.241)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (72, 36, 3129.892, 3944.172)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (73, 36.5, 3161.058, 3989.103)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (74, 37, 3192.224, 4034.034)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (75, 37.5, 3223.39, 4078.965)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (76, 38, 3254.556, 4123.896)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (77, 38.5, 3285.722, 4168.827)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (78, 39, 3316.888, 4213.758)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (79, 39.5, 3348.054, 4258.689)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (80, 40, 3379.22, 4303.62)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (81, 40.5, 3410.359, 4348.109)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (82, 41, 3441.498, 4392.598)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (83, 41.5, 3472.637, 4437.087)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (84, 42, 3503.776, 4481.576)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (85, 42.5, 3534.915, 4526.065)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (86, 43, 3566.054, 4570.554)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (87, 43.5, 3597.193, 4615.043)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (88, 44, 3628.332, 4659.532)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (89, 44.5, 3659.471, 4704.021)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (90, 45, 3690.61, 4748.51)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (91, 45.5, 3708.5, 4763.381)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (92, 46, 3726.39, 4778.252)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (93, 46.5, 3744.28, 4793.123)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (94, 47, 3762.17, 4807.994)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (95, 47.5, 3780.06, 4822.865)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (96, 48, 3797.95, 4837.736)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (97, 48.5, 3815.84, 4852.607)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (98, 49, 3833.73, 4867.478)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (99, 49.5, 3851.62, 4882.349)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (100, 50, 3869.51, 4897.22)
GO
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (101, 50.5, 3891.397, 4920.6165)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (102, 51, 3913.284, 4944.013)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (103, 51.5, 3935.171, 4967.4095)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (104, 52, 3957.058, 4990.806)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (105, 52.5, 3978.945, 5014.2025)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (106, 53, 4000.832, 5037.599)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (107, 53.5, 4022.719, 5060.9955)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (108, 54, 4044.606, 5084.392)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (109, 54.5, 4066.493, 5107.7885)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (110, 55, 4088.38, 5131.185)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (111, 55.5, 4110.267, 5154.5815)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (112, 56, 4132.154, 5177.978)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (113, 56.5, 4154.041, 5201.3745)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (114, 57, 4175.928, 5224.771)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (115, 57.5, 4197.815, 5248.1675)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (116, 58, 4219.702, 5271.564)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (117, 58.5, 4241.589, 5294.9605)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (118, 59, 4263.476, 5318.357)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (119, 59.5, 4285.363, 5341.7535)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (120, 60, 4307.25, 5365.15)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (121, 60.5, 4335.7475, 5403.6175)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (122, 61, 4364.245, 5442.085)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (123, 61.5, 4392.7425, 5480.5525)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (124, 62, 4421.24, 5519.02)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (125, 62.5, 4449.7375, 5557.4875)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (126, 63, 4478.235, 5595.955)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (127, 63.5, 4506.7325, 5634.4225)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (128, 64, 4535.23, 5672.89)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (129, 64.5, 4563.7275, 5711.3575)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (130, 65, 4592.225, 5749.825)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (131, 65.5, 4620.7225, 5788.2925)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (132, 66, 4649.22, 5826.76)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (133, 66.5, 4677.71750000001, 5865.2275)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (134, 67, 4706.21500000001, 5903.695)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (135, 67.5, 4734.71250000001, 5942.1625)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (136, 68, 4763.21000000001, 5980.63)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (137, 68.5, 4791.70750000001, 6019.0975)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (138, 69, 4820.20500000001, 6057.565)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (139, 69.5, 4848.70250000001, 6096.03249999999)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (140, 70, 4877.2, 6134.5)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (141, 70.5, 4905.708, 6173.3745)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (142, 71, 4934.216, 6212.249)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (143, 71.5, 4962.724, 6251.1235)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (144, 72, 4991.232, 6289.998)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (145, 72.5, 5019.74, 6328.8725)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (146, 73, 5048.248, 6367.747)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (147, 73.5, 5076.756, 6406.6215)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (148, 74, 5105.264, 6445.496)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (149, 74.5, 5133.772, 6484.3705)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (150, 75, 5162.28, 6523.245)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (151, 75.5, 5190.788, 6562.1195)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (152, 76, 5219.296, 6600.994)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (153, 76.5, 5247.804, 6639.8685)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (154, 77, 5276.312, 6678.743)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (155, 77.5, 5304.82, 6717.6175)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (156, 78, 5333.328, 6756.492)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (157, 78.5, 5361.836, 6795.3665)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (158, 79, 5390.344, 6834.241)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (159, 79.5, 5418.852, 6873.1155)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (160, 80, 5447.36, 6911.99)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (161, 80.5, 5475.85, 6951.2855)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (162, 81, 5504.34, 6990.581)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (163, 81.5, 5532.83, 7029.8765)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (164, 82, 5561.32, 7069.172)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (165, 82.5, 5589.81, 7108.4675)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (166, 83, 5618.3, 7147.763)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (167, 83.5, 5646.79, 7187.0585)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (168, 84, 5675.28, 7226.354)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (169, 84.5, 5703.77, 7265.6495)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (170, 85, 5732.26, 7304.945)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (171, 85.5, 5760.75, 7344.2405)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (172, 86, 5789.24, 7383.536)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (173, 86.5, 5817.73, 7422.8315)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (174, 87, 5846.22, 7462.127)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (175, 87.5, 5874.71, 7501.4225)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (176, 88, 5903.2, 7540.718)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (177, 88.5, 5931.69, 7580.0135)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (178, 89, 5960.18, 7619.309)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (179, 89.5, 5988.67, 7658.6045)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (180, 90, 6017.16, 7697.9)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (181, 90.5, 6045.686, 7736.491)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (182, 91, 6074.212, 7775.082)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (183, 91.5, 6102.738, 7813.673)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (184, 92, 6131.264, 7852.264)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (185, 92.5, 6159.79, 7890.855)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (186, 93, 6188.316, 7929.446)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (187, 93.5, 6216.842, 7968.037)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (188, 94, 6245.368, 8006.628)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (189, 94.5, 6273.894, 8045.219)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (190, 95, 6302.42, 8083.81)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (191, 95.5, 6330.946, 8122.401)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (192, 96, 6359.472, 8160.992)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (193, 96.5, 6387.998, 8199.583)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (194, 97, 6416.524, 8238.174)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (195, 97.5, 6445.05, 8276.765)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (196, 98, 6473.576, 8315.35600000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (197, 98.5, 6502.102, 8353.94700000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (198, 99, 6530.628, 8392.53800000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (199, 99.5, 6559.154, 8431.12900000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (200, 100, 6587.68, 8469.72)
GO
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (201, 100.5, 6606.2414, 8485.3346)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (202, 101, 6624.8028, 8500.9492)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (203, 101.5, 6643.3642, 8516.5638)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (204, 102, 6661.9256, 8532.1784)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (205, 102.5, 6680.487, 8547.793)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (206, 103, 6699.0484, 8563.4076)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (207, 103.5, 6717.6098, 8579.0222)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (208, 104, 6736.1712, 8594.63680000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (209, 104.5, 6754.7326, 8610.25140000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (210, 105, 6773.294, 8625.86600000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (211, 105.5, 6791.8554, 8641.48060000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (212, 106, 6810.4168, 8657.09520000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (213, 106.5, 6828.9782, 8672.70980000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (214, 107, 6847.53959999999, 8688.32440000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (215, 107.5, 6866.10099999999, 8703.93900000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (216, 108, 6884.66239999999, 8719.55360000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (217, 108.5, 6903.22379999999, 8735.16820000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (218, 109, 6921.78519999999, 8750.78280000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (219, 109.5, 6940.34659999999, 8766.39740000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (220, 110, 6958.90799999999, 8782.01200000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (221, 110.5, 6977.46939999999, 8797.62660000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (222, 111, 6996.03079999999, 8813.24120000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (223, 111.5, 7014.59219999999, 8828.85580000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (224, 112, 7033.15359999999, 8844.47040000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (225, 112.5, 7051.71499999999, 8860.08500000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (226, 113, 7070.27639999999, 8875.69960000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (227, 113.5, 7088.83779999999, 8891.31420000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (228, 114, 7107.39919999999, 8906.92880000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (229, 114.5, 7125.96059999999, 8922.54340000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (230, 115, 7144.52199999999, 8938.15800000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (231, 115.5, 7163.08339999999, 8953.77260000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (232, 116, 7181.64479999999, 8969.38720000002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (233, 116.5, 7200.20619999999, 8985.00180000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (234, 117, 7218.76759999999, 9000.61640000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (235, 117.5, 7237.32899999999, 9016.23100000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (236, 118, 7255.89039999999, 9031.84560000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (237, 118.5, 7274.45179999999, 9047.46020000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (238, 119, 7293.01319999998, 9063.07480000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (239, 119.5, 7311.57459999998, 9078.68940000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (240, 120, 7330.13599999998, 9094.30400000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (241, 120.5, 7348.69739999998, 9109.91860000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (242, 121, 7367.25879999998, 9125.53320000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (243, 121.5, 7385.82019999998, 9141.14780000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (244, 122, 7404.38159999998, 9156.76240000003)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (245, 122.5, 7422.94299999998, 9172.37700000004)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (246, 123, 7441.50439999998, 9187.99160000004)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (247, 123.5, 7460.06579999998, 9203.60620000004)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (248, 124, 7478.62719999998, 9219.22080000004)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (249, 124.5, 7497.18859999998, 9234.83540000004)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (250, 125, 7515.75, 9250.45)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (251, 125.5, 7542.2738, 9284.5906)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (252, 126, 7568.7976, 9318.7312)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (253, 126.5, 7595.3214, 9352.8718)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (254, 127, 7621.8452, 9387.0124)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (255, 127.5, 7648.369, 9421.153)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (256, 128, 7674.8928, 9455.2936)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (257, 128.5, 7701.4166, 9489.43420000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (258, 129, 7727.9404, 9523.57480000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (259, 129.5, 7754.4642, 9557.71540000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (260, 130, 7780.988, 9591.85600000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (261, 130.5, 7807.5118, 9625.99660000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (262, 131, 7834.0356, 9660.13720000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (263, 131.5, 7860.5594, 9694.27780000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (264, 132, 7887.0832, 9728.41840000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (265, 132.5, 7913.607, 9762.55900000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (266, 133, 7940.1308, 9796.69960000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (267, 133.5, 7966.6546, 9830.84020000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (268, 134, 7993.1784, 9864.98080000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (269, 134.5, 8019.7022, 9899.12140000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (270, 135, 8046.226, 9933.26200000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (271, 135.5, 8072.7498, 9967.40260000001)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (272, 136, 8099.2736, 10001.5432)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (273, 136.5, 8125.7974, 10035.6838)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (274, 137, 8152.3212, 10069.8244)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (275, 137.5, 8178.845, 10103.965)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (276, 138, 8205.3688, 10138.1056)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (277, 138.5, 8231.8926, 10172.2462)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (278, 139, 8258.4164, 10206.3868)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (279, 139.5, 8284.9402, 10240.5274)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (280, 140, 8311.464, 10274.668)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (281, 140.5, 8337.9878, 10308.8086)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (282, 141, 8364.5116, 10342.9492)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (283, 141.5, 8391.0354, 10377.0898)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (284, 142, 8417.55920000001, 10411.2304)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (285, 142.5, 8444.08300000001, 10445.371)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (286, 143, 8470.60680000001, 10479.5116)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (287, 143.5, 8497.13060000001, 10513.6522)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (288, 144, 8523.65440000001, 10547.7928)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (289, 144.5, 8550.17820000001, 10581.9334)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (290, 145, 8576.70200000001, 10616.074)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (291, 145.5, 8603.22580000001, 10650.2146)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (292, 146, 8629.74960000001, 10684.3552)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (293, 146.5, 8656.27340000001, 10718.4958)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (294, 147, 8682.79720000001, 10752.6364)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (295, 147.5, 8709.32100000001, 10786.777)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (296, 148, 8735.84480000002, 10820.9176)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (297, 148.5, 8762.36860000002, 10855.0582)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (298, 149, 8788.89240000002, 10889.1988)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (299, 149.5, 8815.41620000002, 10923.3394)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (300, 150, 8841.94, 10957.48)
GO
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (301, 150.5, 8861.4924, 10975.7166)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (302, 151, 8881.0448, 10993.9532)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (303, 151.5, 8900.5972, 11012.1898)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (304, 152, 8920.1496, 11030.4264)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (305, 152.5, 8939.702, 11048.663)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (306, 153, 8959.2544, 11066.8996)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (307, 153.5, 8978.8068, 11085.1362)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (308, 154, 8998.3592, 11103.3728)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (309, 154.5, 9017.9116, 11121.6094)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (310, 155, 9037.46400000001, 11139.846)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (311, 155.5, 9057.01640000001, 11158.0826)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (312, 156, 9076.56880000001, 11176.3192)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (313, 156.5, 9096.12120000001, 11194.5558)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (314, 157, 9115.67360000001, 11212.7924)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (315, 157.5, 9135.22600000001, 11231.029)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (316, 158, 9154.77840000001, 11249.2656)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (317, 158.5, 9174.33080000001, 11267.5022)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (318, 159, 9193.88320000001, 11285.7388)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (319, 159.5, 9213.43560000001, 11303.9754)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (320, 160, 9232.98800000001, 11322.212)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (321, 160.5, 9252.54040000001, 11340.4486)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (322, 161, 9272.09280000001, 11358.6852)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (323, 161.5, 9291.64520000001, 11376.9218)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (324, 162, 9311.19760000001, 11395.1584)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (325, 162.5, 9330.75000000001, 11413.395)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (326, 163, 9350.30240000001, 11431.6316)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (327, 163.5, 9369.85480000001, 11449.8682)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (328, 164, 9389.40720000001, 11468.1048)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (329, 164.5, 9408.95960000001, 11486.3414)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (330, 165, 9428.51200000002, 11504.578)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (331, 165.5, 9448.06440000002, 11522.8146)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (332, 166, 9467.61680000002, 11541.0512)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (333, 166.5, 9487.16920000002, 11559.2878)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (334, 167, 9506.72160000002, 11577.5244)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (335, 167.5, 9526.27400000002, 11595.761)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (336, 168, 9545.82640000002, 11613.9976)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (337, 168.5, 9565.37880000002, 11632.2342)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (338, 169, 9584.93120000002, 11650.4708)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (339, 169.5, 9604.48360000002, 11668.7074)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (340, 170, 9624.03600000002, 11686.944)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (341, 170.5, 9643.58840000002, 11705.1806)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (342, 171, 9663.14080000002, 11723.4172)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (343, 171.5, 9682.69320000002, 11741.6538)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (344, 172, 9702.24560000002, 11759.8904)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (345, 172.5, 9721.79800000002, 11778.127)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (346, 173, 9741.35040000002, 11796.3636)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (347, 173.5, 9760.90280000002, 11814.6002)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (348, 174, 9780.45520000002, 11832.8368)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (349, 174.5, 9800.00760000002, 11851.0734)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (350, 175, 9819.56, 11869.31)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (351, 175.5, 9845.0784, 11901.7652)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (352, 176, 9870.5968, 11934.2204)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (353, 176.5, 9896.1152, 11966.6756)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (354, 177, 9921.6336, 11999.1308)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (355, 177.5, 9947.152, 12031.586)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (356, 178, 9972.6704, 12064.0412)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (357, 178.5, 9998.18880000001, 12096.4964)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (358, 179, 10023.7072, 12128.9516)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (359, 179.5, 10049.2256, 12161.4068)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (360, 180, 10074.744, 12193.862)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (361, 180.5, 10100.2624, 12226.3172)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (362, 181, 10125.7808, 12258.7724)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (363, 181.5, 10151.2992, 12291.2276)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (364, 182, 10176.8176, 12323.6828)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (365, 182.5, 10202.336, 12356.138)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (366, 183, 10227.8544, 12388.5932)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (367, 183.5, 10253.3728, 12421.0484)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (368, 184, 10278.8912, 12453.5036)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (369, 184.5, 10304.4096, 12485.9588)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (370, 185, 10329.928, 12518.414)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (371, 185.5, 10355.4464, 12550.8692)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (372, 186, 10380.9648, 12583.3244)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (373, 186.5, 10406.4832, 12615.7796)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (374, 187, 10432.0016, 12648.2348)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (375, 187.5, 10457.52, 12680.69)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (376, 188, 10483.0384, 12713.1452)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (377, 188.5, 10508.5568, 12745.6004)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (378, 189, 10534.0752, 12778.0556)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (379, 189.5, 10559.5936, 12810.5108)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (380, 190, 10585.112, 12842.966)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (381, 190.5, 10610.6304, 12875.4212)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (382, 191, 10636.1488, 12907.8764)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (383, 191.5, 10661.6672, 12940.3316)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (384, 192, 10687.1856, 12972.7868)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (385, 192.5, 10712.704, 13005.242)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (386, 193, 10738.2224, 13037.6972)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (387, 193.5, 10763.7408, 13070.1524)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (388, 194, 10789.2592, 13102.6076)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (389, 194.5, 10814.7776, 13135.0628)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (390, 195, 10840.296, 13167.518)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (391, 195.5, 10865.8144, 13199.9732)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (392, 196, 10891.3328, 13232.4284)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (393, 196.5, 10916.8512, 13264.8836)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (394, 197, 10942.3696, 13297.3388)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (395, 197.5, 10967.888, 13329.794)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (396, 198, 10993.4064, 13362.2492)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (397, 198.5, 11018.9248, 13394.7044)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (398, 199, 11044.4432, 13427.1596)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (399, 199.5, 11069.9616, 13459.6148)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (400, 200, 11095.48, 13492.07)
GO
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (401, 200.5, 11121.0103, 13523.6284)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (402, 201, 11146.5406, 13555.1868)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (403, 201.5, 11172.0709, 13586.7452)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (404, 202, 11197.6012, 13618.3036)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (405, 202.5, 11223.1315, 13649.862)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (406, 203, 11248.6618, 13681.4204)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (407, 203.5, 11274.1921, 13712.9788)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (408, 204, 11299.7224, 13744.5372)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (409, 204.5, 11325.2527, 13776.0956)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (410, 205, 11350.783, 13807.654)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (411, 205.5, 11376.3133, 13839.2124)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (412, 206, 11401.8436, 13870.7708)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (413, 206.5, 11427.3739, 13902.3292)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (414, 207, 11452.9042, 13933.8876)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (415, 207.5, 11478.4345, 13965.446)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (416, 208, 11503.9648, 13997.0044)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (417, 208.5, 11529.4951, 14028.5628)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (418, 209, 11555.0254, 14060.1212)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (419, 209.5, 11580.5557, 14091.6796)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (420, 210, 11606.086, 14123.238)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (421, 210.5, 11631.6163, 14154.7964)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (422, 211, 11657.1466, 14186.3548)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (423, 211.5, 11682.6769, 14217.9132)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (424, 212, 11708.2072, 14249.4716)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (425, 212.5, 11733.7375, 14281.03)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (426, 213, 11759.2678, 14312.5884)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (427, 213.5, 11784.7981, 14344.1468)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (428, 214, 11810.3284, 14375.7052)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (429, 214.5, 11835.8587, 14407.2636)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (430, 215, 11861.389, 14438.822)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (431, 215.5, 11886.9193, 14470.3804)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (432, 216, 11912.4496, 14501.9388)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (433, 216.5, 11937.9799, 14533.4972)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (434, 217, 11963.5102, 14565.0556)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (435, 217.5, 11989.0405, 14596.614)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (436, 218, 12014.5708, 14628.1724)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (437, 218.5, 12040.1011, 14659.7308)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (438, 219, 12065.6314, 14691.2892)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (439, 219.5, 12091.1617, 14722.8476)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (440, 220, 12116.692, 14754.406)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (441, 220.5, 12142.2223, 14785.9644)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (442, 221, 12167.7526, 14817.5228)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (443, 221.5, 12193.2829, 14849.0812)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (444, 222, 12218.8132, 14880.6396)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (445, 222.5, 12244.3435, 14912.198)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (446, 223, 12269.8738, 14943.7564)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (447, 223.5, 12295.4041, 14975.3148)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (448, 224, 12320.9344, 15006.8732)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (449, 224.5, 12346.4647, 15038.4316)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (450, 225, 12371.995, 15069.99)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (451, 225.5, 12397.5253, 15101.5484)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (452, 226, 12423.0556, 15133.1068)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (453, 226.5, 12448.5859, 15164.6652)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (454, 227, 12474.1162, 15196.2236)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (455, 227.5, 12499.6465, 15227.782)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (456, 228, 12525.1768, 15259.3404)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (457, 228.5, 12550.7071, 15290.8988)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (458, 229, 12576.2374, 15322.4572)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (459, 229.5, 12601.7677, 15354.0156)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (460, 230, 12627.298, 15385.574)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (461, 230.5, 12652.8283, 15417.1324)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (462, 231, 12678.3586, 15448.6908)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (463, 231.5, 12703.8889, 15480.2492)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (464, 232, 12729.4192, 15511.8076)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (465, 232.5, 12754.9495, 15543.366)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (466, 233, 12780.4798, 15574.9244)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (467, 233.5, 12806.0101, 15606.4828)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (468, 234, 12831.5404, 15638.0412)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (469, 234.5, 12857.0707, 15669.5996)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (470, 235, 12882.601, 15701.158)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (471, 235.5, 12908.1313, 15732.7164)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (472, 236, 12933.6616, 15764.2748)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (473, 236.5, 12959.1919, 15795.8332)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (474, 237, 12984.7222, 15827.3916)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (475, 237.5, 13010.2525, 15858.95)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (476, 238, 13035.7828, 15890.5084)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (477, 238.5, 13061.3131, 15922.0668)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (478, 239, 13086.8434, 15953.6252)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (479, 239.5, 13112.3737, 15985.1836)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (480, 240, 13137.904, 16016.742)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (481, 240.5, 13163.4343, 16048.3004)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (482, 241, 13188.9646, 16079.8588)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (483, 241.5, 13214.4949, 16111.4172)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (484, 242, 13240.0252, 16142.9756)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (485, 242.5, 13265.5555, 16174.534)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (486, 243, 13291.0858, 16206.0924)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (487, 243.5, 13316.6161, 16237.6508)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (488, 244, 13342.1464, 16269.2092)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (489, 244.5, 13367.6767, 16300.7676)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (490, 245, 13393.207, 16332.326)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (491, 245.5, 13418.7373, 16363.8844)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (492, 246, 13444.2676, 16395.4428)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (493, 246.5, 13469.7979, 16427.0012)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (494, 247, 13495.3282, 16458.5596)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (495, 247.5, 13520.8585, 16490.118)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (496, 248, 13546.3888, 16521.6764)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (497, 248.5, 13571.9191, 16553.2348)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (498, 249, 13597.4494, 16584.7932)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (499, 249.5, 13622.9797, 16616.3516)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (500, 250, 13648.51, 16647.91)
GO
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (501, 250.5, 14035.38, 16831.22)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (502, 251, 14061.67, 16863.74)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (503, 251.5, 14087.96, 16896.26)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (504, 252, 14114.25, 16928.78)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (505, 252.5, 14140.53, 16961.3)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (506, 253, 14166.82, 16993.82)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (507, 253.5, 14193.11, 17026.34)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (508, 254, 14219.4, 17058.86)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (509, 254.5, 14245.69, 17091.38)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (510, 255, 14271.98, 17123.9)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (511, 255.5, 14298.27, 17156.42)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (512, 256, 14324.56, 17188.94)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (513, 256.5, 14350.85, 17221.46)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (514, 257, 14377.13, 17253.98)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (515, 257.5, 14403.42, 17286.5)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (516, 258, 14429.71, 17319.02)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (517, 258.5, 14456, 17351.54)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (518, 259, 14482.29, 17384.06)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (519, 259.5, 14508.58, 17416.58)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (520, 260, 14534.87, 17449.1)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (521, 260.5, 14561.16, 17481.62)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (522, 261, 14587.45, 17514.14)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (523, 261.5, 14613.73, 17546.66)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (524, 262, 14640.02, 17579.18)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (525, 262.5, 14666.31, 17611.7)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (526, 263, 14692.6, 17644.22)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (527, 263.5, 14718.89, 17676.74)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (528, 264, 14745.18, 17709.26)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (529, 264.5, 14771.47, 17741.78)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (530, 265, 14797.76, 17774.3)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (531, 265.5, 14824.05, 17806.82)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (532, 266, 14850.33, 17839.34)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (533, 266.5, 14876.62, 17871.86)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (534, 267, 14902.91, 17904.38)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (535, 267.5, 14929.2, 17936.9)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (536, 268, 14955.49, 17969.42)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (537, 268.5, 14981.78, 18001.94)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (538, 269, 15008.07, 18034.46)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (539, 269.5, 15034.36, 18066.98)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (540, 270, 15060.65, 18099.5)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (541, 270.5, 15086.93, 18132.02)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (542, 271, 15113.22, 18164.54)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (543, 271.5, 15139.51, 18197.06)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (544, 272, 15165.8, 18229.58)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (545, 272.5, 15192.09, 18262.1)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (546, 273, 15218.38, 18294.62)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (547, 273.5, 15244.67, 18327.14)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (548, 274, 15270.96, 18359.66)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (549, 274.5, 15297.25, 18392.18)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (550, 275, 15323.54, 18424.7)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (551, 275.5, 15349.82, 18457.21)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (552, 276, 15376.11, 18489.73)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (553, 276.5, 15402.4, 18522.25)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (554, 277, 15428.69, 18554.77)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (555, 277.5, 15454.98, 18587.29)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (556, 278, 15481.27, 18619.81)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (557, 278.5, 15507.56, 18652.33)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (558, 279, 15533.85, 18684.85)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (559, 279.5, 15560.14, 18717.37)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (560, 280, 15586.42, 18749.89)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (561, 280.5, 15612.71, 18782.41)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (562, 281, 15639, 18814.93)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (563, 281.5, 15665.29, 18847.45)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (564, 282, 15691.58, 18879.97)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (565, 282.5, 15717.87, 18912.49)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (566, 283, 15744.16, 18945.01)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (567, 283.5, 15770.45, 18977.53)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (568, 284, 15796.74, 19010.05)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (569, 284.5, 15823.02, 19042.57)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (570, 285, 15849.31, 19075.09)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (571, 285.5, 15875.6, 19107.61)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (572, 286, 15901.89, 19140.13)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (573, 286.5, 15928.18, 19172.65)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (574, 287, 15954.47, 19205.17)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (575, 287.5, 15980.76, 19237.69)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (576, 288, 16007.05, 19270.21)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (577, 288.5, 16033.34, 19302.73)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (578, 289, 16059.62, 19335.25)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (579, 289.5, 16085.91, 19367.77)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (580, 290, 16112.2, 19400.29)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (581, 290.5, 16138.49, 19432.81)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (582, 291, 16164.78, 19465.33)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (583, 291.5, 16191.07, 19497.85)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (584, 292, 16217.36, 19530.37)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (585, 292.5, 16243.65, 19562.89)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (586, 293, 16269.94, 19595.41)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (587, 293.5, 16296.22, 19627.93)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (588, 294, 16322.51, 19660.45)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (589, 294.5, 16348.8, 19692.97)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (590, 295, 16375.09, 19725.49)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (591, 295.5, 16401.38, 19758.01)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (592, 296, 16427.67, 19790.53)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (593, 296.5, 16453.96, 19823.05)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (594, 297, 16480.25, 19855.57)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (595, 297.5, 16506.54, 19888.09)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (596, 298, 16532.82, 19920.61)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (597, 298.5, 16559.11, 19953.13)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (598, 299, 16585.4, 19985.65)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (599, 299.5, 16611.69, 20018.17)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (600, 300, 16637.98, 20050.69)
GO
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (601, 300.5, 16664.28, 20082.89)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (602, 301, 16690.59, 20115.09)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (603, 301.5, 16716.89, 20147.28)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (604, 302, 16743.19, 20179.48)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (605, 302.5, 16769.49, 20211.68)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (606, 303, 16795.8, 20243.88)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (607, 303.5, 16822.1, 20276.08)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (608, 304, 16848.4, 20308.28)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (609, 304.5, 16874.71, 20340.47)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (610, 305, 16901.01, 20372.67)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (611, 305.5, 16927.31, 20404.87)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (612, 306, 16953.61, 20437.07)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (613, 306.5, 16979.92, 20469.27)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (614, 307, 17006.22, 20501.47)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (615, 307.5, 17032.52, 20533.66)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (616, 308, 17058.83, 20565.86)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (617, 308.5, 17085.13, 20598.06)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (618, 309, 17111.43, 20630.26)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (619, 309.5, 17137.74, 20662.46)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (620, 310, 17164.04, 20694.66)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (621, 310.5, 17190.34, 20726.85)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (622, 311, 17216.64, 20759.05)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (623, 311.5, 17242.95, 20791.25)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (624, 312, 17269.25, 20823.45)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (625, 312.5, 17295.55, 20855.65)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (626, 313, 17321.86, 20887.85)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (627, 313.5, 17348.16, 20920.04)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (628, 314, 17374.46, 20952.24)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (629, 314.5, 17400.76, 20984.44)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (630, 315, 17427.07, 21016.64)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (631, 315.5, 17453.37, 21048.84)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (632, 316, 17479.67, 21081.04)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (633, 316.5, 17505.98, 21113.23)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (634, 317, 17532.28, 21145.43)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (635, 317.5, 17558.58, 21177.63)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (636, 318, 17584.88, 21209.83)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (637, 318.5, 17611.19, 21242.03)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (638, 319, 17637.49, 21274.23)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (639, 319.5, 17663.79, 21306.42)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (640, 320, 17690.1, 21338.62)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (641, 320.5, 17716.4, 21370.82)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (642, 321, 17742.7, 21403.02)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (643, 321.5, 17769, 21435.22)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (644, 322, 17795.31, 21467.42)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (645, 322.5, 17821.61, 21499.61)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (646, 323, 17847.91, 21531.81)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (647, 323.5, 17874.22, 21564.01)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (648, 324, 17900.52, 21596.21)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (649, 324.5, 17926.82, 21628.41)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (650, 325, 17953.13, 21660.61)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (651, 325.5, 17979.43, 21692.8)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (652, 326, 18005.73, 21725)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (653, 326.5, 18032.03, 21757.2)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (654, 327, 18058.34, 21789.4)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (655, 327.5, 18084.64, 21821.6)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (656, 328, 18110.94, 21853.79)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (657, 328.5, 18137.25, 21885.99)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (658, 329, 18163.55, 21918.19)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (659, 329.5, 18189.85, 21950.39)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (660, 330, 18216.15, 21982.59)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (661, 330.5, 18242.46, 22014.79)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (662, 331, 18268.76, 22046.98)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (663, 331.5, 18295.06, 22079.18)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (664, 332, 18321.37, 22111.38)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (665, 332.5, 18347.67, 22143.58)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (666, 333, 18373.97, 22175.78)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (667, 333.5, 18400.27, 22207.98)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (668, 334, 18426.58, 22240.17)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (669, 334.5, 18452.88, 22272.37)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (670, 335, 18479.18, 22304.57)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (671, 335.5, 18505.49, 22336.77)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (672, 336, 18531.79, 22368.97)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (673, 336.5, 18558.09, 22401.17)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (674, 337, 18584.39, 22433.36)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (675, 337.5, 18610.7, 22465.56)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (676, 338, 18637, 22497.76)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (677, 338.5, 18663.3, 22529.96)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (678, 339, 18689.61, 22562.16)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (679, 339.5, 18715.91, 22594.36)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (680, 340, 18742.21, 22626.55)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (681, 340.5, 18768.51, 22658.75)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (682, 341, 18794.82, 22690.95)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (683, 341.5, 18821.12, 22723.15)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (684, 342, 18847.42, 22755.35)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (685, 342.5, 18873.73, 22787.55)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (686, 343, 18900.03, 22819.74)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (687, 343.5, 18926.33, 22851.94)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (688, 344, 18952.64, 22884.14)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (689, 344.5, 18978.94, 22916.34)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (690, 345, 19005.24, 22948.54)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (691, 345.5, 19031.54, 22980.74)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (692, 346, 19057.85, 23012.93)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (693, 346.5, 19084.15, 23045.13)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (694, 347, 19110.45, 23077.33)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (695, 347.5, 19136.76, 23109.53)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (696, 348, 19163.06, 23141.73)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (697, 348.5, 19189.36, 23173.93)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (698, 349, 19215.66, 23206.12)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (699, 349.5, 19241.97, 23238.32)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (700, 350, 19268.27, 23270.52)
GO
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (701, 350.5, 19294.57, 23303.18)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (702, 351, 19320.86, 23335.84)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (703, 351.5, 19347.16, 23368.5)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (704, 352, 19373.45, 23401.16)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (705, 352.5, 19399.75, 23433.81)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (706, 353, 19426.04, 23466.47)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (707, 353.5, 19452.34, 23499.13)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (708, 354, 19478.64, 23531.79)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (709, 354.5, 19504.93, 23564.45)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (710, 355, 19531.23, 23597.11)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (711, 355.5, 19557.52, 23629.77)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (712, 356, 19583.82, 23662.43)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (713, 356.5, 19610.11, 23695.09)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (714, 357, 19636.41, 23727.74)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (715, 357.5, 19662.71, 23760.4)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (716, 358, 19689, 23793.06)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (717, 358.5, 19715.3, 23825.72)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (718, 359, 19741.59, 23858.38)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (719, 359.5, 19767.89, 23891.04)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (720, 360, 19794.18, 23923.7)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (721, 360.5, 19820.48, 23956.36)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (722, 361, 19846.78, 23989.02)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (723, 361.5, 19873.07, 24021.67)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (724, 362, 19899.37, 24054.33)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (725, 362.5, 19925.66, 24086.99)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (726, 363, 19951.96, 24119.65)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (727, 363.5, 19978.25, 24152.31)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (728, 364, 20004.55, 24184.97)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (729, 364.5, 20030.85, 24217.63)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (730, 365, 20057.14, 24250.29)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (731, 365.5, 20083.44, 24282.95)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (732, 366, 20109.73, 24315.6)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (733, 366.5, 20136.03, 24348.26)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (734, 367, 20162.32, 24380.92)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (735, 367.5, 20188.62, 24413.58)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (736, 368, 20214.92, 24446.24)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (737, 368.5, 20241.21, 24478.9)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (738, 369, 20267.51, 24511.56)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (739, 369.5, 20293.8, 24544.22)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (740, 370, 20320.1, 24576.88)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (741, 370.5, 20346.39, 24609.53)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (742, 371, 20372.69, 24642.19)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (743, 371.5, 20398.99, 24674.85)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (744, 372, 20425.28, 24707.51)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (745, 372.5, 20451.58, 24740.17)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (746, 373, 20477.87, 24772.83)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (747, 373.5, 20504.17, 24805.49)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (748, 374, 20530.46, 24838.15)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (749, 374.5, 20556.76, 24870.81)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (750, 375, 20583.06, 24903.47)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (751, 375.5, 20609.35, 24936.12)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (752, 376, 20635.65, 24968.78)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (753, 376.5, 20661.94, 25001.44)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (754, 377, 20688.24, 25034.1)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (755, 377.5, 20714.53, 25066.76)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (756, 378, 20740.83, 25099.42)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (757, 378.5, 20767.12, 25132.08)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (758, 379, 20793.42, 25164.74)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (759, 379.5, 20819.72, 25197.4)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (760, 380, 20846.01, 25230.05)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (761, 380.5, 20872.31, 25262.71)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (762, 381, 20898.6, 25295.37)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (763, 381.5, 20924.9, 25328.03)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (764, 382, 20951.19, 25360.69)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (765, 382.5, 20977.49, 25393.35)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (766, 383, 21003.79, 25426.01)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (767, 383.5, 21030.08, 25458.67)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (768, 384, 21056.38, 25491.33)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (769, 384.5, 21082.67, 25523.98)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (770, 385, 21108.97, 25556.64)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (771, 385.5, 21135.26, 25589.3)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (772, 386, 21161.56, 25621.96)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (773, 386.5, 21187.86, 25654.62)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (774, 387, 21214.15, 25687.28)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (775, 387.5, 21240.45, 25719.94)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (776, 388, 21266.74, 25752.6)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (777, 388.5, 21293.04, 25785.26)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (778, 389, 21319.33, 25817.91)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (779, 389.5, 21345.63, 25850.57)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (780, 390, 21371.93, 25883.23)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (781, 390.5, 21398.22, 25915.89)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (782, 391, 21424.52, 25948.55)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (783, 391.5, 21450.81, 25981.21)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (784, 392, 21477.11, 26013.87)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (785, 392.5, 21503.4, 26046.53)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (786, 393, 21529.7, 26079.19)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (787, 393.5, 21556, 26111.84)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (788, 394, 21582.29, 26144.5)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (789, 394.5, 21608.59, 26177.16)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (790, 395, 21634.88, 26209.82)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (791, 395.5, 21661.18, 26242.48)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (792, 396, 21687.47, 26275.14)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (793, 396.5, 21713.77, 26307.8)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (794, 397, 21740.07, 26340.46)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (795, 397.5, 21766.36, 26373.12)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (796, 398, 21792.66, 26405.77)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (797, 398.5, 21818.95, 26438.43)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (798, 399, 21845.25, 26471.09)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (799, 399.5, 21871.54, 26503.75)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (800, 400, 21897.84, 26536.41)
GO
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (801, 400.5, 21924.13, 26568.63)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (802, 401, 21950.43, 26600.85)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (803, 401.5, 21976.72, 26633.07)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (804, 402, 22003.02, 26665.28)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (805, 402.5, 22029.31, 26697.5)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (806, 403, 22055.61, 26729.72)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (807, 403.5, 22081.9, 26761.94)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (808, 404, 22108.2, 26794.16)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (809, 404.5, 22134.49, 26826.38)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (810, 405, 22160.79, 26858.59)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (811, 405.5, 22187.08, 26890.81)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (812, 406, 22213.38, 26923.03)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (813, 406.5, 22239.67, 26955.25)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (814, 407, 22265.97, 26987.47)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (815, 407.5, 22292.26, 27019.69)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (816, 408, 22318.56, 27051.9)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (817, 408.5, 22344.85, 27084.12)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (818, 409, 22371.15, 27116.34)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (819, 409.5, 22397.44, 27148.56)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (820, 410, 22423.74, 27180.78)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (821, 410.5, 22450.03, 27213)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (822, 411, 22476.33, 27245.21)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (823, 411.5, 22502.62, 27277.43)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (824, 412, 22528.92, 27309.65)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (825, 412.5, 22555.21, 27341.87)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (826, 413, 22581.5, 27374.09)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (827, 413.5, 22607.8, 27406.31)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (828, 414, 22634.09, 27438.52)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (829, 414.5, 22660.39, 27470.74)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (830, 415, 22686.68, 27502.96)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (831, 415.5, 22712.98, 27535.18)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (832, 416, 22739.27, 27567.4)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (833, 416.5, 22765.57, 27599.62)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (834, 417, 22791.86, 27631.83)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (835, 417.5, 22818.16, 27664.05)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (836, 418, 22844.45, 27696.27)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (837, 418.5, 22870.75, 27728.49)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (838, 419, 22897.04, 27760.71)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (839, 419.5, 22923.34, 27792.93)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (840, 420, 22949.63, 27825.14)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (841, 420.5, 22975.93, 27857.36)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (842, 421, 23002.22, 27889.58)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (843, 421.5, 23028.52, 27921.8)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (844, 422, 23054.81, 27954.02)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (845, 422.5, 23081.11, 27986.24)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (846, 423, 23107.4, 28018.45)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (847, 423.5, 23133.7, 28050.67)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (848, 424, 23159.99, 28082.89)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (849, 424.5, 23186.29, 28115.11)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (850, 425, 23212.58, 28147.33)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (851, 425.5, 23238.87, 28179.55)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (852, 426, 23265.17, 28211.76)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (853, 426.5, 23291.46, 28243.98)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (854, 427, 23317.76, 28276.2)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (855, 427.5, 23344.05, 28308.42)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (856, 428, 23370.35, 28340.64)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (857, 428.5, 23396.64, 28372.86)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (858, 429, 23422.94, 28405.07)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (859, 429.5, 23449.23, 28437.29)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (860, 430, 23475.53, 28469.51)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (861, 430.5, 23501.82, 28501.73)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (862, 431, 23528.12, 28533.95)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (863, 431.5, 23554.41, 28566.17)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (864, 432, 23580.71, 28598.38)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (865, 432.5, 23607, 28630.6)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (866, 433, 23633.3, 28662.82)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (867, 433.5, 23659.59, 28695.04)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (868, 434, 23685.89, 28727.26)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (869, 434.5, 23712.18, 28759.48)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (870, 435, 23738.48, 28791.69)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (871, 435.5, 23764.77, 28823.91)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (872, 436, 23791.07, 28856.13)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (873, 436.5, 23817.36, 28888.35)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (874, 437, 23843.66, 28920.57)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (875, 437.5, 23869.95, 28952.79)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (876, 438, 23896.24, 28985)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (877, 438.5, 23922.54, 29017.22)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (878, 439, 23948.83, 29049.44)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (879, 439.5, 23975.13, 29081.66)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (880, 440, 24001.42, 29113.88)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (881, 440.5, 24027.72, 29146.1)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (882, 441, 24054.01, 29178.31)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (883, 441.5, 24080.31, 29210.53)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (884, 442, 24106.6, 29242.75)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (885, 442.5, 24132.9, 29274.97)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (886, 443, 24159.19, 29307.19)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (887, 443.5, 24185.49, 29339.41)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (888, 444, 24211.78, 29371.62)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (889, 444.5, 24238.08, 29403.84)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (890, 445, 24264.37, 29436.06)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (891, 445.5, 24290.67, 29468.28)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (892, 446, 24316.96, 29500.5)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (893, 446.5, 24343.26, 29532.72)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (894, 447, 24369.55, 29564.93)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (895, 447.5, 24395.85, 29597.15)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (896, 448, 24422.14, 29629.37)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (897, 448.5, 24448.44, 29661.59)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (898, 449, 24474.73, 29693.81)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (899, 449.5, 24501.03, 29726.03)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (900, 450, 24527.32, 29758.25)
GO
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (901, 450.5, 24553.61, 29790.46)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (902, 451, 24579.91, 29822.68)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (903, 451.5, 24606.2, 29854.9)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (904, 452, 24632.5, 29887.12)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (905, 452.5, 24658.79, 29919.34)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (906, 453, 24685.09, 29951.56)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (907, 453.5, 24711.38, 29983.77)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (908, 454, 24737.68, 30015.99)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (909, 454.5, 24763.97, 30048.21)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (910, 455, 24790.27, 30080.43)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (911, 455.5, 24816.56, 30112.65)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (912, 456, 24842.86, 30144.87)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (913, 456.5, 24869.15, 30177.08)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (914, 457, 24895.45, 30209.3)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (915, 457.5, 24921.74, 30241.52)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (916, 458, 24948.04, 30273.74)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (917, 458.5, 24974.33, 30305.96)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (918, 459, 25000.63, 30338.18)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (919, 459.5, 25026.92, 30370.39)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (920, 460, 25053.22, 30402.61)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (921, 460.5, 25079.51, 30434.83)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (922, 461, 25105.81, 30467.05)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (923, 461.5, 25132.1, 30499.27)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (924, 462, 25158.4, 30531.49)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (925, 462.5, 25184.69, 30563.7)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (926, 463, 25210.98, 30595.92)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (927, 463.5, 25237.28, 30628.14)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (928, 464, 25263.57, 30660.36)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (929, 464.5, 25289.87, 30692.58)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (930, 465, 25316.16, 30724.8)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (931, 465.5, 25342.46, 30757.01)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (932, 466, 25368.75, 30789.23)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (933, 466.5, 25395.05, 30821.45)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (934, 467, 25421.34, 30853.67)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (935, 467.5, 25447.64, 30885.89)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (936, 468, 25473.93, 30918.11)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (937, 468.5, 25500.23, 30950.32)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (938, 469, 25526.52, 30982.54)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (939, 469.5, 25552.82, 31014.76)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (940, 470, 25579.11, 31046.98)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (941, 470.5, 25605.41, 31079.2)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (942, 471, 25631.7, 31111.42)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (943, 471.5, 25658, 31143.63)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (944, 472, 25684.29, 31175.85)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (945, 472.5, 25710.59, 31208.07)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (946, 473, 25736.88, 31240.29)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (947, 473.5, 25763.18, 31272.51)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (948, 474, 25789.47, 31304.73)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (949, 474.5, 25815.77, 31336.94)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (950, 475, 25842.06, 31369.16)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (951, 475.5, 25868.35, 31401.38)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (952, 476, 25894.65, 31433.6)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (953, 476.5, 25920.94, 31465.82)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (954, 477, 25947.24, 31498.04)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (955, 477.5, 25973.53, 31530.25)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (956, 478, 25999.83, 31562.47)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (957, 478.5, 26026.12, 31594.69)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (958, 479, 26052.42, 31626.91)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (959, 479.5, 26078.71, 31659.13)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (960, 480, 26105.01, 31691.35)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (961, 480.5, 26131.3, 31723.56)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (962, 481, 26157.6, 31755.78)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (963, 481.5, 26183.89, 31788)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (964, 482, 26210.19, 31820.22)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (965, 482.5, 26236.48, 31852.44)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (966, 483, 26262.78, 31884.66)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (967, 483.5, 26289.07, 31916.87)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (968, 484, 26315.37, 31949.09)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (969, 484.5, 26341.66, 31981.31)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (970, 485, 26367.96, 32013.53)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (971, 485.5, 26394.25, 32045.75)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (972, 486, 26420.55, 32077.97)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (973, 486.5, 26446.84, 32110.18)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (974, 487, 26473.14, 32142.4)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (975, 487.5, 26499.43, 32174.62)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (976, 488, 26525.72, 32206.84)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (977, 488.5, 26552.02, 32239.06)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (978, 489, 26578.31, 32271.28)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (979, 489.5, 26604.61, 32303.49)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (980, 490, 26630.9, 32335.71)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (981, 490.5, 26657.2, 32367.93)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (982, 491, 26683.49, 32400.15)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (983, 491.5, 26709.79, 32432.37)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (984, 492, 26736.08, 32464.59)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (985, 492.5, 26762.38, 32496.8)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (986, 493, 26788.67, 32529.02)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (987, 493.5, 26814.97, 32561.24)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (988, 494, 26841.26, 32593.46)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (989, 494.5, 26867.56, 32625.68)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (990, 495, 26893.85, 32657.9)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (991, 495.5, 26920.15, 32690.11)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (992, 496, 26946.44, 32722.33)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (993, 496.5, 26972.74, 32754.55)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (994, 497, 26999.03, 32786.77)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (995, 497.5, 27025.33, 32818.99)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (996, 498, 27051.62, 32851.21)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (997, 498.5, 27077.92, 32883.42)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (998, 499, 27104.21, 32915.64)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (999, 499.5, 27130.51, 32947.86)
INSERT [dbo].[LEAD_CHART] ([SR_NO], [KM], [TCostMachine], [TCostManual]) VALUES (1000, 500, 27156.8, 32980.08)
GO
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (1, N'BRICKS', 3.105, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (2, N'FLY ASH BRICKS', 3.105, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (3, N'CONCRETE BLOCK', 7, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (4, N'HOLLOW BLOCK', 7, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (5, N'SOLID BLOCK', 7, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (6, N'AAC BLOCK', 7, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (7, N'GBP BLOCK', 7, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (8, N'CEMENT', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (9, N'WHITE CEMENT', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (10, N'POP', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (11, N'WATERPROOFING COMP', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (12, N'STEEL', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (13, N'MS STEEL', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (14, N'TMT STEEL', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (15, N'HYSD STEEL', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (16, N'STRUCTURAL MS', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (17, N'LIME', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (18, N'STONE BLOCK', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (19, N'GI PIPES', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (20, N'CI PIPES', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (21, N'CC PIPES', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (22, N'AC PIPES', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (23, N'PVC PIPES', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (24, N'GLASS IN PACKS', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (25, N'DISTEMPER', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (26, N'AC SHEET', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (27, N'ALLUMINIUM', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (28, N'IRON SHEET', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (29, N'CGI SHEET', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (30, N'ZINC SHEET', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (31, N'PLATES', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (32, N'POLYMER', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (33, N'THERMO PAINT', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (34, N'COAL TAR', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (35, N'EPOXY PAINT', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (36, N'RETRO PAINT', 10, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (37, N'TILES', 5, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (38, N'HALF ROUND TILES', 5, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (39, N'MANGLORE TILES', 5, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (40, N'ROOFING TILES', 5, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (41, N'FLOORING STONE', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (42, N'FLOORING TILES', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (43, N'CERAMIC', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (44, N'MARBONATE', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (45, N'KADAPPA', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (46, N'CERAMIC', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (47, N'GLAZED TILES', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (48, N'KOTA', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (49, N'MARBLE', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (50, N'GRANITE', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (51, N'TANDUR', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (52, N'RSS FLOORING', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (53, N'POLISH SHAHABAD', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (54, N'PAVING BLOCK', 100, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (55, N'ASPHALT IN DRUM', 50, N'MANUAL', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (56, N'MURUM-HARD', 6, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (57, N'MURUM-SOFT', 6, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (58, N'SHINGLE', 6, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (59, N'BUILDING RUBISH', 6, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (60, N'RCC RUBISH', 6, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (61, N'EARTH', 6, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (62, N'SOIL', 6, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (63, N'SAND', 5.75, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (64, N'FINE AGGREGATE', 5.75, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (65, N'ARTIFICIAL SAND', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (66, N'CRUSHED SAND', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (67, N'CR METAL', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (68, N'FLY ASH', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (69, N'GRIT', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (70, N'CHIPS', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (71, N'QUARRY SPAUL', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (72, N'25MM METAL', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (73, N'20MM METAL', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (74, N'12MM METAL', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (75, N'10MM METAL', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (76, N'06MM METAL', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (77, N'STONE DUST', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (78, N'SCREENING', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (79, N'BRICK BAT', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (80, N'METAL', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (81, N'TIMBER', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (82, N'WOOD', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (83, N'TEAK WOOD', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (84, N'JUNGLE WOOD', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (85, N'PLY WOOD', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (86, N'FLUSH DOOR', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (87, N'PARTICLE BOARD', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (88, N'ALUMINIUM', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (89, N'NORMAL BRICK', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (90, N'METAL < 40MM', 5.75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (91, N'80MM METAL', 6, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (92, N'60MM METAL', 6, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (93, N'40MM METAL', 6, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (94, N'40MM METAL HB', 6, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (95, N'40MM METAL CB', 6, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (96, N'METAL > 40MM', 6, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (97, N'QUINS', 6, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (98, N'KHANDKI', 6, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (99, N'BITUMEN', 5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (100, N'ASPHALT', 5, N'MACHINE', N'NO')
GO
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (101, N'MANURE SLUDGE', 5.45, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (102, N'EXCAVATED ROCK', 4.7, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (103, N'SOLING', 4.7, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (104, N'RUBBLE', 4.7, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (105, N'HEADER', 4.7, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (106, N'STONE', 4.7, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (107, N'BOULDER', 4.7, N'MACHINE', N'YES')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (108, N'RCC PIPE 300MM NP-2', 87.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (109, N'RCC PIPE 450MM NP-2', 62.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (110, N'RCC PIPE 600MM NP-2', 37.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (111, N'RCC PIPE 800MM NP-2', 27.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (112, N'RCC PIPE 900MM NP-2', 22.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (113, N'RCC PIPE 1000MM NP-2', 12.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (114, N'RCC PIPE 1200MM NP-2', 10, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (115, N'RCC PIPE 1800MM NP-2', 5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (116, N'RCC PIPE 300MM NP-3', 75, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (117, N'RCC PIPE 450MM NP-3', 32.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (118, N'RCC PIPE 600MM NP-3', 22.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (119, N'RCC PIPE 800MM NP-3', 15, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (120, N'RCC PIPE 900MM NP-3', 12.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (121, N'RCC PIPE 1000MM NP-3', 10, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (122, N'RCC PIPE 1200MM NP-3', 7.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (123, N'RCC PIPE 1800MM NP-3', 5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (124, N'RCC PIPE 600MM NP-4', 22.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (125, N'RCC PIPE 800MM NP-4', 15, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (126, N'RCC PIPE 900MM NP-4', 12.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (127, N'RCC PIPE 1000MM NP-4', 10, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (128, N'RCC PIPE 1200MM NP-4', 7.5, N'MACHINE', N'NO')
INSERT [dbo].[MATERIAL] ([SR_NO], [MATERIAL], [FACTOR], [MTYPE], [ROY]) VALUES (129, N'RCC PIPE 1800MM NP-4', 5, N'MACHINE', N'NO')
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (1, 0.22, 0.11, 0.33)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (2, 0.67, 0.22, 0.89)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (3, 0.63, 0.27, 0.9)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (4, 0.57, 0.28, 0.85)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (5, 0.58, 0.28, 0.86)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (6, 0.023, 0.007, 0.03)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (7, 0.028, 0.01, 0.038)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (8, 0.027, 0.08, 0.107)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (9, 0.033, 0.011, 0.044)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (10, 0.24, 0, 0.24)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (11, 0.24, 0.15, 0.39)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (12, 0.304, 0.294, 0.598)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (13, 0.299, 0.304, 0.603)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (14, 0.63, 0.27, 0.9)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (15, 0.58, 0.28, 0.86)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (16, 0.027, 0.013, 0.04)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (17, 0.022, 0.012, 0.034)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (18, 0.04, 0.02, 0.06)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (19, 0.044, 0.024, 0.068)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (20, 0.056, 0.029, 0.085)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (21, 0.064, 0.03, 0.094)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (22, 0.074, 0.037, 0.111)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (23, 0.084, 0.035, 0.119)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (24, 0.091, 0.045, 0.136)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (25, 0.103, 0.05, 0.153)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (26, 0.112, 0.058, 0.17)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (27, 0.125, 0.062, 0.187)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (28, 0.135, 0.069, 0.204)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (29, 0.161, 0.077, 0.238)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (30, 0.176, 0.088, 0.264)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (31, 0.188, 0.093, 0.281)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (32, 0.25, 0.124, 0.374)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (33, 0.285, 0.14, 0.425)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (34, 0.3, 0.151, 0.451)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (35, 0.364, 0.18, 0.544)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (36, 0.425, 0.213, 0.638)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (37, 0.448, 0.224, 0.672)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (38, 0.495, 0.245, 0.74)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (39, 0.542, 0.266, 0.808)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (40, 0.644, 0.317, 0.961)
INSERT [dbo].[METAL] ([SNO], [20MM], [12MM], [CRMETAL]) VALUES (41, 1.01, 0.495, 1.505)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (1, N'BDF', N'RCC', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (2, N'BDG', N'B.B. Masonry', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (3, N'BDS', N'M.S./ HYSD Reinforcment', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (4, N'BDJ', N'Water proofing Treatment with B.B. Coba', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (5, N'BDL', N'Plastering  Pointing', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (6, N'BDM', N'Flooring  Paving treads (except white glazed  Ceramic Marble tiles)', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (7, N'BDO', N'External painting', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (8, N'BDR', N'Manglore tile roof  Ridge  Ceiling', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (9, N'BDT', N'Weather sheds  Replacing external window shutter using scaffolding', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (10, N'BDU', N'Structural steel work  Tubular trusses', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (11, N'BDC', N'Structural steel work  Tubular trusses', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (12, N'BDV', N'Soil/ waste  vent and rain water  pipes and saniteries waires etc.', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[MFLOOR] ([SR], [Descrip], [ITEMS], [I], [II], [III], [IV], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (13, N'BDW', N'External Guiniting', 1, 2, 3, 4, 4, 6, 6.5, 6.5, 6.5, 6.5)
INSERT [dbo].[SETTINGS] ([SNO], [RRATE], [INLEAD], [CEMENT_Rate], [BITUMEN_Rate], [STEEL_Rate]) VALUES (1, 141.34, 0.05, 4, 32204, 6)
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (1, 1, N'BASIC TEST OF CEMENT', N'Standard Consistency Fineness,Specific Gravity, Setting Time ( Initial & Final), Compressive Strength, Soundness', N'CEMENT', N'1 TEST', 3300, 50, N'MT.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (2, 2, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'METAL < 40MM', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (3, 3, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'80MM METAL', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (4, 4, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'60MM METAL', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (5, 5, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'40MM METAL', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (6, 6, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'40MM METAL HB', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (7, 7, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'40MM METAL CB', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (8, 8, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'METAL > 40MM', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (9, 9, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'RUBBLE', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (10, 10, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'STONE', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (11, 11, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'HEADER', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (12, 12, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'QUINS', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (13, 13, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'KHANDKI', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (14, 14, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'25MM METAL', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (15, 15, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'20MM METAL', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (16, 16, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'12MM METAL', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (17, 17, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'10MM METAL', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (18, 18, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'06MM METAL', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (19, 19, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'CR METAL', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (20, 20, N'BASIC TEST OF AGGREGATE', N'Water Absorption, Specific Gravity, Impact Value, Crushing Value', N'METAL', N'1 TEST', 2300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (21, 21, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'METAL < 40MM', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (22, 22, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'80MM METAL', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (23, 23, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'60MM METAL', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (24, 24, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'40MM METAL', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (25, 25, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'40MM METAL HB', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (26, 26, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'40MM METAL CB', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (27, 27, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'METAL > 40MM', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (28, 28, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'25MM METAL', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (29, 29, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'20MM METAL', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (30, 30, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'12MM METAL', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (31, 31, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'10MM METAL', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (32, 32, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'06MM METAL', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (33, 33, N'BASIC TEST OF AGGREGATE', N'Sieve Analysis', N'METAL', N'1 TEST', 600, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (34, 34, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'METAL < 40MM', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (35, 35, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'80MM METAL', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (36, 36, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'60MM METAL', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (37, 37, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'40MM METAL', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (38, 38, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'40MM METAL HB', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (39, 39, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'40MM METAL CB', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (40, 40, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'METAL > 40MM', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (41, 41, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'25MM METAL', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (42, 42, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'20MM METAL', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (43, 43, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'12MM METAL', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (44, 44, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'10MM METAL', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (45, 45, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'06MM METAL', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (46, 46, N'BASIC TEST OF AGGREGATE', N'Abrasion Value', N'METAL', N'1 TEST', 1050, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (47, 47, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'METAL < 40MM', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (48, 48, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'80MM METAL', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (49, 49, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'60MM METAL', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (50, 50, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'40MM METAL', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (51, 51, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'40MM METAL HB', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (52, 52, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'40MM METAL CB', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (53, 53, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'METAL > 40MM', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (54, 54, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'RUBBLE', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (55, 55, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'STONE', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (56, 56, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'25MM METAL', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (57, 57, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'20MM METAL', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (58, 58, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'12MM METAL', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (59, 59, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'10MM METAL', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (60, 60, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'06MM METAL', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (61, 61, N'BASIC TEST OF AGGREGATE', N'Flakiness Index/ Elongation Index', N'METAL', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (62, 62, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'METAL < 40MM', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (63, 63, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'80MM METAL', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (64, 64, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'60MM METAL', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (65, 65, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'40MM METAL', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (66, 66, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'40MM METAL HB', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (67, 67, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'40MM METAL CB', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (68, 68, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'METAL > 40MM', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (69, 69, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'RUBBLE', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (70, 70, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'STONE', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (71, 71, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'25MM METAL', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (72, 72, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'20MM METAL', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (73, 73, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'12MM METAL', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (74, 74, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'10MM METAL', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (75, 75, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'06MM METAL', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (76, 76, N'BASIC TEST OF AGGREGATE', N'Stripping Value (for Bituminous Work)', N'METAL', N'1 TEST', 660, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (77, 77, N'BASIC TEST OF AGGREGATE', N'Soundness', N'METAL < 40MM', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (78, 78, N'BASIC TEST OF AGGREGATE', N'Soundness', N'80MM METAL', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (79, 79, N'BASIC TEST OF AGGREGATE', N'Soundness', N'60MM METAL', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (80, 80, N'BASIC TEST OF AGGREGATE', N'Soundness', N'40MM METAL', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (81, 81, N'BASIC TEST OF AGGREGATE', N'Soundness', N'40MM METAL HB', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (82, 82, N'BASIC TEST OF AGGREGATE', N'Soundness', N'40MM METAL CB', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (83, 83, N'BASIC TEST OF AGGREGATE', N'Soundness', N'METAL > 40MM', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (84, 84, N'BASIC TEST OF AGGREGATE', N'Soundness', N'RUBBLE', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (85, 85, N'BASIC TEST OF AGGREGATE', N'Soundness', N'STONE', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (86, 86, N'BASIC TEST OF AGGREGATE', N'Soundness', N'25MM METAL', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (87, 87, N'BASIC TEST OF AGGREGATE', N'Soundness', N'20MM METAL', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (88, 88, N'BASIC TEST OF AGGREGATE', N'Soundness', N'12MM METAL', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (89, 89, N'BASIC TEST OF AGGREGATE', N'Soundness', N'10MM METAL', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (90, 90, N'BASIC TEST OF AGGREGATE', N'Soundness', N'06MM METAL', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (91, 91, N'BASIC TEST OF AGGREGATE', N'Soundness', N'METAL', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (92, 92, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'METAL < 40MM', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (93, 93, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'80MM METAL', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (94, 94, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'60MM METAL', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (95, 95, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'40MM METAL', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (96, 96, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'40MM METAL HB', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (97, 97, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'40MM METAL CB', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (98, 98, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'METAL > 40MM', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (99, 99, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'25MM METAL', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (100, 100, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'20MM METAL', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
GO
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (101, 101, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'12MM METAL', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (102, 102, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'10MM METAL', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (103, 103, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'06MM METAL', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (104, 104, N'BASIC TEST OF AGGREGATE', N'Bulk Density', N'METAL', N'1 TEST', 300, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (105, 105, N'MIX DESIGN', N'GSB Mix Design', N'BDF,BDB', N'1 TEST', 14300, 400, N'Cu.M.', N'QTY')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (106, 106, N'MIX DESIGN', N'Wet Mix Macadam Mix Design', NULL, N'1 TEST', 14300, 400, N'Cu.M.', N'QTY')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (107, 107, N'FINE AGGREGATES', N'Fineness Modulus (Sieve Analysis), Silt & Clay Content', N'SAND', N'1 TEST', 1200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (108, 108, N'FINE AGGREGATES', N'Chloride & Sulphate Content', N'SAND', N'1 TEST', 700, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (109, 109, N'FINE AGGREGATES', N'Silt Factor', N'SAND', N'1 TEST', 750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (110, 110, N'BRICKS', N'Water Absorption, Compressive Strength, Efflorescence', N'BRICKS', N'1 TEST', 1900, 50000, N'No.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (111, 111, N'BRICKS', N'Water Absorption, Compressive Strength, Efflorescence', N'FLY ASH BRICKS', N'1 TEST', 1900, 50000, N'No.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (112, 112, N'FLOORING TILES [MOSSAIC / CEMENT ]', N'Flexural test ( Set of 6 Tiles), Water Absorption (Set of 6 Tiles) Resistance to wear ( Set of 6 Tiles).', N'FLOORING TILES', N'1 TEST', 2200, 180, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (113, 113, N'FLOORING OF NATURAL STONE', N'Water Absorption , Specific Gravity', N'KOTA', N'1 TEST', 1200, 250, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (114, 114, N'FLOORING OF NATURAL STONE', N'Water Absorption , Specific Gravity', N'MARBLE', N'1 TEST', 1200, 250, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (115, 115, N'FLOORING OF NATURAL STONE', N'Water Absorption , Specific Gravity', N'GRANITE', N'1 TEST', 1200, 250, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (116, 116, N'FLOORING OF NATURAL STONE', N'Water Absorption , Specific Gravity', N'TANDUR', N'1 TEST', 1200, 250, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (117, 117, N'FLOORING OF NATURAL STONE', N'Water Absorption , Specific Gravity', N'KADAPPA', N'1 TEST', 1200, 250, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (118, 118, N'FLOORING OF NATURAL STONE', N'Water Absorption , Specific Gravity', N'RSS FLOORING', N'1 TEST', 1200, 700, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (119, 119, N'FLOORING OF NATURAL STONE', N'Water Absorption , Specific Gravity', N'POLISH SHAHABAD', N'1 TEST', 1200, 700, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (120, 120, N'GLAZED TILES', N'Water Absorption(Set of 6 Tiles), Modulus of Rupture ( Set of 6 Tiles)', N'GLAZED TILES', N'1 TEST', 1300, 1800, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (121, 121, N'GLAZED TILES', N'Determination of Impact Resistance', N'GLAZED TILES', N'1 TEST', 600, 1800, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (122, 122, N'CERAMIC/VITRIFIED TILES', N'Water Absorption, Modulus of Rupture', N'MARBONATE', N'1 TEST', 1400, 700, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (123, 123, N'CERAMIC/VITRIFIED TILES', N'Water Absorption, Modulus of Rupture', N'CERAMIC', N'1 TEST', 1400, 180, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (124, 124, N'MANGLORE TILES', N'Water Absorption (Set of 6 Tiles), Flexural test ( Set of 6 Tiles)', N'MANGLORE TILES', N'1 TEST', 1300, 135, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (125, 125, N'MANGLORE TILES', N'Permeability', N'MANGLORE TILES', N'1 TEST', 850, 135, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (126, 126, N'CONCRETE', N'Compressive strength of C.C.Cube (Set of 3 cubes)', N'RCC', N'1 TEST', 600, 0, N'Cu.M.', N'QTY')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (127, 127, N'CONCRETE', N'Concrete Mix Design (With all Tests on basic materials)', N'RCC', N'1 TEST', 12100, 100, N'Cu.M.', N'QTY')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (128, 128, N'CONCRETE', N'Flexural strength of Beam', N'RCC', N'1 TEST', 650, 0, N'Cu.M.', N'QTY')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (129, 129, N'CONCRETE', N'Permeability Test', N'RCC', N'1 TEST', 1350, 0, N'Cu.M.', N'QTY')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (130, 130, N'CONCRETE', N'Concrete Mix Design by Accelerated curing method. (Boiling water Method)', N'RCC', N'1 TEST', 14300, 100, N'Cu.M.', N'QTY')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (131, 131, N'CONCRETE', N'Taking of core samples in concrete pavement. (Excluding Dead journey charges)', N'RCC', N'1 TEST', 2500, 0, N'Cu.M.', N'QTY')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (132, 132, N'CONCRETE', N'Dead Journey charges', N'RCC', N'1 TEST', 15, 1, N'Km.', N'QTY')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (133, 133, N'CONCRETE PAVING BLOCK', N'Compressive strength, Water Absorption (Set of 8 Blocks), Flexural Test (Set of 8 Blocks ), Resistance to wear (Set of 8 Blocks )', N'CONCRETE BLOCK', N'1 TEST', 2200, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (134, 134, N'CONCRETE PAVING BLOCK', N'Compressive strength, Water Absorption (Set of 8 Blocks), Flexural Test (Set of 8 Blocks ), Resistance to wear (Set of 8 Blocks )', N'AAC BLOCK', N'1 TEST', 2200, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (135, 135, N'CONCRETE PAVING BLOCK', N'Compressive strength, Water Absorption (Set of 8 Blocks), Flexural Test (Set of 8 Blocks ), Resistance to wear (Set of 8 Blocks )', N'SOLID BLOCK', N'1 TEST', 2200, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (136, 136, N'CONCRETE PAVING BLOCK', N'Compressive strength, Water Absorption (Set of 8 Blocks), Flexural Test (Set of 8 Blocks ), Resistance to wear (Set of 8 Blocks )', N'HOLLOW BLOCK', N'1 TEST', 2200, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (137, 137, N'CONCRETE PAVING BLOCK', N'Compressive strength, Water Absorption (Set of 8 Blocks), Flexural Test (Set of 8 Blocks ), Resistance to wear (Set of 8 Blocks )', N'GBP BLOCK', N'1 TEST', 2200, 130, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (138, 138, N'CONCRETE PAVING BLOCK', N'Compressive strength, Water Absorption (Set of 8 Blocks), Flexural Test (Set of 8 Blocks ), Resistance to wear (Set of 8 Blocks )', N'PAVING BLOCK', N'1 TEST', 2200, 130, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (139, 139, N'MORTOR', N'Compressive strength (Set of 3 Cubes)', NULL, N'1 TEST', 600, 100, N'Sq.M.', N'MORTOR')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (140, 140, N'STONE/RUBBLE', N'Crushing Value / Compressive Strength Water Absorption and Specific Gravity', N'RUBBLE', N'1 TEST', 1750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (141, 141, N'STONE/RUBBLE', N'Crushing Value / Compressive Strength Water Absorption and Specific Gravity', N'STONE', N'1 TEST', 1750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (142, 142, N'STONE/RUBBLE', N'Crushing Value / Compressive Strength Water Absorption and Specific Gravity', N'HEADER', N'1 TEST', 1750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (143, 143, N'STONE/RUBBLE', N'Crushing Value / Compressive Strength Water Absorption and Specific Gravity', N'QUINS', N'1 TEST', 1750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (144, 144, N'STONE/RUBBLE', N'Crushing Value / Compressive Strength Water Absorption and Specific Gravity', N'KHANDKI', N'1 TEST', 1750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (145, 145, N'MURUM-HARD', N'Sieve Analysis', N'MURUM-HARD', N'1 TEST', 600, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (146, 146, N'MURUM-HARD', N'Field Moisture Content', N'MURUM-HARD', N'1 TEST', 350, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (147, 147, N'MURUM-HARD', N'Liquid limit & Plastic limit', N'MURUM-HARD', N'1 TEST', 1000, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (148, 148, N'MURUM-HARD', N'Compaction Test (Proctor Density)', N'MURUM-HARD', N'1 TEST', 1650, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (149, 149, N'MURUM-HARD', N'CBR Test (Lab) With compaction test', N'MURUM-HARD', N'1 TEST', 6050, 1000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (150, 150, N'MURUM-HARD', N'CBR Test [Field Determination Test) Excluding Transportations per IS 2720 Part XXX]', N'MURUM-HARD', N'1 TEST', 2300, 1000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (151, 151, N'MURUM-HARD', N'Dead Journey charges, Inspection Veh.', N'MURUM-HARD', N'1 TEST', 15, 1, N'Km.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (152, 152, N'MURUM-HARD', N'Dead Journey charges, Truck/Tipper', N'MURUM-HARD', N'1 TEST', 54, 1, N'Km.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (153, 153, N'MURUM-HARD', N'Field Density by sand replacement method', N'MURUM-HARD', N'1 TEST', 1000, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (154, 154, N'MURUM-HARD', N'Sulphate & Chloride Contents.', N'MURUM-HARD', N'1 TEST', 700, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (155, 155, N'MURUM-HARD', N'Mechanical Analysis.', N'MURUM-HARD', N'1 TEST', 1950, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (156, 156, N'MURUM-HARD', N'Plate Load Bearing Test. [Excluding Transportation ]', N'MURUM-HARD', N'1 TEST', 27500, 5000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (157, 157, N'MURUM-SOFT', N'Sieve Analysis', N'MURUM-SOFT', N'1 TEST', 600, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (158, 158, N'MURUM-SOFT', N'Field Moisture Content', N'MURUM-SOFT', N'1 TEST', 350, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (159, 159, N'MURUM-SOFT', N'Liquid limit & Plastic limit', N'MURUM-SOFT', N'1 TEST', 1000, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (160, 160, N'MURUM-SOFT', N'Compaction Test (Proctor Density)', N'MURUM-SOFT', N'1 TEST', 1650, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (161, 161, N'MURUM-SOFT', N'CBR Test (Lab) Excluding compaction test', N'MURUM-SOFT', N'1 TEST', 6050, 1000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (162, 162, N'MURUM-SOFT', N'CBR Test [Field Determination Test) Excluding Transportations per IS 2720 Part XXX]', N'MURUM-SOFT', N'1 TEST', 2300, 1000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (163, 163, N'MURUM-SOFT', N'Dead Journey charges, Inspection Veh.', N'MURUM-SOFT', N'1 TEST', 15, 1, N'Km.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (164, 164, N'MURUM-SOFT', N'Dead Journey charges, Truck/Tipper', N'MURUM-SOFT', N'1 TEST', 15, 1, N'Km.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (165, 165, N'MURUM-SOFT', N'Field Density by sand replacement method', N'MURUM-SOFT', N'1 TEST', 1000, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (166, 166, N'MURUM-SOFT', N'Sulphate & Chloride Contents.', N'MURUM-SOFT', N'1 TEST', 700, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (167, 167, N'MURUM-SOFT', N'Mechanical Analysis.', N'MURUM-SOFT', N'1 TEST', 1950, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (168, 168, N'MURUM-SOFT', N'Plate Load Bearing Test. [Excluding Transportation ]', N'MURUM-SOFT', N'1 TEST', 27500, 5000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (169, 169, N'SOIL', N'Sieve Analysis', N'SOIL', N'1 TEST', 600, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (170, 170, N'SOIL', N'Field Moisture Content', N'SOIL', N'1 TEST', 350, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (171, 171, N'SOIL', N'Liquid limit & Plastic limit', N'SOIL', N'1 TEST', 1000, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (172, 172, N'SOIL', N'Compaction Test (Proctor Density)', N'SOIL', N'1 TEST', 1650, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (173, 173, N'SOIL', N'CBR Test (Lab) With compaction test', N'SOIL', N'1 TEST', 6050, 1000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (174, 174, N'SOIL', N'CBR Test [Field Determination Test) Excluding Transportations per IS 2720 Part XXX]', N'SOIL', N'1 TEST', 2300, 1000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (175, 175, N'SOIL', N'Dead Journey charges, Inspection Veh.', N'SOIL', N'1 TEST', 15, 1, N'Km.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (176, 176, N'SOIL', N'Dead Journey charges, Truck/Tipper', N'SOIL', N'1 TEST', 15, 1, N'Km.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (177, 177, N'SOIL', N'Field Density by sand replacement method', N'SOIL', N'1 TEST', 1000, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (178, 178, N'SOIL', N'Sulphate & Chloride Contents.', N'SOIL', N'1 TEST', 700, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (179, 179, N'SOIL', N'Mechanical Analysis.', N'SOIL', N'1 TEST', 1950, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (180, 180, N'SOIL', N'Plate Load Bearing Test. [Excluding Transportation ]', N'SOIL', N'1 TEST', 27500, 5000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (181, 181, N'SOIL', N'Free Swell Test for soil', N'SOIL', N'1 TEST', 800, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (182, 182, N'EARTH', N'Sieve Analysis', N'EARTH', N'1 TEST', 600, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (183, 183, N'EARTH', N'Field Moisture Content', N'EARTH', N'1 TEST', 350, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (184, 184, N'EARTH', N'Liquid limit & Plastic limit', N'EARTH', N'1 TEST', 1000, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (185, 185, N'EARTH', N'Compaction Test (Proctor Density)', N'EARTH', N'1 TEST', 1650, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (186, 186, N'EARTH', N'CBR Test (Lab) With compaction test', N'EARTH', N'1 TEST', 6050, 1000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (187, 187, N'EARTH', N'CBR Test [Field Determination Test) Excluding Transportations per IS 2720 Part XXX]', N'EARTH', N'1 TEST', 2300, 1000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (188, 188, N'EARTH', N'Dead Journey charges, Inspection Veh.', N'EARTH', N'1 TEST', 15, 1, N'Km.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (189, 189, N'EARTH', N'Dead Journey charges, Truck/Tipper', N'EARTH', N'1 TEST', 15, 1, N'Km.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (190, 190, N'EARTH', N'Field Density by sand replacement method', N'EARTH', N'1 TEST', 1000, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (191, 191, N'EARTH', N'Sulphate & Chloride Contents.', N'EARTH', N'1 TEST', 700, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (192, 192, N'EARTH', N'Mechanical Analysis.', N'EARTH', N'1 TEST', 1950, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (193, 193, N'EARTH', N'Plate Load Bearing Test. [Excluding Transportation ]', N'EARTH', N'1 TEST', 27500, 5000, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (194, 194, N'EARTH', N'Free Swell Test for soil', N'EARTH', N'1 TEST', 800, 200, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (195, 195, N'BITUMEN', N'Penetration, Softening Point, Flash & Fire Point, Specific Gravity.', N'BITUMEN', N'1 TEST', 2750, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (196, 196, N'BITUMEN', N'Viscosity', N'BITUMEN', N'1 TEST', 1700, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (197, 197, N'BITUMEN', N'Ducility/ Elastic Recovery', N'BITUMEN', N'1 TEST', 800, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (198, 198, N'BITUMEN', N'Extraction Test (For OGC)', N'BITUMEN', N'1 TEST', 1400, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (199, 199, N'BITUMEN', N'Extration and Sieve Analysis of Bituminous mix (For BM/DBM/AC)  (2 Samples of extraction for one sieve analysis including extraction)', N'BITUMEN', N'1 TEST', 3450, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (200, 200, N'BITUMEN', N'Marshall Stability & Flow measurement. (Set of 3 moulds)', N'BITUMEN', N'1 TEST', 1000, 100, N'MT', N'MAT')
GO
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (201, 201, N'BITUMEN', N'Job Mix Design with all Tests on basic material for DBM/SDBC/AC', N'BITUMEN', N'1 Mix Design', 14300, 50, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (202, 202, N'BITUMEN', N'B.M. Job Mix Design (Preparation of Marshall Mould & Density)', N'BITUMEN', N'1 TEST', 6600, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (203, 203, N'BITUMEN', N'Mastic Hardness No.', N'BITUMEN', N'1 Mix Design', 600, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (204, 204, N'BITUMEN', N'Thin Film oven test & Test on residue of modified bitumen.', N'BITUMEN', N'1 TEST', 2750, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (205, 205, N'BITUMEN', N'Preperation of Marshall Mould', N'BITUMEN', N'1 TEST', 750, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (206, 206, N'BITUMEN', N'Sepration test for modified bitumen', N'BITUMEN', N'1 TEST', 1000, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (207, 207, N'BITUMEN', N'Density of Bituminous Core', N'BITUMEN', N'1 TEST', 550, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (208, 208, N'BITUMEN', N'Taking of core samples in bituminous flexible pavement. (Excluding Dead journey charges)', N'BITUMEN', N'1 TEST', 2500, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (209, 209, N'BITUMEN', N'Dead Journey charges', N'BITUMEN', N'Per Km.', 15, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (210, 210, N'BITUMINOUS EMULSION', N'% Residue Test', N'BITUMEN', N'1 TEST', 550, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (211, 211, N'BITUMINOUS EMULSION', N'Particle charge Test', N'BITUMEN', N'1 TEST', 350, 20, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (212, 212, N'HOLLOW/SOLID BLOCK', N'Density Test, (Set of 3 Blocks) Compressive strength (Set of 8 Blocks) Water Absorption (Set of 3 Blocks)', N'SOLID BLOCK', N'1 TEST', 1750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (213, 213, N'HOLLOW/SOLID BLOCK', N'Density Test, (Set of 3 Blocks) Compressive strength (Set of 8 Blocks) Water Absorption (Set of 3 Blocks)', N'HOLLOW BLOCK', N'1 TEST', 1750, 100, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (214, 214, N'WATER', N'PH Value, Sulphate & Chloride Content', NULL, N'1 TEST', 1000, 0, NULL, NULL)
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (215, 215, N'WOOD', N'Density, Moisture Content', N'TEAK WOOD', N'1 TEST', 950, 0.3, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (216, 216, N'WOOD', N'Density, Moisture Content', N'JUNGLE WOOD', N'1 TEST', 950, 0.3, N'Cu.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (217, 217, N'TIMBER', N'Density, Moisture Content', N'TIMBER', N'1 TEST', 950, 10, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (218, 218, N'TIMBER', N'Density, Moisture Content', N'TIMBER', N'1 TEST', 950, 10, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (219, 219, N'FLUSH DOOR', N'Knife Test, Adhesion Test, End Immersion Test', N'FLUSH DOOR', N'1 TEST', 2400, 10, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (220, 220, N'PLYWOOD', N'Determination of Resistance to dry heat, Determination of Moisture Content, Determination of Density, Thickness of Plywood', N'PLY WOOD', N'1 TEST', 3000, 10, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (221, 221, N'PLYWOOD', N'Test for Glue Adhesion', N'PLY WOOD', N'1 TEST', 450, 10, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (222, 222, N'PARTICLE BOARD', N'Determination of Moisture Content,  Determination of Density', N'PARTICLE BOARD', N'1 TEST', 1400, 10, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (223, 223, N'ALUMINIUM SECTION', N'Thickness,Mass per Running Meter.', N'ALUMINIUM', N'1 TEST', 600, 10, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (224, 224, N'ALUMINIUM SECTION', N'Test on Powder Coating', N'ALUMINIUM', N'1 TEST', 700, 10, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (225, 225, N'POLYMER MATERIAL', N'PH Value,Solid Content', N'POLYMER', N'1 TEST', 750, 10, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (226, 226, N'A.C.PIPES', N'Water Absorption', N'AC PIPES', N'1 TEST', 600, 100, N'Rg.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (227, 227, N'A.C.PIPES', N'Bursting Strength', N'AC PIPES', N'1 TEST', 450, 100, N'Rg.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (228, 228, N'A.C.SHEETS', N'Water Absorption', N'AC SHEETS', N'1 TEST', 600, 100, N'Rg.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (229, 229, N'A.C.SHEETS', N'Load Bearing', N'AC SHEETS', N'1 TEST', 300, 100, N'Rg.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (230, 230, N'G.I.PIPES', N'Weight per running meter, Diameter of pipe & wall thickness of pipe', N'GI PIPES', N'1 TEST', 200, 100, N'Rg.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (231, 231, N'G.I.PIPES', N'Weight of Zinc coating per Sq.M.', N'GI PIPES', N'1 TEST', 250, 100, N'Rg.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (232, 232, N'PVC PIPES (NON PLASTISIZED)', N'Weight per running meter, Diameter of pipe & wall thickness of pipe', N'PVC PIPES', N'1 TEST', 200, 100, N'Rg.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (233, 233, N'ANTICORROSIVE STEEL', N'Resistance to applied Voltage. ( 1 Hr. Test ) (Set of 2 Bars)', N'STRUCTURAL MS', N'1 TEST', 1000, 5, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (234, 234, N'ANTICORROSIVE STEEL', N'Resistance to applied Voltage.( 30 Days Test ) (Set of 2 Bars )', N'STRUCTURAL MS', N'1 TEST', 2750, 5, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (235, 235, N'ANTICORROSIVE STEEL', N'Thickness of Coating. (Set of 2 Bars)', N'STRUCTURAL MS', N'1 TEST', 500, 5, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (236, 236, N'ANTICORROSIVE STEEL', N'Chemical Resistance Test.( Set of 8 Bars )', N'STRUCTURAL MS', N'1 TEST', 2100, 5, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (237, 237, N'ANTICORROSIVE STEEL', N'Hardness of Coating Test', N'STRUCTURAL MS', N'1 TEST', 250, 5, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (238, 238, N'ANTICORROSIVE STEEL', N'Salt Spray Test ( 4 Cycles ) ( Set of 2 Bars )', N'STRUCTURAL MS', N'1 TEST', 1300, 5, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (239, 239, N'STEEL BAR TESTING', N'Upto 16 mm (Set of 3 Bars)', N'STEEL', N'1 TEST', 1100, 5, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (240, 240, N'STEEL BAR TESTING', N'Above 16 mm (Set of 3 Bars) (Tensile strength, %, Elongation, Yield Stress, Weight-Per Meter, Bend / Rebend Test, Proof Stress.)', N'STEEL', N'1 TEST', 1400, 5, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (241, 241, N'STEEL BAR TESTING', N'Nitrol Solution Test. (Set of 3 Bars)', N'STEEL', N'1 TEST', 3400, 5, N'MT', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (242, 242, N'PAINT THERMO-PLASTIC PAINT', N'Glass bead contents & grading analysis', N'THERMO PAINT', N'1 TEST', 3400, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (243, 243, N'PAINT THERMO-PLASTIC PAINT', N'Reflectance & yellowness index.', N'THERMO PAINT', N'1 TEST', 1000, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (244, 244, N'PAINT THERMO-PLASTIC PAINT', N'Flowability.(Percentage residue).', N'THERMO PAINT', N'1 TEST', 1000, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (245, 245, N'PAINT THERMO-PLASTIC PAINT', N'Softening Point. (Ring & ball method).', N'THERMO PAINT', N'1 TEST', 900, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (246, 246, N'PAINT THERMO-PLASTIC PAINT', N'Drying Time.', N'THERMO PAINT', N'1 TEST', 700, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (247, 247, N'COAL TAR EPOXY PAINT', N'Drying Time', N'EPOXY PAINT', N'1 TEST', 700, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (248, 248, N'COAL TAR EPOXY PAINT', N'Dry Film Thickness', N'EPOXY PAINT', N'1 TEST', 650, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (249, 249, N'COAL TAR EPOXY PAINT', N'Flexibility.', N'EPOXY PAINT', N'1 TEST', 250, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (250, 250, N'COAL TAR EPOXY PAINT', N'Gel Time', N'EPOXY PAINT', N'1 TEST', 450, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (251, 251, N'COAL TAR EPOXY PAINT', N'Pot Life.', N'EPOXY PAINT', N'1 TEST', 450, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (252, 252, N'COAL TAR EPOXY PAINT', N'Volume of Solid.', N'EPOXY PAINT', N'1 TEST', 950, 300, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (253, 253, N'ROAD SIGN BOARD', N'Retro Reflective Test', N'RETRO PAINT', N'1 TEST', 3500, 10, N'Sq.M.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (254, 254, N'ROUGHNESS INDEX / ROAD UN-EVENNESS TEST', N'Road Surface Single Lane.(3.70 to 5.50 m)', NULL, N'1 TEST', 650, 0, NULL, N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (255, 255, N'ROUGHNESS INDEX / ROAD UN-EVENNESS TEST', N'Road Surface 1.5 Lane to Two Lane.(5.50 to 7.00 m)', NULL, N'1 TEST', 1300, 0, NULL, N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (256, 256, N'ROUGHNESS INDEX / ROAD UN-EVENNESS TEST', N'Each Additional Lane', NULL, N'1 TEST', 650, 0, NULL, N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (257, 257, N'ROUGHNESS INDEX / ROAD UN-EVENNESS TEST', N'Dead Journey Charges', NULL, N'Per Km.', 15, 1, N'Km.', N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (258, 258, N'OVERLAY DESIGN', N'Benkelman Beam Test (Excluding Dead Journey Charges)', NULL, N'Per Km.', 12450, 0, NULL, N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (259, 259, N'NON -DESTRUCTIVE TEST', N'Rebound Hammer Test.', NULL, N'Per Point', 200, 0, NULL, N'MAT')
INSERT [dbo].[TESTS] ([AutoNo], [SNO], [BTest], [NTest], [Material], [TUnit], [Rate], [Freq], [MUnit], [QBy]) VALUES (260, 260, N'NON -DESTRUCTIVE TEST', N'Ultrasonic Pulse Velocity', NULL, N'Per Point', 300, 0, NULL, N'MAT')
SET IDENTITY_INSERT [dbo].[WorkDataDetails] ON 

INSERT [dbo].[WorkDataDetails] ([Id], [NameOfWork], [SSRRate], [Department], [HeadOfAccounts], [Area], [SubDivsion], [Divison], [Circle], [Region], [Remarks], [CreatedOn], [UpdatedOn]) VALUES (1, N'Demo', N'SSR 17-18', N'Revenue Department', N'Education DepartmentHOA', N'Education DepartmentAREA', N'Education DepartmentSUBDIV', N'Education DepartmentDIV', N'Revenue DepartmentCircle', N'Education DepartmentRegion', N'No Descripation', CAST(N'2020-02-09 15:14:40.713' AS DateTime), CAST(N'2020-02-09 15:14:40.713' AS DateTime))
INSERT [dbo].[WorkDataDetails] ([Id], [NameOfWork], [SSRRate], [Department], [HeadOfAccounts], [Area], [SubDivsion], [Divison], [Circle], [Region], [Remarks], [CreatedOn], [UpdatedOn]) VALUES (2, N'Demo 2', N'SSR 20-21', N'Education Department', N'Education DepartmentHOA', N'Education DepartmentAREA', N'Education DepartmentSUBDIV', N'Education DepartmentDIV', N'Education DepartmentCircle', N'Education DepartmentRegion', N'No Description Test', CAST(N'2020-02-09 15:25:27.217' AS DateTime), CAST(N'2020-02-09 15:25:27.530' AS DateTime))
INSERT [dbo].[WorkDataDetails] ([Id], [NameOfWork], [SSRRate], [Department], [HeadOfAccounts], [Area], [SubDivsion], [Divison], [Circle], [Region], [Remarks], [CreatedOn], [UpdatedOn]) VALUES (3, N'New Iteam qwqw', N'SSR 19-20', N'Education Department', N'Education DepartmentHOA', N'Education DepartmentAREA', N'Revenue DepartmentSUBDIV', N'Revenue DepartmentDIV', N'Education DepartmentCircle', N'Education DepartmentRegion', N'No Remark ', CAST(N'2020-02-16 12:20:20.050' AS DateTime), CAST(N'2020-02-16 12:20:20.277' AS DateTime))
INSERT [dbo].[WorkDataDetails] ([Id], [NameOfWork], [SSRRate], [Department], [HeadOfAccounts], [Area], [SubDivsion], [Divison], [Circle], [Region], [Remarks], [CreatedOn], [UpdatedOn]) VALUES (4, N'New Iteam qwqw 1215454', N'SSR 18-19', N'Education Department', N'Education DepartmentHOA', N'Education DepartmentAREA', N'Education DepartmentSUBDIV', N'Education DepartmentDIV', N'Education DepartmentCircle', N'Education DepartmentRegion', N'No Remark ', CAST(N'2020-02-16 12:23:09.193' AS DateTime), CAST(N'2020-02-16 12:23:09.407' AS DateTime))
INSERT [dbo].[WorkDataDetails] ([Id], [NameOfWork], [SSRRate], [Department], [HeadOfAccounts], [Area], [SubDivsion], [Divison], [Circle], [Region], [Remarks], [CreatedOn], [UpdatedOn]) VALUES (5, N'Name 154', N'SSR 17-18', N'Education Department', N'Education DepartmentHOA', N'Education DepartmentAREA', N'Home DepartmentSUBDIV', N'Education DepartmentDIV', N'Education DepartmentCircle', N'Education DepartmentRegion', N'dfgdsgsdfg ', CAST(N'2020-02-16 12:30:19.417' AS DateTime), CAST(N'2020-02-16 12:30:19.417' AS DateTime))
INSERT [dbo].[WorkDataDetails] ([Id], [NameOfWork], [SSRRate], [Department], [HeadOfAccounts], [Area], [SubDivsion], [Divison], [Circle], [Region], [Remarks], [CreatedOn], [UpdatedOn]) VALUES (6, N'TEst 1', N'SSR 17-18', N'Home Department', N'Education DepartmentHOA', N'Revenue DepartmentAREA', N'Education DepartmentSUBDIV', N'Education DepartmentDIV', N'Education DepartmentCircle', N'Education DepartmentRegion', N'No Remark  ', CAST(N'2020-02-16 12:35:56.027' AS DateTime), CAST(N'2020-02-16 12:35:56.027' AS DateTime))
SET IDENTITY_INSERT [dbo].[WorkDataDetails] OFF
USE [master]
GO
ALTER DATABASE [PWDCRM] SET  READ_WRITE 
GO
