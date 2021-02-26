/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
select c.customer_id, first_name ,last_name, sum(amount)
from customer as c
inner join payment on  c.customer_id = payment.customer_id
group by c.customer_id, first_name, last_name
order by last_name asc
