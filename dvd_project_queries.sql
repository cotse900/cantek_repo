-- 1.
SELECT actor.actor_id, CONCAT(actor.first_name, ' ', actor.last_name) AS actor_full_name
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE film.film_id = 133;

-- 2.
SELECT film.film_id, film.title, language.name AS film_language, film.release_year
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN language ON film.language_id = language.language_id
WHERE actor.actor_id = 29
ORDER BY film.title ASC;

-- 3a.
SELECT COUNT(*) AS number_of_customers, c.country, cust.store_id
FROM country c
JOIN city ON c.country_id = city.country_id
JOIN address a ON city.city_id = a.city_id
JOIN customer cust ON a.address_id = cust.address_id
WHERE cust.store_id = 1
GROUP BY c.country, cust.store_id
ORDER BY number_of_customers DESC;
--3b.
SELECT COUNT(*) AS number_of_customers, c.country, cust.store_id
FROM country c
JOIN city ON c.country_id = city.country_id
JOIN address a ON city.city_id = a.city_id
JOIN customer cust ON a.address_id = cust.address_id
WHERE cust.store_id = 2
GROUP BY c.country, cust.store_id
ORDER BY number_of_customers DESC;

--4
WITH total_payment_by_customer AS (
SELECT sum(amount) as payments, customer_id 
from payment
group by customer_id
)
SELECT cp.customer_id, payments, c.last_name, email, activebool, last_update
FROM total_payment_by_customer cp
JOIN customer c ON cp.customer_id = c.customer_id
order by payments desc;

--5
select count(*)
from film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category cat ON fc.category_id = cat.category_id
WHERE cat.name = 'Horror'

SELECT f.film_id, f.title, f.special_features
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category cat ON fc.category_id = cat.category_id
WHERE cat.name = 'Horror'
AND f.film_id NOT IN (
SELECT film_id
FROM film
WHERE 'Deleted Scenes' = ANY(special_features)
);

