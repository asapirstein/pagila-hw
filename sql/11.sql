/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
select film.film_id, title, count(inventory_id)
from film
inner join inventory on inventory.film_id = film.film_id 
	and upper(film.title) like 'H%'
group by film.film_id, title
order by title desc 
