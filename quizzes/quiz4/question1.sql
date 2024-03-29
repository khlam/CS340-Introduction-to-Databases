DROP TABLE IF EXISTS `answer`;
CREATE TABLE answer (
    name VARCHAR(255) PRIMARY KEY,
    CertCount int(11) NOT NULL DEFAULT 0
);
INSERT INTO answer(name, CertCount)
SELECT name, count(title)
	FROM bsg_planets
	INNER JOIN bsg_people A
	ON A.homeworld = bsg_planets.id
	INNER JOIN bsg_cert_people B
	ON A.id = B.pid
	INNER JOIN bsg_cert D
	ON D.id = B.cid
GROUP BY name
;
SELECT name, CertCount FROM answer;