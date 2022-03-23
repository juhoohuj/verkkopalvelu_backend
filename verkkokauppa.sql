
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
);

INSERT INTO `product` (`id`, `name`, `price`, `image`, `category`) VALUES
(1, 'Test item', 100, '3', NULL),
(2, 'Näyttö', 200, '4', NULL),
(3, 'Test item', 120, '4', NULL),
(4, 'Kannettava', 120, '3', NULL),
(5, 'Kone', 1200, '3', NULL);

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (id)
);


INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Kannettavat'),
(2, 'Pelitietokoneet'),
(3, 'Näytöt');
