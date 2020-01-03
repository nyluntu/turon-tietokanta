
/* Mysql dokumentaatio tietokannan luomisesta.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/creating-database.html
 * https://dev.mysql.com/doc/refman/5.7/en/charset.html
 * https://mariadb.com/kb/en/character-set-and-collation-overview/
 * 
 * - CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name
 * - DROP DATABASE db_name
 * - SELECT DATABASE()
 * - 
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 


-- SHOW CHARACTER SET;
-- SHOW COLLATION WHERE Charset = 'utf8mb4';
-- SHOW DATABASES;

-- SELECT default_character_set_name FROM information_schema.SCHEMATA 
-- WHERE schema_name = "sakila";

-- CREATE DATABASE IF NOT EXISTS utf8tietokanta
-- CHARACTER SET = 'utf8mb4'
-- COLLATE = 'utf8mb4_estonian_ci';

-- show databases;
-- select database();

-- DROP DATABASE utf8tietokanta;







