
/* Mysql dokumentaatio tietokannan taulun muokkaamisesta.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/alter-table.html
 * https://dev.mysql.com/doc/refman/5.7/en/alter-table-examples.html
 * https://www.techonthenet.com/mysql/tables/alter_table.php
 * 
 * ALTER TABLE <taulun_nimi> [ADD | CHANGE | RENAME | DROP] ...
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- Lisätään työntekijöille kenttä vastuualueelle.
ALTER TABLE staff 
ADD responsibility_id SMALLINT UNSIGNED; 

-- Nimetään uudelleen sarake. 
ALTER TABLE staff CHANGE picture photo BLOB NULL;

-- Nimetään uudelleen taulu.
ALTER TABLE staff RENAME henkilokunta;
ALTER TABLE henkilokunta RENAME staff;

-- Poistetaan sarake ja sen tiedot. 
ALTER TABLE staff DROP responsibility_id;









