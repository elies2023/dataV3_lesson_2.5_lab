use sakila;
select * from actor;
-- Select all the actors with the first name ‘Scarlett’.

select first_name 
from actor
where first_name= 'SCARLETT';

-- How many films (movies) are available for rent and how many films have been rented
select * from film;
select count(film_id) 
from film;
select count(distinct title)
from film;
select * from payment;
select * from rental;
-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select title,min(rental_duration) AS 'min_duration',max(rental_duration) AS 'max_duration'
from film
group by title;
-- What's the average movie duration expressed in format (hours, minutes)?
SELECT Title, TIME_FORMAT(SEC_TO_TIME(Length*60), '%H:%i') AS Duration
FROM film;

-- How many distinct (different) actors' last names are there?
select count(distinct last_name) from actor;
select * from film;
-- Since how many days has the company been operating (check DATEDIFF() function)?
-- Show rental info with additional columns month and weekday. Get 20 results.
-- Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
--- Get release years.
select release_year from film;
-- Get all films with ARMAGEDDON in the title.
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%';
-- Get all films which title ends with APOLLO.
SELECT *
FROM film
WHERE title LIKE '%APOLLO';
-- Get 10 the longest films.
select title,length as 'longest film'
from film
order by length DESC
limit 10;

-- How many films include Behind the Scenes content?
select count(special_features)
from film
where special_features like '%Behind the Scenes%';