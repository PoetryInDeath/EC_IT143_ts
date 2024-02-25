-- Q: Last modified?
-- A: we can add a column for date

ALTER TABLE dbo.t_hello_word
ADD last_modified_date DATETIME DEFAULT GETDATE();

-- Q: But what if column already exists?
-- A: trigger?