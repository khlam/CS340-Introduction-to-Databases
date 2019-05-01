DROP TABLE IF EXISTS `answer`;
CREATE TABLE answer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(255),
    lname VARCHAR(255),
    ship_instance_id INT(11)
);

INSERT INTO answer(fname, lname, ship_instance_id)
SELECT bsg_people.fname, bsg_people.lname, A.sid FROM bsg_people
	INNER JOIN bsg_ship_assignment A
	ON A.pid = bsg_people.id

	INNER JOIN bsg_ship_instance B
	ON A.cid = B.class

    INNER JOIN bsg_ship_class C
	ON C.id = B.class
    WHERE C.name = 'Viper'

GROUP BY fname, lname, A.sid
;

DELETE FROM answer
WHERE (fname, lname) IN (
    SELECT fname, lname FROM bsg_people
	INNER JOIN bsg_cert_people A
	ON A.pid = bsg_people.id
	LEFT JOIN bsg_cert B
    ON B.id = A.cid
    WHERE B.title = 'Viper'
    GROUP BY fname, lname
);

SELECT fname, lname, ship_instance_id FROM answer;
