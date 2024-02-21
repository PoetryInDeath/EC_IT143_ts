CREATE PROCEDURE usp_hello_world_load
AS

/*****************************************************************************************************************
NAME:    hello_world
PURPOSE: Tell the world hello
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     02/20/2024   TSTAILEY      1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
Say hello 

******************************************************************************************************************/
	BEGIN

		-- RESETS DATA
		TRUNCATE TABLE hello_world;

		INSERT INTO hello_world
			SELECT v.my_message,
			v.current_date_time
			FROM v_hello_world AS v;

		-- RELOADS DATA
		SELECT *
			FROM hello_world;
	END;
GO



