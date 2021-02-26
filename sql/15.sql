/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
select category.name, count(film_category.film_id) as sum
from film 
inner join language on film.language_id = language.language_id 
	and lower(language.name) = 'english'
inner join film_category  on film_category.film_id = film.film_id
inner join category on film_category.category_id = category.category_id
group by category.name
