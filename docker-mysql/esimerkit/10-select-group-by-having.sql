
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - WHERE ehdolla voidaan muodostaa hakuehtoja, jolla suodatetan
 *   tulosjoukkoa.
 * 
 * - GROUP BY -operaattorilla voidaan ryhmitellä hakutuloksia.
 * - Ryhmiteltyjen tietojen kanssa voidaan käyttää kooste-funktioita.
 * -- AVG, MIN, MAX, SUM, COUNT
 * - Ryhmittelyn lisäksi voidaan käyttää HAVING ehtoa suodattamaan ryhmiteltyjä
 *   tuloksia.
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <haettavat sarakkeet>
-- FROM <taulun nimi>
-- WHERE <hakuehdot>
-- GROUP BY <ryhmittelyehdot>
-- HAVING <suodatusehto>

select * from payment;

SELECT 
	customer_id, 
	round(avg(amount), 2) as keskiostos,
	min(amount) as minimiostos,
	max(amount) as suurinostos,
	sum(amount) as ostoksetYhteensa
FROM payment
where payment_date BETWEEN '2005-06-01 00:00:00' and '2005-08-01 00:00:00'
group by customer_id
having ostoksetYhteensa between 40 and 50
order by ostoksetYhteensa desc
limit 10;





