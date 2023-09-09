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
WHERE actor.actor_id = 29;
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
WITH RentalPayments AS (
    SELECT
        r.rental_id,
        r.rental_date,
        r.customer_id,
        r.return_date,
        p.amount AS payment_amount
    FROM
        rental r
    LEFT JOIN
        payment p ON r.rental_id = p.rental_id
)
SELECT
    rental_id,
    rental_date,
    customer_id,
    return_date,
    SUM(payment_amount) AS total_payment_amount
FROM
    RentalPayments
GROUP BY
    rental_id, rental_date, customer_id, return_date;

select * from payment