
/* Mysql dokumentaatio tietokannan rajoitteista (constraints).
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/constraints.html
 * https://book.sovelluskontti.com/relaatiotietokannat/paeae-ja-viiteavaimet
 *
 * - FOREIGN KEY
 * - ON DELETE [käyttäytymissääntö]
 * - ON UPDATE [käyttäytymissääntö]
 *
 * - Käyttäytymissäännöt
 * - CASCADE
 * - SET NULL
 * - RESTRICT
 * - NO ACTION (sama kuin restrict)
 * 
 * Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- Lisätään uusi taulu  staff_responsibility
CREATE TABLE staff_responsibility (
	staff_id TINYINT UNSIGNED NOT NULL,
	responsibility_id SMALLINT UNSIGNED NOT NULL,
	last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (staff_id, responsibility_id),
	CONSTRAINT FK_sr_staff_id FOREIGN KEY (staff_id) REFERENCES staff (staff_id) ON UPDATE CASCADE,
	CONSTRAINT FK_sr_responsibility_id FOREIGN KEY (responsibility_id) REFERENCES responsibility (responsibility_id) ON UPDATE CASCADE
);

-- select * from category;

-- delete from category where category_id = 24;

-- update category set category_id = 24 where category_id = 10;

-- select * from film_category where category_id = 24;

-- delete from film_category WHERE category_id = 24;










