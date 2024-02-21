DROP TABLE hello_world;

SELECT v.my_message,v.current_date_time
	INTO hello_world
	FROM v_hello_world AS v;