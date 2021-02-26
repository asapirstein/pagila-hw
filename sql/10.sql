/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
select title,film.film_id, count(actor_id) as actor_count
from film 
inner join film_actor on film.film_id = film_actor.film_id
group by title,film.film_id
order by actor_count asc, film.film_id asc
