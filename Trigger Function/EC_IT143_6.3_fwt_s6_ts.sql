-- Will it work?

DELETE FROM dbo.t_hello_world
	WHERE test IN('1','2','3');

INSERT INTO dbo.t_hello_world(test)
VALUES ('1'),('2');

SELECT t.*
	FROM dbo.t_hello_world AS t;

UPDATE dbo.t_hello_world SET test = '3'
	WHERE test = '2';

SELECT t.*
	FROM dbo.t_hello_world AS t;

-- WHO DID IT

ALTER TABLE dbo.t_hello_world
ADD last_modified_by VARCHAR(50) DEFAULT SUSER_NAME();