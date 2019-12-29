
/* Mysql dokumentaatio UPDATE -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/update.html
 * 
 * - UPDATE -komentoa käytetään tietoa muutettaessa.
 * - !!! Käytä aina WHERE ehdon kanssa !!!
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- UPDATE <taulun nimi>
-- SET <sarake1> = <arvo1>, <sarake2> = <arvo2>, ...
-- WHERE <hakuehto>;

select * from customer order by customer_id desc;
-- select * from customer WHERE address_id = 5;

-- UPDATE customer SET last_name = "Meikäläinen", first_name = "Meiju" WHERE customer_id = 603;

-- UPDATE customer SET email = "email@example.com" WHERE address_id = 5;

-- UPDATE customer SET email = "email@example.com";
