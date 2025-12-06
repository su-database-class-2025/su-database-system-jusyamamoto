SELECT country_id, COUNT(*)
FROM city
GROUP BY country_id
HAVING COUNT(*) >= 20
ORDER BY COUNT(city_id) DESC;