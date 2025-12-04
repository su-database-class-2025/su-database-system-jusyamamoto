SELECT country_id, COUNT(*)
FROM city
GROUP BY country_id
ORDER BY COUNT(city_id) DESC;