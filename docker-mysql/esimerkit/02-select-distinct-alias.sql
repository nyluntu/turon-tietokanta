
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - SELECT DISTINCT komennolla voidaan palauttaa yksittäiset arvot.
 * - Alias tarkoittaa väliaikaista nimeä taululle tai sarakkeille.
 * 
 * Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <haettavat sarakkeet> AS <väliaikainen nimi>
-- FROM <taulun nimi>

-- SELECT <haettavat sarakkeet> 
-- FROM <taulun nimi> AS <väliaikainen nimi>

-- select count(*) from customer;

-- select distinct first_name from customer;

select 
	concat(asiakkaat.first_name, ' ', asiakkaat.last_name) as "Kokonimi", 
	asiakkaat.email as "Sähköposti"
from customer as asiakkaat;


