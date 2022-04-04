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
(5, 'Kone', 1200, '4', 1);

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
