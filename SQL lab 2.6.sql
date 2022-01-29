USE Sakila;

SELECT first_name, last_name FROM Sakila.actor
GROUP BY last_name
HAVING COUNT(last_name) = 1;

SELECT first_name, last_name FROM Sakila.actor
GROUP BY last_name
HAVING COUNT(last_name) > 1;

SELECT staff_id, COUNT(rental_id) as processed from sakila.rental
group by staff_id;

SELECT release_year, COUNT(film_id) as released_movies from sakila.film
group by release_year;

SELECT rating, ROUND(AVG(length),2) as mean_length from sakila.film
group by rating;

SELECT rating, ROUND(AVG(length),2) as mean_length from sakila.film
group by rating
HAVING mean_length >= 120;

SELECT title,length, RANK() OVER (
ORDER BY length ASC
)length_rank FROM sakila.film
WHERE (
length is not null 
and 
length != 0
)
Group by length;
