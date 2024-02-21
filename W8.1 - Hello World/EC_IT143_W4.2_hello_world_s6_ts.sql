

TRUNCATE TABLE hello_world;

INSERT INTO hello_world
	SELECT v.my_message,
	v.current_date_time
	FROM v_hello_world AS v;


SELECT *
	FROM hello_world;