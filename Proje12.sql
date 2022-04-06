1)  SELECT COUNT(*) FROM film
Where  length > 
(SELECT AVG(length) From film);

2)  SELECT COUNT(*) FROM film
Where  rental_rate  = 
(SELECT MAX(rental_rate) From film);

3)  (SELECT title FROM film
Where  rental_rate  = 
(SELECT MIN(rental_rate) From film))
UNION
(SELECT title FROM film
Where  replacement_cost   = 
(SELECT MIN(replacement_cost) From film));

4)  SELECT customer.first_name, customer.last_name, payment.customer_id, COUNT(payment.customer_id) FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY customer.first_name, customer.last_name, payment.customer_id
ORDER BY COUNT(payment.customer_id) DESC;
