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

INSERT INTO `product` (`id`, `name`, `price`, `image`, `category_id`) VALUES
(1, 'ASUS VivoBook', 700, '3', 1),
(2, 'Näyttö', 200, '2', 1),
(3, 'Test item', 120, '3', 2),
(4, 'Kannettava', 120, '1', 2),
(5, 'Kone', 1200, '4', 1),
(6, 'DACOTA PLATINUM USB-C VERKKOVIRTALATURI', 15, 'DACOTA PLATINUM USB-C VERKKOVIRTALATURI', 8), 
(7, 'HyperX Cloud Alpha S -pelikuulokkeet', 100, 'HyperX Cloud Alpha S -pelikuulokkeet', 6),
(8, 'HyperX Pulsefire Core RGB -pelihiiri', 60, 'HyperX Pulsefire Core RGB -pelihiiri', 4),
(9, 'XM1 RGB Pelihiiri', 50, 'XM1 RGB Pelihiiri', 4),
(10, 'Deltaco taipuisa HDMI uros-naaras sovitin kulmaliittimellä', 15, 'Deltaco taipuisa HDMI uros-naaras sovitin kulmaliittimellä', 7),
(11, 'Hama 3.5 mm adapteri kuulokkeille ja mikrofonille', 10, 'Hama 3.5 mm adapteri kuulokkeille ja mikrofonille', 7),
(12, 'Lenovo USB-C to Ethernet Adapter', 20, 'Lenovo USB-C to Ethernet Adapter', 8),
(13, 'Next MX5 Mini pelinäppäimistö', 75, 'Next MX5 Mini pelinäppäimistö', 5),
(14, 'Pelihiiri Prototype GM-670L', 35, 'Pelihiiri Prototype GM-670L', 4),
(15, 'Penguin pystyhiiri', 79, 'Penguin pystyhiiri', 4),
(16, 'Razer Kraken Kitty - Pinkki', 100, 'Razer Kraken Kitty - Pinkki', 6),
(17, 'Samsung Odyssey G3 S24AG300 pelinäyttö', 400, 'Samsung Odyssey G3 S24AG300 pelinäyttö', 3),
(18, 'Steelseries Arctis 3 White pelikuulokkeet', 120, 'Steelseries Arctis 3 White pelikuulokkeet', 6);


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
