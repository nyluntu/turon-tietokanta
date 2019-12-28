
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - WHERE ehdolla voidaan muodostaa hakuehtoja, jolla suodatetan
 *   tulosjoukkoa.
 * 
 * - REGEXP operaattori muistuttaa LIKE operaattoria mutta mahdollistaa
 *   hakemisen "regex" säännöillä.
 * -- https://en.wikipedia.org/wiki/Regular_expression
 * -- https://regex101.com/
 *
 * - NULL arvo on oma tapauksensa sarakkeiden arvona.
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <haettavat sarakkeet>
-- FROM <taulun nimi>
-- WHERE <hakuehdot>

-- Hae kaikki asiakkaat, joiden sukunimi alkaa 'jo' 
SELECT * FROM customer WHERE last_name REGEXP '^jo';

-- Hae kaikki asiakkaat, joiden sukunimi päättyy 'ut' −
SELECT * FROM customer WHERE last_name REGEXP 'ut$';

-- Hae kaikki asiakkaat, joiden sukunimi sisältää 'tin' −
SELECT * FROM customer WHERE last_name REGEXP 'tin';

-- Hae kaikki asiakkaat, joiden sukunimi alkaa vokaalilla ja päättyy 'er'
SELECT * FROM customer WHERE last_name REGEXP '^[aeiou].*er$';

-- Lisätään asiakkaihin kaksi uutta riviä.
-- Ensimmäisessä email on NULL, jälkimmäisessä tyhjä merkkijono.
INSERT INTO customer (store_id,first_name,last_name,address_id,active,create_date,last_update)
VALUES (1,'BOB','MILLER',5,1,'2006-02-14 22:04:36.000','2006-02-15 04:57:20.000');

INSERT INTO customer (store_id,first_name,last_name,email,address_id,active,create_date,last_update)
VALUES (1,'MARY','SMITH','',5,1,'2006-02-14 22:04:36.000','2006-02-15 04:57:20.000');


select * from customer order by customer_id desc limit 10;

select * from customer where email = '';
select * from customer where email is not null order by customer_id desc;


select * from customer 
where 
	email is null 
	or email = '' 
order by customer_id desc;



