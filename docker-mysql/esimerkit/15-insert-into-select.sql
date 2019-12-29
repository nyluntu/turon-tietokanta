
/* Mysql dokumentaatio INSERT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/insert.html
 * 
 * - INSERT INTO SELECT -komennolla voidaan kopioida tietoja
 *   taulusta toiseen käyttämällä hakua.
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- INSERT INTO <taulu1>
-- SELECT * FROM <taulu2>
-- WHERE <hakuehto>;

-- INSERT INTO <taulu1> (<sarake1>, <sarake2>, <sarake3>, ...)
-- SELECT <sarake1>, <sarake2>, <sarake3>, ...
-- FROM <taulu2>
-- WHERE <hakuehto>;

-- INSERT INTO customer (store_id, last_name, first_name, email, active, address_id, create_date)
-- VALUES 
-- 	(2, "Vallaton", "Ville", "villevallaton@mailinator.com", 1, 12, NOW()),
-- 	(2, "Meikäläinen", "Maija", "maijameikalainen@mailinator.com", 1, 12, NOW()),
-- 	(2, "Taapertaja", "Teemu", "teemutaapertaja@mailinator.com", 1, 12, NOW());

select * from customer order by customer_id desc;

-- select * from actor;

-- INSERT INTO customer (store_id, last_name, first_name, email, active, address_id, create_date)
-- SELECT 2, actor.last_name, actor.first_name, "", 1, 10, NOW() 
-- FROM actor;
