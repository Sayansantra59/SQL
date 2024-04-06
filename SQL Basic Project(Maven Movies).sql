# pull all the films with 'Comedy' category

select title,name from film join film_category using(film_id)
join category using(category_id) where name like 'Comedy';



# List all Oscar awards(Actors who received the Oscar award) with their full names and the length of their names

select first_name,last_name,awards,length(first_name)
 from actor_award where awards='oscar';



#Find the actors who have acted in the film ‘Frost Head.’

select first_name,last_name,title from actor
 join film_actor using(actor_id)
join film using(film_id) where title LIKE 'FROST HEAD';



#Pull all the films which were rented and return them in the month of May

select title,return_date from rental join inventory	using (inventory_id) join film using (film_id)
where month(return_date)=05;



# pull all the films acted by the actor 'Will Wilson'

select title,first_name,last_name from film join film_actor using (film_id)
join actor using (actor_id) where first_name='Will' and last_name='Wilson';



# Write a sql query to count the no. of characters except for the space for each actor.
#Return first 10 actors name lengths along with their names

select count(first_name) from actor;
select first_name,length(first_name) from actor limit 10;


