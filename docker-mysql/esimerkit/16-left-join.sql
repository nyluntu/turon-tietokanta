
/* Mysql dokumentaatio JOIN -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/join.html
 * 
 * - JOIN -komennolla yhdistetään tietoja useammasta taulusta, joissa on
 *   jokin niitä yhdistävä sarake.
 * - Käytetyimmät JOIN tavat ovat LEFT, RIGHT, INNER
 * - https://book.sovelluskontti.com/relaatiotietokannat/sql-join-lauseke
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- SELECT <taulu1>.<sarake1>, <taulu2>.<sarake1>, <taulu2>.<sarake2>
-- FROM <taulu1>
-- [INNER|LEFT|RIGHT] JOIN <taulu2> ON <yhdistävä sarake>;

-- select * from rental order by rental_date desc;

/*
select rental.customer_id, customer.first_name, customer.last_name, rental.rental_date, rental.inventory_id 
from rental 
left join customer on rental.customer_id = customer.customer_id
order by rental_date desc;
*/

select 
	r.customer_id, 
	concat(c.first_name, ' ', c.last_name) as "asiakkaan nimi",
	c.email,
	count(*) as "yhteensa"
from rental as r
left join customer as c on r.customer_id = c.customer_id
group by r.customer_id
order by yhteensa DESC
limit 10;

-- select count(*) from rental where customer_id = 144;

