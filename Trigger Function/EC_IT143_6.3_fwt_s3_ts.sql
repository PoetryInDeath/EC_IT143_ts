-- Q: Last modified?
-- A: we can add a column for date

--ALTER TABLE dbo.t_hello_world
--ADD last_modified_date DATETIME DEFAULT GETDATE();

-- Q: But what if column already exists?
-- A: trigger?
-- HELP FROM https://stackoverflow.com/questions/9522982/t-sql-trigger-update

CREATE TRIGGER dbo.t_hello_world_Updated
	ON  dbo.t_hello_world
	AFTER UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	UPDATE dbo.t_hello_world SET last_modified_date = GETDATE()
END
GO