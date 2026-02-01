SELECT category.name, COUNT(*) AS rental_num, SUM(payment.amount) AS amount
FROM film
JOIN film_category
ON film.film_id = film_category.film_id
JOIN category
ON film_category.category_id = category.category_id
JOIN inventory
ON inventory.film_id = film.film_id
JOIN rental
ON inventory.inventory_id = rental.inventory_id
JOIN payment
ON rental.rental_id = payment.rental_id
GROUP BY category.name
ORDER BY category.name;