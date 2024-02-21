DROP VIEW IF EXISTS dbo.v_hello_world;
GO

CREATE VIEW dbo.v_hello_world
AS

/*****************************************************************************************************************
NAME:    hello_world
PURPOSE: To greet the world

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/20/2024   TSTAILEY      1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I say hello world at runtime
 
******************************************************************************************************************/

-- Q: What is the current date and time?
-- A: Let's ask the server.

	SELECT 'Hello World' AS my_message,
		GETDATE() AS current_date_time;