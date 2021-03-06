USE [icbmdb]
GO

/****** Object:  Table [dbo].[Timesheets]    Script Date: 03/21/2012 05:41:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Timesheets]') AND type in (N'U'))
DROP TABLE [dbo].[Timesheets]
GO

USE [icbmdb]
GO

/****** Object:  Table [dbo].[Timesheets]    Script Date: 03/21/2012 05:41:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Timesheets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[worker] [varchar](50) NULL,
	[periodStart] [datetime] NOT NULL,
	[periodEnd] [datetime] NOT NULL,
	[approved] [bit] NULL,
	[locked] [bit] NULL,
	[submitted] [bit] NULL,
 CONSTRAINT [PK_Timesheets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
