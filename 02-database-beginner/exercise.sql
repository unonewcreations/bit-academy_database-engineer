-- Het aanmaken van een database
CREATE DATABASE sterrenstelsel;

-- Er wordt een tabel aangemaakt met een 'create table' statement.
-- De `naam` kolom is van het type `varchar`.
CREATE TABLE planeten (
    naam varchar(255)
);

-- Voeg de volgende planeten toe: Zon, Mercurius, Venus, Aarde, Mars
INSERT INTO planeten (naam)
VALUES ("Zon");

INSERT INTO planeten (naam)
VALUES ("Mercurius");

INSERT INTO planeten (naam)
VALUES ("Venus");

INSERT INTO planeten (naam)
VALUES ("Aarde");

INSERT INTO planeten (naam)
VALUES ("Mars");

-- na het uitvoeren van het sql script zijn alle 5 de planeten op te halen met behulp van het `SELECT * FROM planeten;` statement.
SELECT * FROM planeten;

-- De tabel wordt geleegd met het `truncate` statement.
TRUNCATE planeten;

-- De tabel wordt gewijzigd door middel van een `alter table` statement.
ALTER TABLE planeten ADD naam char(255);
ALTER TABLE planeten ADD diameter int(11);
ALTER TABLE planeten ADD afstand int(11);
ALTER TABLE planeten ADD massa int(11);

-- Er wordt nieuwe data toegevoegd aan de database.
INSERT INTO planeten (naam, diameter, afstand, massa)
VALUES 
("Zon", 1392000, 0, 332946), 
("Mercurius", 4880, 57910000, 0), 
("Venus", 12104, 108208930, 1), 
("Aarde", 12756, 149597870, 1), 
("Mars", 6794, 227936640, 0);

-- De overige kolommen zijn `NOT NULL` gemaakt door een `alter table` statement
ALTER TABLE planeten MODIFY naam varchar(255) NOT NULL;
ALTER TABLE planeten MODIFY diameter int NOT NULL;
ALTER TABLE planeten MODIFY afstand int NOT NULL;
ALTER TABLE planeten MODIFY massa int NOT NULL;

-- De 'bezoek_datum' is als optioneel toegevoegd door een `alter table` statement
ALTER TABLE planeten ADD bezoekdatum int(11);
ALTER TABLE planeten ADD bezoekdatum DATE NULL;

-- De id's van de planeten worden automatisch gegenereerd
ALTER TABLE planeten ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

-- De naam van de 'nieuwe' Mars is gewijzigd met behulp van een `update` statement
UPDATE planeten
SET naam = 'Teenalp'
WHERE id = '6';

-- De rij van `Teenalp` is verwijderd met een `delete` statement
DELETE FROM planeten
WHERE id = '6';

-- Maak een nieuwe database genaamd Netland aan
CREATE DATABASE Netland;
-- Voer het aangeleverde sql script uit op de database
USE `netland`;

CREATE TABLE `series` (
	id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    rating DECIMAL(2,1) NULL,
    description TEXT NOT NULL,
    has_won_awards BIT NOT NULL,
    seasons INT NOT NULL,
    country ENUM('NL', 'UK') NOT NULL,
    language ENUM('NL', 'EN') NOT NULL
);

