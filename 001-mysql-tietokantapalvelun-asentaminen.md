# Mysql -tietokannan asentaminen Ubuntu 18.04 palvelimelle

Anna seuraavat komennot palvelimella ja mysql tietokanta asentuu melko vaivattomasti. 

Seuraavien vaiheiden ohjeet perustuvat Digital Oceanin ohjeistukseen. Lue siis tarvittaessa lisää osoitteesta https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04

**Vinkki!** Digital Oceanin tutoriaalit sisältävät hyödyllisiä ohjeilta Linux palveluiden asentamiseen ja hallintaan, joten pistä linkki talteen.

## Mysql-asennus

Yhdistä ensin palvelimelle `ssh` -päätteellä. Anna sitten alla olevat komennot.

`sudo apt update`

Yllä oleva komento päivittää palvelimen Ubuntu jakelun pakettilistauksen, jotta uusimmat versiot eri ohjelmista olisi annettavissa. Usein kyseinen komento pitää antaa kun päivitetään tai asennetaan uusia ohjelma versioita. Komento ei itsessään päivitä vielä mitään.

`sudo apt install mysql-server`

Yllä oleva komento asentaa mysql palvelimen. Tämä tarvitaan aina kun halutaan asentaa ns. tietokantapalvelin. Muut ohjelmat yhdistävät sitten tälle palvelimelle. Mysql asennus voi sijaita myös samalla palvelimella esimerkiksi Django, python, php ja muiden ohjelmien kanssa. Käytäntönä on vain usein, että tietokantapalvelin on eriytetty omaksi.

## Mysql -turvallisuusasetukset

`sudo mysql_secure_installation`

Yllä oleva komento kysyy muutamia kysymyksiä tietoturvan osalta. Kannattaa aina ajaa kun tekee mysql asennuksen. Alla kysymyksen ja mitä voit vastata niihin tällä erää.

1. VALIDATE PASSWORD PLUGIN: **vastaa kyllä**, jos haluat, että salasanan pitää sisältää erilaisia merkkejä ja kirjaimia. Harjoituksissa et tarvitse tätä mutta jos ikinä asennat oikean palvelimen niin kytke päälle.

2. Toisessa vaiheessa sinulta kysytään salasana kahteen kertaan. Salasana tulee mysql asennuksen `root` -käyttäjälle. Laita muistiin!

3. Remove anonymous users? **Vastaa kyllä**

4. Disallow root login remotely? **Vastaa kyllä**

5. Remove test database and access to it? **Vastaa kyllä**
Success.

6. Reload privilege tables now? **Vastaa kyllä**

All done! 

## Tarkista mysql palvelun toimivuus

`sudo service mysql status`

Yllä oleva komento kertoo sinulle, jos mysql palvelu on päällä. Kuuluisi olla maininta **active (running)**.

`sudo mysql -u root -p`

Yllä oleva komento yhdistää mysql -palveluun. Komento `mysql` on komentorivipohjainen pääte tietokannan käsittelyä varten. Kannattaa opetella käyttämään, koska usein sitä tarvitaan. Asennamme kuitenkin myöhemmin graafisen käyttöliittymän.

Pääset pois `mysql` päätteestä kirjoittamalla komennont `exit`. Ennen poistumista voit antaa kokeilla antaa seuraavan komennon:

`show databases;` (lopuksi hyväksy entterillä)

Komento listaa nykyiset käytettävissä olevat tietokannat. Vastauksen kuuluisi näyttää seuraavalta:

```
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> exit
Bye
```

**Vinkki!** Saat käyttämäsi palvelinkomennot talteen listaamalla ne komennolla `history`.