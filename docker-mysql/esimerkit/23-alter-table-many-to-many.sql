
/* Mysql dokumentaatio tietokannan taulun muokkaamisesta.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/alter-table.html
 * https://www.w3schools.com/sql/sql_foreignkey.asp
 * 
 * CREATE TABLE [IF NOT EXISTS] <taulun_nimi> (
 *   <sarake1> <tietotyyppi>,
 *   <sarake2> tietotyyppi,
 *   <sarake3> tietotyyppi,
 *   PRIMARY KEY (<sarake1>, <sarake2>),
 *   CONSTRAINT <viittauksen_nimi> FOREIGN KEY (<sarake1>) REFERENCES <taulu2> (<sarake1>) ON UPDATE CASCADE
 * );
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

-- Poistetaan viiteavain staff taulusta
-- ALTER TABLE staff DROP FOREIGN KEY FK_responsibility_id;

-- Poistetaan sarake staff taulusta
-- ALTER TABLE staff DROP responsibility_id;

-- Lisätään vastuualueita henkilökunnalle
select * from responsibility;
select * from staff;

/*insert into staff_responsibility (staff_id, responsibility_id)
values (1, 2), (1,3);

insert into staff_responsibility (staff_id, responsibility_id)
values (2, 1), (2,3), (2,4), (2,5);*/

select * from staff_responsibility;

-- select join
select s.staff_id, s.first_name, s.last_name, r.responsibility_id, r.title from staff s 
left join staff_responsibility sr on s.staff_id = sr.staff_id
left join responsibility r on sr.responsibility_id = r.responsibility_id
where s.staff_id = 2;








