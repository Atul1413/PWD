USE [PWDCRM]
GO
/****** Object:  Table [dbo].[AREA]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[AREAS]    Script Date: 2020-02-23 11.33.23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AREAS](
	[SNO] [float] NULL,
	[AName] [nvarchar](255) NULL,
	[Per] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BRLIFT]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[CONS]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[CONS_RATE]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[DMAT]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[ItemDetails]    Script Date: 2020-02-23 11.33.23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WorkDataID] [int] NOT NULL,
	[ItemNo] [nvarchar](max) NULL,
	[Number] [nvarchar](max) NULL,
	[Length] [nvarchar](max) NULL,
	[BreadthWidth] [nvarchar](max) NULL,
	[DepthHeight] [nvarchar](max) NULL,
	[GeometricalFormulas] [nvarchar](max) NULL,
	[Qty] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdateOn] [datetime] NULL,
 CONSTRAINT [PK_dbo.ItemDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ITEMS]    Script Date: 2020-02-23 11.33.23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ITEMS](
	[ANO] [float] NULL,
	[SrNO] [float] NULL,
	[Chap] [nvarchar](255) NULL,
	[INO] [nvarchar](255) NULL,
	[PgNo] [nvarchar](255) NULL,
	[CAT] [nvarchar](255) NULL,
	[Ref] [nvarchar](255) NULL,
	[DESCRIP] [nvarchar](255) NULL,
	[Spec] [nvarchar](255) NULL,
	[UnitF] [nvarchar](255) NULL,
	[UnitS] [nvarchar](255) NULL,
	[CompRate] [float] NULL,
	[LRate] [float] NULL,
	[MAT1] [nvarchar](255) NULL,
	[MAT2] [nvarchar](255) NULL,
	[MAT3] [nvarchar](255) NULL,
	[MAT4] [nvarchar](255) NULL,
	[MAT5] [nvarchar](255) NULL,
	[MAT6] [nvarchar](255) NULL,
	[MAT7] [nvarchar](255) NULL,
	[MAT8] [nvarchar](255) NULL,
	[RATE1] [float] NULL,
	[RATE2] [float] NULL,
	[RATE3] [float] NULL,
	[RATE4] [float] NULL,
	[RATE5] [float] NULL,
	[RATE6] [float] NULL,
	[RATE7] [float] NULL,
	[RATE8] [float] NULL,
	[XCelX] [float] NULL,
	[XcelY] [float] NULL,
	[XLPath] [nvarchar](255) NULL,
	[RATYPE] [nvarchar](255) NULL,
	[SCADA] [bit] NOT NULL,
	[SCADAPer] [float] NULL,
	[Plastic] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LEAD_CHART]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[Lead_Statement]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[MATERIAL]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[MEASUREMENTS]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[METAL]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[MFLOOR]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[Office]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[Rate_Analysis]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[SETTINGS]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[SubWorkDataDetails]    Script Date: 2020-02-23 11.33.23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubWorkDataDetails](
	[ID] [int] NOT NULL,
	[SubWorkDataName] [nvarchar](max) NULL,
	[SubWorkDescripation] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_SubWorkDataDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TESTS]    Script Date: 2020-02-23 11.33.23 AM ******/
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
/****** Object:  Table [dbo].[WorkDataDetails]    Script Date: 2020-02-23 11.33.23 AM ******/
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
	[SubWorkData] [nvarchar](max) NULL,
	[Royalty] [nvarchar](max) NULL,
	[SANDPercentage] [nvarchar](max) NULL,
	[DeductioninRA1] [nvarchar](max) NULL,
	[DeductioninRA2] [nvarchar](max) NULL,
	[DeductioninRA3] [nvarchar](max) NULL,
	[CostDiff] [nvarchar](max) NULL,
	[FundHead] [nvarchar](max) NULL,
	[NameOfAgency] [nvarchar](max) NULL,
	[AgreementNo] [nvarchar](max) NULL,
	[WorkOrderNo] [nvarchar](max) NULL,
	[Percentage] [nvarchar](max) NULL,
	[RoyaltyPercentage] [nvarchar](max) NULL,
	[TypeSAND] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.WorkDataDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
