CREATE TRIGGER dbo.t_hello_world_Updated
	ON  dbo.t_hello_world
	AFTER UPDATE
AS 

/*****************************************************************************************************************
NAME:    modified updater
PURPOSE: update modified

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
-- HELP FROM https://stackoverflow.com/questions/9522982/t-sql-trigger-update
 
******************************************************************************************************************/


BEGIN
	SET NOCOUNT ON;
	UPDATE dbo.t_hello_world SET last_modified_date = GETDATE()
END
GO