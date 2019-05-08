SELECT A.title AS film_title FROM 

(SELECT film.title
    FROM film
    JOIN film_actor A
    ON film.film_id = A.film_id
    JOIN actor B
    ON A.actor_id = B.actor_id
WHERE first_name = "KIRSTEN" AND last_name = "PALTROW") AS A

INNER JOIN

(SELECT film.title
    FROM film
    JOIN film_actor A
    ON film.film_id = A.film_id
    JOIN actor B
    ON A.actor_id = B.actor_id
WHERE first_name = "WARREN" AND last_name = "NOLTE") AS B

ON A.title = B.title
ORDER BY A.title DESC;
