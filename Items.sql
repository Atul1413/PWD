USE [PWDCRM]
GO

/****** Object:  Table [dbo].[ITEMS]    Script Date: 2/16/2020 7:00:48 PM ******/
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


