USE [TestDB]
GO

/****** Object:  Table [dbo].[airline_fatalities]    Script Date: 2/20/2024 11:22:31 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[airline_fatalities]') AND type in (N'U'))
DROP TABLE [dbo].[airline_fatalities]
GO

/****** Object:  Table [dbo].[airline_fatalities]    Script Date: 2/20/2024 11:22:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[airline_fatalities](
	[airline] [nvarchar](50) PRIMARY KEY,
	[total_fatalities] [int] NULL
) ON [PRIMARY]
GO

