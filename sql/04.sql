/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */
select title
from rental 
inner join inventory on inventory.inventory_id = rental.inventory_id 
inner join film on inventory.film_id = film.film_id 
inner join customer on customer.customer_id = rental.customer_id
where customer.customer_id = 1 
group by title 
having count(*) > 1

