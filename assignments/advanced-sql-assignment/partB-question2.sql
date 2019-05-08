DROP TABLE IF EXISTS `answer`;
CREATE TABLE answer (
    category_name VARCHAR(255) PRIMARY KEY,
    number_of_films int(11) NOT NULL DEFAULT 0
);

INSERT INTO answer(category_name, number_of_films)
    SELECT category.name, appear FROM category
    JOIN (  SELECT category_id, COUNT(category_id) AS appear FROM film_category
                JOIN (SELECT film_id from film_actor
                    WHERE actor_id = (SELECT actor_id FROM actor 
                        WHERE first_name = "ED" 
                        AND last_name = "CHASE")) ffm
                ON film_category.film_id = ffm.film_id
            GROUP BY category_id ) A
    ON A.category_id = category.category_id
;
INSERT INTO answer(category_name) SELECT name FROM category WHERE name NOT IN (SELECT category_name FROM answer);
SELECT category_name, number_of_films FROM answer ORDER BY category_name;
-- This is absolutely disgusting.