/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
select country, sum(payment.amount) as profit
from rental
inner join payment on rental.customer_id = payment.customer_id
inner join customer on customer.customer_id = rental.customer_id
inner join address on customer.address_id= address.address_id
inner join city on address.city_id = city.city_id 
inner join country on city.country_id = country.country_id
group by country 

