CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Kannettavat'),
(2, 'Pelitietokoneet'),
(3, 'Näytöt');

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
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