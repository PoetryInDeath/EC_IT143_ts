USE [TestDB]
GO

/****** Object:  Table [dbo].[drug_respondents]    Script Date: 2/20/2024 11:20:48 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drug_respondents]') AND type in (N'U'))
DROP TABLE [dbo].[drug_respondents]
GO

/****** Object:  Table [dbo].[drug_respondents]    Script Date: 2/20/2024 11:20:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[drug_respondents](
	[total_n] [int] NOT NULL
) ON [PRIMARY]
GO


