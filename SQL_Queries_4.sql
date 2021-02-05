use sakila;

-- 1. Get film ratings.
select distinct rating
from sakila.film;

-- 2. Get release years.
select release_year
from sakila.film;
select distinct release_year
from sakila.film;

-- 3. Get all films with ARMAGEDDON in the title.
select *  from sakila.film
where title like '%ARMAGEDDON%';

-- 4. Get all films with APOLLO in the title.
select *  from sakila.film
where title like '%APOLLO%';

-- 5. Get all films which title ends with APOLLO.
select * from sakila.film
where title like '%APOLLO';

-- 6. Get all films with word DATE in the title.
-- select * from sakila.film where title like '% DATE';
-- select * from sakila.film where title like 'DATE';
select * from sakila.film where title like '%DATE%'
-- and title not like 'DATE'
;

select * from sakila.film
where title regexp '\sDATE';

-- 7. Get 10 films with the longest title.
select title, length(title) from sakila.film
order by length(title) desc
limit 10;

-- 8. Get 10 the longest films.
select title, length from sakila.film
order by length desc
limit 10;

-- 9. How many films include Behind the Scenes content?
select special_features from sakila.film
where special_features like '%Behind_the_Scenes%'; -- same result without underscore
select count(special_features) from sakila.film
where special_features like '%Behind_the_Scenes%';

-- 10. List films ordered by release year and title in alphabetical order.
select title, release_year from sakila.film
order by release_year, title asc;