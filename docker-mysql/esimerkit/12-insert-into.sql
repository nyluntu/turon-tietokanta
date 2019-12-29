
/* Mysql dokumentaatio INSERT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/insert.html
 * 
 * - INSERT INTO -komentoa käytetään tietoa lisättäessä.
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- Ensimmäinen tapa.
-- INSERT INTO <taulun nimi> (<sarake1>, <sarake2>, <sarake3>, ...)
-- VALUES (<arvo1>, <arvo2>, <arvo3>, ...);

-- Toinen tapa.
-- INSERT INTO <taulun nimi> 
-- VALUES (<arvo1>, <arvo2>, <arvo3>, ...);

-- SELECT * FROM film;

-- select * from customer order by customer_id desc;

-- INSERT INTO customer (store_id, last_name, first_name, email, active, address_id, create_date)
-- VALUES (2, "Meikäläinen", "Matti", "mattimeikalainen@mailinator.com", 1, 12, NOW());

-- INSERT INTO customer (store_id, last_name, first_name, email, active, address_id, create_date)
-- VALUES (2, "", "Maija", "maijameikalainen@mailinator.com", 1, 12, NOW());

