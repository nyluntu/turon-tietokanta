
/* Mysql dokumentaatio tietokannan taulun muokkaamisesta.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/alter-table.html
 * https://www.w3schools.com/sql/sql_foreignkey.asp
 * 
 * ALTER TABLE <taulun_nimi>
 * ADD CONSTRAINT <viiteavaimen_nimi>
 * FOREIGN KEY (<viittaava_kentta>) REFERENCES <taulun_nimi>(<viitattu_kentta>);
 * 
 * ALTER TABLE <taulun_nimi> DROP FOREIGN KEY <viiteavaimen_nimi>;
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- Lisätään viiteavaimen viittaus vastuualueisiin.
-- Foreign key

ALTER TABLE staff
ADD CONSTRAINT FK_responsibility_id
FOREIGN KEY (responsibility_id) REFERENCES responsibility(responsibility_id);


-- ALTER TABLE staff DROP FOREIGN KEY FK_responsibility_id;

-- select * from responsibility;
select staff_id, first_name, last_name, responsibility_id from staff;
-- update staff set responsibility_id = NULL;









