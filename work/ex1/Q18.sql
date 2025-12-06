SELECT country.country, SUM(payment.amount) AS amount, COUNT(DISTINCT customer.customer_id) AS customer_num
FROM country
JOIN city
ON city.country_id = country.country_id
JOIN address
ON address.city_id = city.city_id
JOIN customer
ON customer.address_id = address.address_id
JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY country.country
ORDER BY country.country;
