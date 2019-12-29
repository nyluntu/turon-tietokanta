
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

select 
	p.payment_id,
	p.customer_id,
	p.payment_date,
	p.amount,
	c.email,
	c.first_name,
	c.last_name
from payment as p
right join customer as c on p.customer_id = c.customer_id
order by p.payment_id;


