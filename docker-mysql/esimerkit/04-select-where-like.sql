
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - WHERE ehdolla voidaan muodostaa hakuehtoja, jolla suodatetan
 *   tulosjoukkoa.
 * 
 * - LIKE operaattorilla voidaan hakea tietoja tekstistä.
 * - Tukee erilaisia "wildcardeja" eli tapoja hakea osia tekstistä.
 * -- ( % ) sisältää minkä tahansa merkin.
 * -- ( _ ) sisältää tarkalleen yhden merkin.
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <haettavat sarakkeet>
-- FROM <taulun nimi>
-- WHERE <hakuehdot>

SELECT film_id, title, description 
FROM film
WHERE description LIKE '%park';


SELECT film_id, title, description 
FROM film
WHERE title NOT LIKE '%cat%';


