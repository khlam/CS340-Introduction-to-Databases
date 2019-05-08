DROP TABLE IF EXISTS `answer`;
CREATE TABLE answer (
    `actor_id` smallint(5),
    `category_id` tinyint(3) NOT NULL DEFAULT 0,
    `first_name` varchar(45),
    `last_name` varchar(45),
    `total_combined_film_length` smallint(5) NOT NULL DEFAULT 0
);

INSERT INTO answer(actor_id, category_id, first_name, last_name, total_combined_film_length)
SELECT C.actor_id, A.category_id, first_name, last_name, SUM(length)
    FROM film
    JOIN film_category A
    ON film.film_id = A.film_id
    JOIN film_actor B
    ON film.film_id = B.film_id
    JOIN actor C
    ON B.actor_id = C.actor_id
WHERE category_id = (SELECT category_id FROM category WHERE name="Sci-Fi")
GROUP BY C.actor_id, category_id
;

INSERT INTO answer(actor_id, first_name, last_name) SELECT actor_id, first_name, last_name FROM actor WHERE actor_id NOT IN (SELECT actor_id FROM answer);

SELECT actor_id, first_name, last_name, total_combined_film_length FROM answer ORDER BY actor_id DESC;
