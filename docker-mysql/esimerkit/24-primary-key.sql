
/* Mysql dokumentaatio tietokannan rajoitteista (constraints).
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/constraints.html
 * https://book.sovelluskontti.com/relaatiotietokannat/paeae-ja-viiteavaimet
 *
 * - PRIMARY KEY
 * - On uniikki tunniste
 * - Indeksoitu sarake
 * - Voi koostua yhdestä tai useammasta sarakkeesta
 * - Suosituksena, että olisi luonnollinen
 * - Tietotyypillä ei väliä
 * - AUTO_INCREMENT
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
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

SELECT * FROM staff_responsibility;

insert into staff_responsibility (staff_id, responsibility_id) values (1,3);








