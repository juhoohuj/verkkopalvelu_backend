CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Kannettavat'),
(2, 'Pelitietokoneet'),
(3, 'Näytöt'),
(4, 'Hiiret'),
(5, 'Näppäimistöt'),
(6, 'Kuulokkeet & Mikrofonit'),
(7, 'Kaapelit'),
(8, 'Adapterit');

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` INT NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (category_id) REFERENCES category(id)
);

INSERT INTO `product` (`name`, `price`, `image`, `category_id`, `description`) VALUES
('DACOTA PLATINUM USB-C VERKKOVIRTALATURI', 15, 'DACOTA PLATINUM USB-C VERKKOVIRTALATURI', 8, 'Tämän pikalaturin ansiosta vietät vähemmän aikaa odottaessa ja enemmän aikaa tehdessä. Laturi sisältää suojan oikosulkua, ylikuormitusta ja ylijännitettä vastaan. Ota tämä näppärä laturi mukaasi minne haluat ja pidä laitteesi ladattuna.'), 
('HyperX Cloud Alpha S -pelikuulokkeet', 100, 'HyperX Cloud Alpha S -pelikuulokkeet', 6, 'HyperX Cloud Alpha S -pelikuulokkeissa on kaksoiskammioteknologialla varustetut elementit, 7.1-tilaääni, taustamelua suodattava mikrofoni ja lukuisia säätömahdollisuuksia.'),
('HyperX Pulsefire Core RGB -pelihiiri', 60, 'HyperX Pulsefire Core RGB -pelihiiri', 4, 'HyperX Pulsefire Core RGB -pelihiiri antaa erinomaisen tarkkuuden ja luotettavuuden. Hiiressä on säädettävä 6200 DPI resoluutioinen optinen Pixart 3327 -sensori sekä kestävät kytkimet ja ergonominen muotoilu.'),
('XM1 RGB Pelihiiri', 50, 'XM1 RGB Pelihiiri', 4, 'XM1 RGB Gaming Mouse on uusi huippulaadukas, ammattilaisille suunniteltu pelihiiri. Siinä yhdistyvät innovatiiviset ominaisuudet kuten Pixart PMW3389 -sensori ja valikoidut, kestävät Kailh-kytkimet. Nämä tekevät tästä ultimaattisen pelihiiren.'),
('Deltaco taipuisa HDMI uros-naaras sovitin kulmaliittimellä', 15, 'Deltaco taipuisa HDMI uros-naaras sovitin kulmaliittimellä', 7, 'HDMI-sovitin, jossa on taipuisa kaapeli. Sisältää kulmaliittimen, joka helpottaa liittimen kytkemistä seinän vieressä olevaan laitteeseen.'),
('Hama 3.5 mm adapteri kuulokkeille ja mikrofonille', 10, 'Hama 3.5 mm adapteri kuulokkeille ja mikrofonille', 7, 'Hama-adapterin avulla yhdistät kuulokemikrofonin helposti tietokoneesi 3.5 mm liitäntään.'),
('Lenovo USB-C to Ethernet Adapter', 20, 'Lenovo USB-C to Ethernet Adapter', 8, 'Alkuperäinen Lenovon adapteri, joka mahdollistaa langallisen (RJ-45) yhteyden Ethernet-verkkoon kannettavan USB-A -liitännästä. Tukee PXE boot, Wake-On-LAN ja MAC Passthrough -ominaisuuksia.'),
('Next MX5 Mini pelinäppäimistö', 75, 'Next MX5 Mini pelinäppäimistö', 5, 'Kompaktissa Next MX5 Mini -pelinäppäimistössä on herkät kalvokytkimet sekä 62 näppäintä. Lisäksi siinä on monivärinen LED-taustavalaistus sekä USB 2.0 -liitäntä.'),
('Pelihiiri Prototype GM-670L', 35, 'Pelihiiri Prototype GM-670L', 4, 'Prototype GM-670L on pelihiiri, joka tarjoaa pelaajien vaatimaa mukavuutta, suorituskykyä. Se on ergonominen, kevyt ja mukava käyttää sen optisen sensorin ansiosta.'),
('Penguin pystyhiiri', 79, 'Penguin pystyhiiri', 4, 'Penguin pystyhiiri tarjoaa käyttäjälleen ergonomisen tavan työskennellä ja taistella hiirikäsivaivoja vastaan. Pohjan alusta vähentää pitoa helpottaen työntekoa menettämättä kuitenkaan tarkkuutta.'),
('Razer Kraken Kitty - Pinkki', 100, 'Razer Kraken Kitty - Pinkki', 6, 'Luo täydellinen, kehräävä ja kissamaisen sähäkkä pelityylisi. Ilmaise ainutlaatuista persoonallisuuttasi ja intohimoasi mitä kuvitteellisemmalla tavalla ottamalla käyttöön Razer Kraken Kitty Edition - USB-pelikuulokkeet'),
('Samsung Odyssey G3 S24AG300 pelinäyttö', 400, 'Samsung Odyssey G3 S24AG300 pelinäyttö', 3, '24” Samsung Odyssey G3 -pelinäytössä on korkea 144 Hz virkistystaajuus sekä huippunopea 1 ms vasteaika. AMD FreeSync Premium -teknologia pitää liikkuvan kuvan sujuvana'),
('Steelseries Arctis 3 White pelikuulokkeet', 120, 'Steelseries Arctis 3 White pelikuulokkeet', 6, 'Innovatiiviset SteelSeries Arctis 3 -pelikuulokkeet tuottavat todentuntuisen 7.1-virtuaalisen tilaäänen peleille. Kuulokkeiden älykäs muotoilu varmistaa korkean käyttömukavuuden tunnista toiseen.'),
('DeLock HDMI 2 - 1 kytkin, kaksisuuntainen, 4K 60Hz, musta', 40, 'DeLock HDMI 2 - 1 kytkin, kaksisuuntainen, 4K 60Hz, musta', 8, 'Käytä tätä HDMI-version 2.0 kaksisuuntaista kytkintä liittääksesi jopa 2 HDMI-lähdöllä varustettua laitetta yhteen televisioon, näyttöön tai lähettimeen.'),
('Deltaco DisplayPort - DVI-D Single Link sovitin, 20-pin uros - 24+1-pin naaras, 0,17m, musta', 15, 'Deltaco DisplayPort - DVI-D Single Link sovitin, 20-pin uros - 24+1-pin naaras, 0,17m, musta', 8, 'Deltaco DisplayPort/ DVI-D Single Link -näyttökaapeli kullatuilla pistokkeilla.'),
('Deltaco USB 3.0 - SATA 6Gbs sovitin, 2.5 kiintolevylle, musta', 20, 'Deltaco USB 3.0 - SATA 6Gbs sovitin, 2.5 kiintolevylle, musta', 8, 'Asenna 2,5" tai 3,5" SATA kovalevy USB 3.0 porttiin tämän sovittimen avulla. Toimii myös USB 2.0 standardin kansssa.'),
('Corsair Harpoon RGB PRO, optinen pelihiiri', 40, 'Corsair Harpoon RGB PRO, optinen pelihiiri', 4, 'Corsair Harpoon RGB Pro -pelihiiressä on säädettävä 12 000 DPI-herkkyys, 6 ohjelmoitavaa näppäintä, kevyt ergonominen muotoilu sekä RGB-valaistus.'),
('BenQ ZOWIE EC2 -pelihiiri, 3200 DPI, musta', 70, 'BenQ ZOWIE EC2 -pelihiiri, 3200 DPI, musta', 4, 'Zowie EC2 by BenQ -pelihiiressä on klassinen tuntuma. Oikealle kädelle muotoiltu hiiri on ergonominen pitkilläkin pelisessioilla. Optinen 3360-sensori 3200 DPI herkkyydellä takaa vaadittavan tarkkuuden.'),
('Cooler Master MasterMouse MM710, optinen pelihiiri', 50, 'Cooler Master MasterMouse MM710, optinen pelihiiri', 4, 'Cooler Master -pelihiiren avulla voit nousta tilastojen kärkeen tarkan PixArt PMW3389 -sensorin tarjoaman tarkkuuden ansiosta. Äärimmäisen kevyt 53 g runko hunajakennorakenteella ja ergonominen muoto ehkäisevät rannekipua.'),
('Deltaco DVI monitorikaapeli Dual Link, DVI-D uros - uros, 2m', 10, 'Deltaco DVI monitorikaapeli Dual Link, DVI-D uros - uros, 2m', 7, 'Tällä kaapelilla voi ainoastaan lähettää digitaalisia signaaleja. Sopii DVI-D ja DVI-I liittimiin. Kullatut liittimet.'),
('Deltaco USB 2.0 jatkokaapeli A-A u-n, 5m, musta', 10, 'Deltaco USB 2.0 jatkokaapeli A-A u-n, 5m, musta', 7, 'Jatkokaapelin avulla tietokoneeseen liitetyt USB-yksiköt voivat olla jopa 5 metrin päässä tietokoneesta. Mahdollistaa yhteensä 10m yhdessä 5m passiivisella kaapelilla.'),
('Deltaco DisplayPort - DVI-D Single Link monitorikaapeli, 20-pin uros - 24+1-pin uros, 2m, musta', 15, 'Deltaco DisplayPort - DVI-D Single Link monitorikaapeli, 20-pin uros - 24+1-pin uros, 2m, musta', 7, 'DELTACO DisplayPort - DVI-D Single Link monitorikaapeli, 20-pin uros - 18+1-pin uros, kullatut liittimet, kuparijohtimet, musta, 1m'),
('Deltaco DisplayPort - DisplayPort, 20-pin u-u, 2 m', 15, 'Deltaco DisplayPort - DisplayPort, 20-pin u-u, 2 m', 7, 'DisplayPort-kaapeli, jolla voi kytkeä toisiinsa kaksi laitetta.'),
('Deltaco SATA-kaapeli, SATA 6Gbs, lukkoklipsi suora-suora, musta, 0,5m', 10, 'Deltaco SATA-kaapeli, SATA 6Gbs, lukkoklipsi suora-suora, musta, 0,5m', 7, 'DELTACO SATA-kaapeli, SATA 6Gb/s, lukkoklipsi, suora-suora, 0,5m, musta'),
('JBL Quantum 400 -pelikuulokkeet mikrofonilla, musta', 50, 'JBL Quantum 400 -pelikuulokkeet mikrofonilla, musta', 6, 'Etulyöntiasema audiossa. JBL Quantum 400 -kuulokemikrofoni pitää sinut askeleen edellä, sillä sen tilaääni vie sinut mukaansa peliin, ja sen ansiosta voit ennakoida jokaisen liikkeen.'),
('HyperX QuadCast -mikrofoni', 200, 'HyperX QuadCast -mikrofoni', 6, 'HyperX QuadCast -kondensaattorimikrofonissa on varustettu värinävaimennetulla mikrofonikehdolla ja sisäänrakennetulla puhkusuojalla. Neljä nauhoitustilaa mahdollistavat äänen lähettämisen ja tallentamisen erinomaisella laadulla. USB-liitäntä.'),
('Blue Yeti, USB-pöytämikrofoni, Blackout', 250, 'Blue Yeti, USB-pöytämikrofoni, Blackout', 6, 'Luo vertaansa vailla olevia tallenteita tietokoneellasi käyttämällä Yeti-sarjan USB-mikrofoneja. Kiitos patentoidun kolmoiskotelointi-tekniikan, Yeti -mikrofonit tuottavat ehjää, studiolaatuista ääntä uskomattoman helposti. '),
('Lenovo 14 ThinkPad E14, kannettava tietokone, musta', 500, 'Lenovo 14 ThinkPad E14, kannettava tietokone, musta', 1, '14” Lenovo ThinkPad E14 Gen3 on ohut, mutta tehokas kannettava, jonka avulla työskentelet mukavasti myös matkoilla. Laite on varustettu vahvoilla turvaominaisuuksilla sekä pitkällä akkukestolla.'),
('Lenovo 14 V14, kannettava tietokone, raudanharmaa', 699, 'Lenovo 14 V14, kannettava tietokone, raudanharmaa', 1, 'Lenovo V14 IIL on kompakti 14-tuumainen kannettava monipuoliseen työskentelyyn. Lenovo V -sarjan kannettava tarjoaa turvaa, tietosuojaa ja tehokkuutta kohtuuhintaan. Tehokasta tietokonetta pyörittää Windows 10 Pro -käyttöjärjestelmä.'),
('HP 11,6 ChromeBook 11 G8, kannettava tietokone, Chalkboard Gray', 1200, 'HP 11,6 ChromeBook 11 G8, kannettava tietokone, Chalkboard Gray', 1, 'HP Chromebook 11a-nb0400no on kompakti ja helppokäyttöinen 11,6” kannettava Chrome OS -käyttöjärjestelmällä. Ohut ja kevyt kannettava sopii erinomaisesti myös matkakäyttöön jopa 13 tuntia kestävän akkunsa ansiosta.'),
('HP 15,6 255 G8, kannettava tietokone, tumma tuhkanhopea', 700, 'HP 15,6 255 G8, kannettava tietokone, tumma tuhkanhopea', 1, 'HP 15-dw1405no on luotettava 15,6” HP-kannettava, joka on erinomainen valinta päivittäiseen kodin peruskäyttöön. Pitkän akunkeston ja nopean pikalatauksen ansiosta käytät laitetta kätevästi myös kodin ulkopuolella.'),
('Asus 17,3 ROG Strix G17 G713QR, kannettava pelitietokone, Eclipse Gray', 1800, 'Asus 17,3 ROG Strix G17 G713QR, kannettava pelitietokone, Eclipse Gray', 2, 'ROG Strix G17 -pelikoneella nautit sulavasta suorituskyvystä raskaissakin peleissä, ja näytön mahtava 300 Hz virkistystaajuus takaa immersiivisen pelikokemuksen.'),
('Logitech G513 Carbon, mekaaninen pelinäppäimistö RGB-valoin', 200, 'Logitech G513 Carbon, mekaaninen pelinäppäimistö RGB-valoin', 5, 'G513 on täydellinen yhdistelmä suorituskykyä, edistyksellisiä tekniikoita ja ominaisuuksia ja sen rakenteen laatu on ennenkokemattoman korkea. G513 on mekaaninen pelinäppäimistö RGB-värivaloin, johon sisältyy mekaaniset GX Blue-näppäinkytkimet.'),
('Deltaco Gaming GAM-075, mekaaninen pelinäppäimistö', 69, 'Deltaco Gaming GAM-075, mekaaninen pelinäppäimistö', 5, 'Pienehkö mekaaninen näppäimistö, jossa on RGB-kytkimet ja pohjoismainen asettelu. Tuotteessa on 60 prosenttia tavallisen näppäimistön painikkeista.'),
('SteelSeries PrismCAPS White -näppäinhattusarja, Nordic, valkoinen', 90, 'SteelSeries PrismCAPS White -näppäinhattusarja, Nordic, valkoinen', 5, 'Tehty erittäin kestäviksi, parannettu RGB-valaistus, yhteensopiva useimpien mekaanisten näppäimistöjen kanssa.'),
('SilentiumPC SPC Gear GK630K Tournament Kailh Red RGB, mekaaninen pelinäppäimistö', 120, 'SilentiumPC SPC Gear GK630K Tournament Kailh Red RGB, mekaaninen pelinäppäimistö', 5, 'SPC Gear GK630K Tournament Kailh on kompakti näppäimistö pelaajille ilman numeroblokkia. Pienen kokonsa ja irrotettavan kaapelin ansiosta se sopii täydellisesti sekä kotiin että turnauksiin tai LAN-juhliin ystävien kanssa.'),
('Logitech G915 TKL, langaton mekaaninen LIGHTSPEED-RGB -pelinäppäimistö', 120, 'Logitech G915 TKL, langaton mekaaninen LIGHTSPEED-RGB -pelinäppäimistö', 5, 'Mekaaninen Logitech G® PRO -pelinäppäimistö on suunniteltu e-urheilijoiden kanssa e-urheilijoita varten. Se on pienikokoinen eikä siinä ole lainkaan numeronäppäimistöä, joten pöydällä on hyvin tilaa hiiren liikkeille alhaisilla herkkyysasetuksilla.'),
('Acer 31,5 Nitro ED320QR P, 165Hz kaareva Full HD -pelimonitori', 250, 'Acer 31,5 Nitro ED320QR P, 165Hz kaareva Full HD -pelimonitori', 3, 'Huipputason kaareva näytto Full HD resoluutiolla ja 165 Hz -virkistystaajuudella'),
('Lenovo 23 ThinkVision T23i-20, Full HD -monitori', 199, 'Lenovo 23 ThinkVision T23i-20, Full HD -monitori', 3, 'Tehosta työtäsi ja koe loistavat visuaaliset kuvat ThinkVision T23i-20:lla. Tarkastele kristallinkirkkaita yksityiskohtia kaikista kulmista tällä 23 tuuman näytöllä, jossa on In-Plane Switching -paneeli ja häikäisemätön näyttö.'),
('Dell 27 E2720HS, Full HD -monitori, musta', 150, 'Dell 27 E2720HS, Full HD -monitori, musta', 3, 'Dell E2720H -näyttö sopii hyvin päivittäiselle käytölle terävän Full HD 1080p -resoluution ja laajojen katselukulmien ansiosta. Siinä on myös integroidut kaiuttimet.'),
('Acer 24,5 Predator X25, 360Hz Full HD -pelimonitori', 600, 'Acer 24,5 Predator X25, 360Hz Full HD -pelimonitori', 3, '24” Acer Predator X25 -pelinäyttö on täydellinen kumppani pelitietokoneellesi. Pelinäytössä on huikaiseva 360 Hz virkistystaajuus ja 1 ms vasteaika. HDR400-sertifiointi takaa hämmästyttävän väritarkkuuden sekä syvän kontrastin.'),
('MSI 27 Optix G273QF, 165Hz WQHD-pelimonitori', 270, 'MSI 27 Optix G273QF, 165Hz WQHD-pelimonitori', 3, 'Kilpapelaamiseen sunniteltu QHD-näyttö 1 ms vasteajalla ja 165 Hz virkistystaajuudella'),
('Asus 27 TUF Gaming VG279QR, 165Hz Full HD -pelimonitori', 200, 'Asus 27 TUF Gaming VG279QR, 165Hz Full HD -pelimonitori', 3, '27-tuumainen huippunopea TUF Gaming -näyttö soveltuu jopa ammattitason pelaajille sekä niille, jotka nauttivat immersiivisestä pelikokemuksesta. Extreme Low Motion Blur -teknologia, millisekunnin vasteaika sekä G-SYNC pitävät liikkeen sulavana.'),
('Asus ROG Strix GL10 G10DK -pelitietokone', 1500, 'Asus ROG Strix GL10 G10DK -pelitietokone', 2, 'ROG Strix GL10 on pelkistetyn tyylikäs pelipöytätietokone, joka takaa erinomaisen suorituskyvyn kompaktissa koossa - se painaa vain 8 kg ja sen tilavuus on 27 litraa.'),
('Acer Nitro 50-620 -pelitietokone, musta', 800, 'Acer Nitro 50-620 -pelitietokone, musta', 2, 'Acer Nitro N50 -pelitietokone 12. sukupolven Intel®-prosessorilla ja NVIDIA-näytönohjaimella tarjoaa uskomattoman pelikokemuksen ilman huolta viiveestä tai hitaista suoritusajoista.'
);




CREATE TABLE `customer` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(255) NOT NULL,
  `firstname` VARCHAR(255) NOT NULL,
  `lastname` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `zipcode` INT NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO `customer` (`id`, `password`, `firstname`, `lastname`, `email`, `address`, `zipcode`, `city`)
 VALUES ('1', 'test123', 'John', 'Doe', 'johndoe@gmail.com', 'meemikatu 12', '90100', 'OULU');

CREATE TABLE `orders` (
  `customer_id` INT(11) NOT NULL,
  `order_id` int NOT NULL AUTO_INCREMENT,
  `orderdate` DATETIME NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customer(id)
);


CREATE TABLE `orderline` (
  `order_id` int NOT NULL,
  `row_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `amount` int,
  PRIMARY KEY (row_id),
  FOREIGN KEY (product_id) REFERENCES product(id),
 FOREIGN key (order_id) REFERENCES orders(order_id)
);

INSERT INTO `orders` ( `order_id`, `customer_id`, `orderdate`) VALUES 
('4', '1', '2022-04-29 14:45:47'),
('5', '1', '2022-03-28 16:45:47');

INSERT INTO `orderline` (`order_id`, `row_id`, `product_id`, `amount`) VALUES 
('4', '1','1','3'), 
('5', '2','2','4');
