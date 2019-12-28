
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - WHERE ehdolla voidaan muodostaa hakuehtoja, jolla suodatetan
 *   tulosjoukkoa.
 * 
 * - ORDER BY -operaattorilla voidaan järjestää hakutuloksia.
 * -- ASC (nouseva) ja DESC (laskeva) määrittävät järjestyksen
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <haettavat sarakkeet>
-- FROM <taulun nimi>
-- WHERE <hakuehdot>
-- ORDER BY <järjestysehdot>

select * from actor
order by last_name asc;

select * from address
order by district;


select last_name, first_name from actor
order by last_name asc, first_name desc
limit 10;




