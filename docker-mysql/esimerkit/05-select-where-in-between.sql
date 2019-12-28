
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - WHERE ehdolla voidaan muodostaa hakuehtoja, jolla suodatetan
 *   tulosjoukkoa.
 * - IN operaattorilla voidaan tarkistaa, sisältääkö sarake haluttuja arvoja.
 * - BETWEEN operaattorilla voidaan määrittää haluttu arvoväli.
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <haettavat sarakkeet>
-- FROM <taulun nimi>
-- WHERE <hakuehdot>

select title, rental_duration, rental_rate, length, rating 
from film
where rating not in ('G', 'PG');

-- where rating = 'G' or rating = 'PG';

select title, rental_duration, rental_rate, length, rating 
from 
	film
where 
	length NOT BETWEEN 60 AND 120 
	AND title like '%US'
	AND rating in ('NC-17');


-- where length >= 60 and length <= 120;


