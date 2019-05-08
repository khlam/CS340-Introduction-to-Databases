SELECT film_id FROM film WHERE length = (SELECT MAX(length) FROM film)
UNION
SELECT film_id FROM film WHERE rental_duration = (SELECT MIN(rental_duration) FROM film)
ORDER BY film_id;