SELECT *
FROM city
LEFT OUTER JOIN address
ON city.city_id = address.city_id
WHERE address.address_id IS NULL;