
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - WHERE ehdolla voidaan muodostaa hakuehtoja, jolla suodatetan
 *   tulosjoukkoa.
 * 
 * - GROUP BY -operaattorilla voidaan ryhmitellä hakutuloksia.
 * - Ryhmiteltyjen tietojen kanssa voidaan käyttää kooste-funktioita.
 * -- AVG, MIN, MAX, SUM, COUNT
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <haettavat sarakkeet>
-- FROM <taulun nimi>
-- WHERE <hakuehdot>
-- GROUP BY <järjestysehdot>

SELECT * FROM film;

select 
	rating, 
	count(*) as maara,
	avg(length) as pituus
from film 
group by rating
order by pituus desc;





SELECT 
	customer_id, 
	round(avg(amount), 2) as keskiostos,
	min(amount) as minimiostos,
	max(amount) as suurinostos,
	sum(amount) as ostoksetYhteensa
FROM payment
group by customer_id
order by ostoksetYhteensa desc;

select * from customer where customer_id = 526;

select * from payment where customer_id = 526;








