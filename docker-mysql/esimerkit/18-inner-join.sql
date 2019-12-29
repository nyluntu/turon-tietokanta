
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
	f.film_id,
	f.title,
	f.`length`,
	a.first_name,
	a.last_update
from film as f
inner join film_actor as fa using (film_id)
inner join actor as a using (actor_id);

