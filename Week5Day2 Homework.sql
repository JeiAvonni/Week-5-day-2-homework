--1. How many actors are there with the last name ‘Wahlberg’?
select *
from actor;

select *
from actor
where last_name = 'Wahlberg';


--2. How many payments were made between $3.99 and $5.99?
select *
from payment;

select customer_id, amount
from payment
where amount  between 3.99 and 5.99;


--3. What film does the store have the most of? (search in inventory)
select *
from inventory;

select count(film_id), film_id
from inventory
group by film_id
order by count(film_id) desc;


--4. How many customers have the last name ‘William’?
select *
from actor;

select *
from actor
where last_name = 'William';


--5. What store employee (get the id) sold the most rentals?
select *
from rental;

select count(inventory_id), inventory_id 
from inventory
group by inventory_id 
order by count(inventory_id), inventory_id desc;


--6. How many different district names are there?
select *
from address;

select count(distinct district)
from address;


--7. What film has the most actors in it? (use film_actor table and get film_id)
select *
from film_actor;

select count(actor_id), film_id
from film_actor
group by film_id
order by count(actor_id) desc;


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select *
from store;

select last_name, store_id
from customer c 
where last_name like '%es'and store_id = 1;


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select *
from rental, payment p ;

select payment_id 
from payment
where amount between 4.99 and 5.99
order by payment_id between 380 and 430;


--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select *
from film_category;

select rating, count(rating)
from film f 
group by rating
order by count(rating) desc;
