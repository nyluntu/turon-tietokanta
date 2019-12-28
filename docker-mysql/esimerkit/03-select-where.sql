
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - WHERE ehdolla voidaan muodostaa hakuehtoja, jolla suodatetan
 *   tulosjoukkoa.
 * - Yhtäsuuri ( = )
 * - Suurempi kuin ( > )
 * - Pienempi kuin ( < )
 * - Suurempi tai yhtäsuuri kuin ( >= )
 * - Pienempi tai yhtäsuuri kuin ( <= )
 * - AND/OR useiden ehtojen putkittamiseen.
 * - () -sulkee määrittävät myös ehtojen suoritusjärjestyksen.
 * 
 * Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <haettavat sarakkeet>
-- FROM <taulun nimi>
-- WHERE <hakuehdot>

select DISTINCT rating from film;

select title, description, release_year, rental_duration, rental_rate, length, rating
from film
where rating = 'R' or rating = 'PG-13';


select title, description, release_year, rental_duration, rental_rate, length, rating
from film
where title = 'BEAUTY GREASE';


