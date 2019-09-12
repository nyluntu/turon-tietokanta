from configreader import read_db_config
from mysql.connector import Error
import mysql.connector
import os.path
import sys

def connect_to_database(host_address, database_name, db_user, db_password):
    """ 
    Metodi yhdistää mysql tietokantaan annettujen yhteystietojen
    perusteella.
    """
    conn = None
    try:
        conn = mysql.connector.connect(host=host_address,
                                       database=database_name,
                                       user=db_user,
                                       password=db_password)
        if conn.is_connected():
            print('Yhdistäminen MySQL tietokantaan onnistui.')
 
    except Error as e:
        print(e)
 
    finally:
        if conn is not None and conn.is_connected():
            conn.close()

def stop_script_if_config_not_exists():
    if not os.path.exists('config.ini'):
        print("""
        HUOMIO! config.ini -asetustiedostoa ei löytynyt. Voit luoda tiedoston 
        mallipohjasta nimeämällä sen uudelleen.

        cp config.ini.template config.ini
        """)
        sys.exit()

if __name__ == '__main__':
    stop_script_if_config_not_exists()
    
    # Luetaan config tiedostosta tietokantayhteyttä varten 
    # tarvittavat tunnukset ja asetukset.
    mysql_configs = read_db_config("config.ini", "mysql")

    # Kutsutaan metodia, joka vain yhdistää tietokantaan.
    connect_to_database(
        mysql_configs["host_address"], 
        mysql_configs["database_name"], 
        mysql_configs["db_user"], 
        mysql_configs["db_password"])