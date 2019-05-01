SELECT fname, lname FROM bsg_people
	INNER JOIN bsg_ship_assignment A
	ON A.pid = bsg_people.id
	INNER JOIN bsg_ship_instance B
	ON A.cid = B.class
	INNER JOIN bsg_ship_class D
	ON D.id = B.class
    WHERE D.name = 'Viper'
GROUP BY fname, lname
;
