/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
select first_name, last_name, sum(amount)
from staff 
inner join payment on staff.staff_id = payment.staff_id 
	and payment.payment_date between '2019-12-31' and '2020-02-01'
group by first_name,last_name
