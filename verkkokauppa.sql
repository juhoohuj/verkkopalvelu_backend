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
  PRIMARY KEY (id),
  FOREIGN KEY (category_id) REFERENCES category(id)
);

INSERT INTO `product` (`name`, `price`, `image`, `category_id`) VALUES
('DACOTA PLATINUM USB-C VERKKOVIRTALATURI', 15, 'DACOTA PLATINUM USB-C VERKKOVIRTALATURI', 8), 
('HyperX Cloud Alpha S -pelikuulokkeet', 100, 'HyperX Cloud Alpha S -pelikuulokkeet', 6),
('HyperX Pulsefire Core RGB -pelihiiri', 60, 'HyperX Pulsefire Core RGB -pelihiiri', 4),
('XM1 RGB Pelihiiri', 50, 'XM1 RGB Pelihiiri', 4),
('Deltaco taipuisa HDMI uros-naaras sovitin kulmaliittimellä', 15, 'Deltaco taipuisa HDMI uros-naaras sovitin kulmaliittimellä', 7),
('Hama 3.5 mm adapteri kuulokkeille ja mikrofonille', 10, 'Hama 3.5 mm adapteri kuulokkeille ja mikrofonille', 7),
('Lenovo USB-C to Ethernet Adapter', 20, 'Lenovo USB-C to Ethernet Adapter', 8),
('Next MX5 Mini pelinäppäimistö', 75, 'Next MX5 Mini pelinäppäimistö', 5),
('Pelihiiri Prototype GM-670L', 35, 'Pelihiiri Prototype GM-670L', 4),
('Penguin pystyhiiri', 79, 'Penguin pystyhiiri', 4),
('Razer Kraken Kitty - Pinkki', 100, 'Razer Kraken Kitty - Pinkki', 6),
('Samsung Odyssey G3 S24AG300 pelinäyttö', 400, 'Samsung Odyssey G3 S24AG300 pelinäyttö', 3),
('Steelseries Arctis 3 White pelikuulokkeet', 120, 'Steelseries Arctis 3 White pelikuulokkeet', 6),
('DeLock HDMI 2 - 1 kytkin, kaksisuuntainen, 4K 60Hz, musta', 40, 'DeLock HDMI 2 - 1 kytkin, kaksisuuntainen, 4K 60Hz, musta', 8),
('Deltaco DisplayPort - DVI-D Single Link sovitin, 20-pin uros - 24+1-pin naaras, 0,17m, musta', 15, 'Deltaco DisplayPort - DVI-D Single Link sovitin, 20-pin uros - 24+1-pin naaras, 0,17m, musta', 8),
('Deltaco USB 3.0 - SATA 6Gbs sovitin, 2.5 kiintolevylle, musta', 20, 'Deltaco USB 3.0 - SATA 6Gbs sovitin, 2.5 kiintolevylle, musta', 8),
('Corsair Harpoon RGB PRO, optinen pelihiiri', 40, 'Corsair Harpoon RGB PRO, optinen pelihiiri', 4),
('BenQ ZOWIE EC2 -pelihiiri, 3200 DPI, musta', 70, 'BenQ ZOWIE EC2 -pelihiiri, 3200 DPI, musta', 4),
('Cooler Master MasterMouse MM710, optinen pelihiiri', 50, 'Cooler Master MasterMouse MM710, optinen pelihiiri', 4),
('Deltaco DVI monitorikaapeli Dual Link, DVI-D uros - uros, 2m', 10, 'Deltaco DVI monitorikaapeli Dual Link, DVI-D uros - uros, 2m', 7),
('Deltaco USB 2.0 jatkokaapeli A-A u-n, 5m, musta', 10, 'Deltaco USB 2.0 jatkokaapeli A-A u-n, 5m, musta', 7),
('Deltaco DisplayPort - DVI-D Single Link monitorikaapeli, 20-pin uros - 24+1-pin uros, 2m, musta', 15, 'Deltaco DisplayPort - DVI-D Single Link monitorikaapeli, 20-pin uros - 24+1-pin uros, 2m, musta', 7),
('Deltaco DisplayPort - DisplayPort, 20-pin u-u, 2 m', 15, 'Deltaco DisplayPort - DisplayPort, 20-pin u-u, 2 m', 7),
('Deltaco SATA-kaapeli, SATA 6Gbs, lukkoklipsi suora-suora, musta, 0,5m', 10, 'Deltaco SATA-kaapeli, SATA 6Gbs, lukkoklipsi suora-suora, musta, 0,5m', 7),
('JBL Quantum 400 -pelikuulokkeet mikrofonilla, musta', 50, 'JBL Quantum 400 -pelikuulokkeet mikrofonilla, musta', 6),
('HyperX QuadCast -mikrofoni', 200, 'HyperX QuadCast -mikrofoni', 6),
('Blue Yeti, USB-pöytämikrofoni, Blackout', 250, 'Blue Yeti, USB-pöytämikrofoni, Blackout', 6),
('Lenovo 14 ThinkPad E14, kannettava tietokone, musta', 500, 'Lenovo 14 ThinkPad E14, kannettava tietokone, musta', 1),
('Lenovo 14 V14, kannettava tietokone, raudanharmaa', 699, 'Lenovo 14 V14, kannettava tietokone, raudanharmaa', 1),
('HP 11,6 ChromeBook 11 G8, kannettava tietokone, Chalkboard Gray', 1200, 'HP 11,6 ChromeBook 11 G8, kannettava tietokone, Chalkboard Gray', 1),
('HP 15,6 255 G8, kannettava tietokone, tumma tuhkanhopea', 700, 'HP 15,6 255 G8, kannettava tietokone, tumma tuhkanhopea', 1),
('Asus 17,3 ROG Strix G17 G713QR, kannettava pelitietokone, Eclipse Gray', 1800, 'Asus 17,3 ROG Strix G17 G713QR, kannettava pelitietokone, Eclipse Gray', 2),
('Logitech G513 Carbon, mekaaninen pelinäppäimistö RGB-valoin', 200, 'Logitech G513 Carbon, mekaaninen pelinäppäimistö RGB-valoin', 5),
('Deltaco Gaming GAM-075, mekaaninen pelinäppäimistö', 69, 'Deltaco Gaming GAM-075, mekaaninen pelinäppäimistö', 5),
('SteelSeries PrismCAPS White -näppäinhattusarja, Nordic, valkoinen', 90, 'SteelSeries PrismCAPS White -näppäinhattusarja, Nordic, valkoinen', 5),
('SilentiumPC SPC Gear GK630K Tournament Kailh Red RGB, mekaaninen pelinäppäimistö', 120, 'SilentiumPC SPC Gear GK630K Tournament Kailh Red RGB, mekaaninen pelinäppäimistö', 5),
('Logitech G915 TKL, langaton mekaaninen LIGHTSPEED-RGB -pelinäppäimistö', 120, 'Logitech G915 TKL, langaton mekaaninen LIGHTSPEED-RGB -pelinäppäimistö', 5),
('Acer 31,5 Nitro ED320QR P, 165Hz kaareva Full HD -pelimonitori', 250, 'Acer 31,5 Nitro ED320QR P, 165Hz kaareva Full HD -pelimonitori', 3),
('Lenovo 23 ThinkVision T23i-20, Full HD -monitori', 199, 'Lenovo 23 ThinkVision T23i-20, Full HD -monitori', 3),
('Dell 27 E2720HS, Full HD -monitori, musta', 150, 'Dell 27 E2720HS, Full HD -monitori, musta', 3),
('Acer 24,5 Predator X25, 360Hz Full HD -pelimonitori', 600, 'Acer 24,5 Predator X25, 360Hz Full HD -pelimonitori', 3),
('MSI 27 Optix G273QF, 165Hz WQHD-pelimonitori', 270, 'MSI 27 Optix G273QF, 165Hz WQHD-pelimonitori', 3),
('Asus 27 TUF Gaming VG279QR, 165Hz Full HD -pelimonitori', 200, 'Asus 27 TUF Gaming VG279QR, 165Hz Full HD -pelimonitori', 3),
('Asus ROG Strix GL10 G10DK -pelitietokone', 1500, 'Asus ROG Strix GL10 G10DK -pelitietokone', 2),
('Acer Nitro 50-620 -pelitietokone, musta', 800, 'Acer Nitro 50-620 -pelitietokone, musta', 2);




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

INSERT INTO `orders` (`customer_id`, `orderdate`) VALUES 
('1', '2022-04-29 14:45:47'),
('1', '2022-03-28 16:45:47');

CREATE TABLE `orderline` (
  `order_id` int NOT NULL,
  `row_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `amount` int,
  PRIMARY KEY (row_id),
  FOREIGN KEY (product_id) REFERENCES product(id),
 FOREIGN key (order_id) REFERENCES orders(order_id)
);

INSERT INTO `orderline` (`order_id`, `row_id`, `product_id`, `amount`) VALUES 
('4', '1','1','3'), 
('5', '2','2','4');
