
/* Mysql dokumentaatio DELETE -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/delete.html
 * 
 * - DELETE -komentoa käytetään tietoja poistettaessa.
 * - !!! Käytä aina WHERE ehdon kanssa !!!
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- DELETE FROM <taulun nimi>
-- WHERE <rajausehto>;

-- select * from customer order by customer_id desc;

-- DELETE FROM customer WHERE customer_id = 590;

-- select * from payment where customer_id = 590;

-- DELETE FROM payment WHERE customer_id = 590;


-- select * from rental where customer_id = 590;

-- DELETE FROM rental WHERE customer_id = 590;