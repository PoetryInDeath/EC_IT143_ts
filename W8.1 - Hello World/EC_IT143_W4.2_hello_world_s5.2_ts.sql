USE [TestDB]
GO

/****** Object:  Table [dbo].[hello_world]    Script Date: 2/20/2024 10:30:20 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hello_world]') AND type in (N'U'))
DROP TABLE [dbo].[hello_world]
GO

/****** Object:  Table [dbo].[hello_world]    Script Date: 2/20/2024 10:30:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hello_world](
	[my_message] [varchar](11) NOT NULL,
	[current_date_time] [datetime] PRIMARY KEY
) ON [PRIMARY]
GO