INSERT INTO `series` (`title`, `rating`, `description`, `has_won_awards`, `seasons`, `country`, `language`) VALUES 
	('The good place', 4.5, 'De serie gaat over een vrouw, Eleanor Shellstrop, die zich in het hiernamaals bevindt. Ze wordt verwelkomd door Michael, de \'architect\' van het utopische dorpje waar ze voor eeuwig gaat wonen. Er zijn twee delen in het hiernamaals, The Good Place (\'goede plek\') en The Bad Place (\'slechte plek\'); welke wordt bepaald door ethische punten voor elke handeling op aarde.', 0, 4, 'UK', 'EN'),
    ('Game of Thrones', 5.0, 'Op het continent Westeros regeert koning Robert Baratheon al meer dan zeventien jaar lang over de Zeven Koninkrijken, na zijn opstand tegen koning Aerys II Targaryen "De Krankzinnige". Als zijn adviseur Jon Arryn wordt vermoord, vraagt hij zijn oude vriend Eddard Stark, de Heer van Winterfell en Landvoogd van het Noorden, om zijn plaats in te nemen. Eddard gaat met tegenzin akkoord, en trekt met zijn twee dochters, Sansa en Arya (Maisie Williams), naar de hoofdstad in het zuiden. Vlak voor hun vertrek wordt een van zijn jongste zonen, Bran Stark, uit een van de torens van Winterfell geduwd, na getuige te zijn geweest van de incestueuze affaire tussen koningin Cersei en haar tweelingbroer, Jaime Lannister.', 1, 7, 'UK', 'EN'),
    ('Breaking Bad', 2.0, 'Walter White is in 2008 een overgekwalificeerde scheikundeleraar op een middelbare school in Albuquerque. Op het moment dat zijn vrouw onverwacht zwanger is van hun tweede kind, stort Walters wereld in. De dokter heeft vastgesteld dat hij terminaal ziek is. Walter heeft longkanker en lijkt niet lang meer te zullen leven. Om ervoor te zorgen dat zijn gezin na zijn dood niet in een financiële crisis belandt en tevens om zijn eigen behandelingen te betalen, besluit Walter over te schakelen op een leven als misdadiger. Met de hulp van Jesse Pinkman, een uitgevallen leerling die hij nog scheikunde gegeven heeft, maakt en verkoopt hij de drug crystal meth. Terwijl hij doorgaat met lesgeven, komt het belang van scheikunde in de moderne maatschappij prangend in zijn lessen naar voren. Zijn product is meer dan 99% zuiver en dit feit loopt als een rode draad door de hele serie heen.', 1, 3, 'UK', 'EN'),
    ('Penoza', 3.2, 'Hoofdrolspeelster Carmen van Walraven (Monic Hendrickx) ontdekt dat haar man Frans (Thomas Acda) een veel belangrijker rol in de onderwereld speelt dan ze dacht. Ze dwingt hem dan ook ermee te stoppen. Net wanneer alles weer goed lijkt te gaan, wordt haar man voor de ogen van hun jongste zoon Boris (Stijn Taverne) geliquideerd. Carmen krijgt last van schuldeisers en bedreigingen. Ook justitie zit achter haar aan omdat die wil dat zij gaat getuigen tegen de compagnons van haar man.Carmen wil niet als beschermd getuige door het leven gaan en kiest voor een moeilijk alternatief: ze werkt zich naar de top van de georganiseerde misdaad, waar niemand nog aan haar of haar gezin durft te komen. In het vervolg daarop weet ze al snel niet meer wie ze moet vertrouwen, en worden de grenzen tussen goed en kwaad steeds onduidelijker.', 0, 3, 'NL', 'NL'),
    ('De luizenmoeder', 4.8, 'Het verhaal speelt zich af op de fictieve basisschool De Klimop in Dokkum. De school heeft een zwaar jaar achter de rug, waarin enkele leraren en de conciërge ontslagen zijn. Het is nu aan de schoolleiding om in het nieuwe schooljaar een frisse start te maken. Centraal staan Hannah (Jennifer Hoffman), de moeder van Floor, de \'luizenmoeder\', en juf Ank (Ilse Warringa), de kordate onderwijzeres. Als moeder van een nieuwe leerling moet Hannah zich staande houden in een absurdistische wereld van hangouders, moedermaffia, schoolpleinregels, rigide verjaardagsprotocollen, verantwoorde traktaties, parkeerbeleid, appgroepjes, ouderparticipatie en ander leed. Ook worden de belevenissen van de andere ouders en de schoolleiding gevolgd. De ouders (moeders) worden geacht het onderwijs te ondersteunen als vrijwilligers en de onderste tree in de bijbehorende hiërarchie die tot de ouderraad loopt is die van luizenmoeder, de moeder die schoolkinderen met een luizenkam controleert op luizen in het haar en deze verwijdert.', 1, 2, 'NL', 'NL'),
    ('My little pony', 1, 'De serie begint met een eenhoorn genaamd Twilight Sparkle, een student van Equestria\'s heerser, prinses Celestia. Nadat ze ziet hoe haar student zich alleen maar bezighoudt met boeken, stuurt prinses Celestia haar naar Ponyville met de opdracht een paar vrienden te maken. Twilight Sparkle, samen met haar assistent, een babydraak genaamd Spike, raakt bevriend met de pony\'s Pinkie Pie, Applejack, Rainbow Dash, Rarity en Fluttershy. Samen beleven ze avonturen binnen en buiten de stad en lossen ze diverse problemen op. De meeste afleveringen eindigen met Twilight Sparkle of iemand anders die een brief schrijft aan de prinses over wat ze die aflevering geleerd heeft over de magie van de vriendschap. Ook zit er in iedere aflevering een belangrijke les over vriendschap.', 0, 25, 'UK', 'NL');






