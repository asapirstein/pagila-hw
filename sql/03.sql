/*
 * Find all last names of actors whose last names contain the letters LI (case insensitive).
 * Order results alphabetically.
 */
select last_name 
from actor 
where UPPER(last_name) like UPPER('%LI%')
order by last_name asc;	
