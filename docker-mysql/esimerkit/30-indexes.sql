
/* Tietokannan indeksit
 * 
 * https://book.sovelluskontti.com/relaatiotietokannat/indeksointi
 * 
 * Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- Näytä kaikki rental taulun indeksit
show index from rental;

-- Hae tietoja rental taulusta
select * from rental where inventory_id = 2932;

-- Poista viiteavaimen indeksi ja viitevain.
alter table rental drop foreign key `fk_rental_inventory`;
alter table rental drop index idx_fk_inventory_id;

-- Lisätään takaisin viiteavain ja indeksi.
alter table rental add CONSTRAINT `fk_rental_inventory` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`) ON UPDATE CASCADE;
alter table rental add key `idx_fk_inventory_id` (`inventory_id`);

-- Explain kysely.
explain select p.payment_id, p.rental_id, f.title from payment p
left join rental re on p.rental_id = re.rental_id
left join inventory i on re.inventory_id = i.inventory_id
left join film f on i.film_id = f.film_id
where re.inventory_id = 243;








