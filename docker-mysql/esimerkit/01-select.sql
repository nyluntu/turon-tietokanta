
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - SELECT on yksi monista komennoista.
 * - Kutsutaan hakukomennoksi, koska sillä haetaan tietoja
 *   tauluista.
 * - Kirjoitusasulla ei ole väliä kunhan järjestys on oikea.
 * - Komennot päättyvät puolipisteeseen (;)
 * - Sisältää myös yksi- ja moniriviset kommentit.
 * 
 * Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <haettavat sarakkeet> 
-- FROM <taulun nimi> 
-- JOIN <liitettävä taulu>
-- WHERE <hakuehto>
-- GROUP BY <ryhmittely>
-- HAVING <lisäehdot>
-- ORDER BY <järjestysehdot>

SELECT * FROM film;

SELECT * FROM actor;

SELECT 
	film_id, 
	title, 
	release_year 
FROM 
	film;


