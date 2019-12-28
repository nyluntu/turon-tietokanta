
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - WHERE ehdolla voidaan muodostaa hakuehtoja, jolla suodatetan
 *   tulosjoukkoa.
 * - Päivämäärämuodot hakuehdoissa:
 * -- DATE - muoto: YYYY-MM-DD
 * -- DATETIME - muoto: YYYY-MM-DD HH:MI:SS
 * -- TIMESTAMP - muoto: YYYY-MM-DD HH:MI:SS
 * -- YEAR - muoto: YYYY or YY
 *
 * - LIMIT operaattorilla voidaan rajata montako tulosta halutaan nähdä.
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <haettavat sarakkeet>
-- FROM <taulun nimi>
-- WHERE <hakuehdot>
-- LIMIT <alkaen, määrä>

SELECT * FROM payment;

select * from payment 
where payment_date > '2005-08-01';

select * from film
where description like '%document%'
limit 40, 20;


