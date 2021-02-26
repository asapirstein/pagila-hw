/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */
select first_name,last_name,address as street_address
from staff
inner join address on address.address_id = staff.address_id 
