use sakila;

select * from actor;
select * from address;
select * from category;
select * from city;
select * from country;
select * from customer;
select * from film;
select * from film_actor;
select * from film_text;
select * from inventory;
select * from payment;
select * from rental;
select * from staff;
select * from store;

-- 1 básico

select first_name, last_name from customer;
select * from film where length > 120;
select * from film where release_year = 2006;
select first_name, last_name from customer where active = 1;

-- 2 join

select
  aluguel.rental_id as aluguel,
  cliente.first_id as cliente
FROM customer cliente
INNER JOIN rental aluguel
 on cliente.customer_id = aluguel.rental_id;
 
select
  pagamento.amount AS pagamento,
  cliente.first_name AS cliente
FROM customer cliente
INNER JOIN payment pagamento
  ON cliente.customer_id = pagamento.customer_id;
 
select
  pagamento.amount AS pagamento,
  cliente.first_name AS cliente
FROM customer cliente
INNER JOIN payment pagamento
  ON cliente.customer_id = pagamento.customer_id;
 
 select
  f.title AS filme,
  c.name AS categoria
FROM film f
INNER JOIN film_category fc
  ON f.film_id = fc.film_id
INNER JOIN category c
  ON fc.category_id = c.category_id;
 
 -- 3 join
 
select COUNT(*) as total_clientes
from customer;

select COUNT(*) as valor_total
from payment;

select AVG(amount) as media_dos_pagamentos 
from payment;

select
  c.name AS categoria,
  COUNT(fc.film_id) AS total_filmes
from category c
inner join film_category fc
  ON c.category_id = fc.category_id
GROUP BY c.name;

select
  c.first_name AS nome,
  c.last_name AS sobrenome,
  COUNT(r.rental_id) AS total_alugueis
FROM customer c
INNER JOIN rental r
  ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_alugueis DESC;


-- 4 avançado

select
  c.first_name AS nome,
  c.last_name AS sobrenome,
  SUM(p.amount) AS total_gasto
FROM customer c
INNER JOIN payment p
  ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

select
  c.first_name AS nome,
  c.last_name AS sobrenome,
  SUM(p.amount) AS total_gasto
FROM customer c
INNER JOIN payment p
  ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_gasto DESC
LIMIT 5;

select
  f.title AS filme,
  COUNT(r.rental_id) AS total_alugueis
FROM film f
INNER JOIN inventory i
  ON f.film_id = i.film_id
INNER JOIN rental r
  ON i.inventory_id = r.inventory_id
GROUP BY f.title
ORDER BY total_alugueis DESC;

select
  c.name AS categoria,
  COUNT(DISTINCT fc.film_id) AS total_filmes,
  COUNT(r.rental_id) AS total_alugueis
FROM category c
INNER JOIN film_category fc
  ON c.category_id = fc.category_id
INNER JOIN film f
  ON fc.film_id = f.film_id
INNER JOIN inventory i
  ON f.film_id = i.film_id
INNER JOIN rental r
  ON i.inventory_id = r.inventory_id
GROUP BY c.name;

select
  c.first_name AS nome,
  c.last_name AS sobrenome,
  f.title AS filme,
  cat.name AS categoria,
  p.amount AS valor_pago
FROM customer c
INNER JOIN payment p
  ON c.customer_id = p.customer_id
INNER JOIN rental r
  ON p.rental_id = r.rental_id
INNER JOIN inventory i
  ON r.inventory_id = i.inventory_id
INNER JOIN film f
  ON i.film_id = f.film_id
INNER JOIN film_category fc
  ON f.film_id = fc.film_id
INNER JOIN category cat
  ON fc.category_id = cat.category_id;





