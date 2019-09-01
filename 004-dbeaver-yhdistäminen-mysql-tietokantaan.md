# DBeaver ja yhdistäminen Mysql -tietokantaan

Katso alla oleva video aiheesta. Videon jälkeen dokumenttiin on mahdollisesti lisätty muita huomioita.

[Youtube: DBeaver ja SSH Tunnel yhteys Mysql tietokantaan](https://youtu.be/I72VQLuN1rk)

<hr>

![Thumnbail](assets/images/004_dbeaver_01.png)

## Muita huomioita


### Azuren virtuaalikonen portit

Jos et yhdistä SSH Tunnelin avulla niin käytä tällöin suoraa IP -osoitetta palvelimelle. Kirjaudu Mysql tunnuksilla.

Tällöin virtuaalikoneelle pitää aukaista portteja minkä kautta eri ohjelmat keskustelevat. Oletuksena Mysql käyttää porttia 3306. 

Azuren portaalin kautta tehtynä lue ohjeet seuraavasta linkistä. https://docs.microsoft.com/en-us/azure/virtual-machines/windows/nsg-quickstart-portal

### Puttygen

Jos käytät public/private key yhdistelmää palvelimelle tunnistautumiseen niin saatat tarvita seuraavaa työkalua: https://www.puttygen.com/

DBeaver käyttä RSA -tyyppistä private key muotoa. Saattaa olla, että Azuren virtuaalikonetta luodessa on annettu OPENSSH muotoinen avain. Tällöin avain pitää konvertoida toisentyyppiseksi ja Puttygen ohjelmisto auttaa siinä Windowsilla.

Muutos onnistuu myös Linux ympäristössä usein komennolla:

> `ssh-keygen -p -m PEM -f ~/.ssh/id_rsa`
