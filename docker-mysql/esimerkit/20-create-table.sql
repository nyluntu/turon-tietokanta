
/* Mysql dokumentaatio tietokannan taulun luomisesta.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/create-table.html
 * 
 * CREATE TABLE [IF NOT EXISTS] <taulun_nimi> (
 *   <sarake1> <tietotyyppi>,
 *   <sarake2> tietotyyppi,
 *   <sarake3> tietotyyppi
 * ); 
 * 
 * SHOW CREATE TABLE <taulun_nimi>;
 * DROP TABLE <taulun_nimi>
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- Luodaan tietokantaan taulu työntekijöiden vastuualueille.
/*
CREATE TABLE IF NOT EXISTS responsibility (
	responsibility_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(32) NOT NULL,
	description TEXT, 
	salary_bonus FLOAT DEFAULT 1.0 COMMENT 'Kentässä voidaan määrittää palkan päälle tuleva bonus',
	experience_needed INT UNSIGNED DEFAULT 0 COMMENT 'Kuinka monta vuotta vaaditaan kyseiselle tehtävälle',
	training_is_organized BOOL NOT NULL DEFAULT FALSE COMMENT 'Onko tehtävään järjestetty koulutusta.'
) ENGINE='InnoDb' COMMENT = 'Sisältää henkilökunnan vastuutehtäviä.';
*/

/*
INSERT INTO responsibility (title, description, salary_bonus, training_is_organized)
VALUES ('Myymälävastaava', 'Kuvaus työtehtävistä...', 1.15, TRUE);

INSERT INTO responsibility (title, description, salary_bonus, training_is_organized)
VALUES ('Kirjanpito', 'Kuvaus työtehtävistä...', 1.22, TRUE);

INSERT INTO responsibility (title, description, salary_bonus, training_is_organized)
VALUES ('Leffa arvostelut', 'Kuvaus työtehtävistä...', 1.0, TRUE);

INSERT INTO responsibility (title, description, salary_bonus, training_is_organized)
VALUES ('Inventointi', 'Kuvaus työtehtävistä...', 1.18, TRUE);

INSERT INTO responsibility (title, description, salary_bonus, training_is_organized)
VALUES ('Verkkosivujen päivitys', 'Kuvaus työtehtävistä...', 1.05, TRUE);*/

-- select * from responsibility;

-- SHOW CREATE TABLE staff;

-- drop table responsibility;









