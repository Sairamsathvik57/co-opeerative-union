-- Granting privileges
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

-- Setting the password
ALTER USER 'root'@'%' IDENTIFIED BY 'password';

-- Refresh privileges
FLUSH PRIVILEGES;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(512) NOT NULL,
  `producer` VARCHAR(255) NOT NULL,
  `image` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE products MODIFY id INT AUTO_INCREMENT;

INSERT INTO `products` (`name`, `producer`, `image`) VALUES
  ('Milk', 'Dairy Farmers Co.', 'images/milk.jpg'),
  ('Yogurt', 'Healthy Dairy', 'images/yogurt.jpg'),
  ('Sunflower Oil', 'Organic Oils Ltd.', 'images/sunflower_oil.jpg'),
  ('Buttermilk', 'Natural Dairy', 'images/buttermilk.jpg'),
  ('Tea Special Milk', 'Amul', 'images/tea_special_milk.jpg'),
  ('GroundNut Oil', 'Tea Farmers Union', 'images/groundnut.jpg'),
  ('Coconut Oil', 'Tea Farmers Union', 'images/coconut.jpg'),
  ('Shakti Milk', 'Amul', 'images/shakti.jpg'),
  ('Gold Milk', 'Amul', 'images/gold.jpg'),
  ('Butter', 'Amul', 'images/butter.jpg'),
  ('Sun Gold Oil', 'KOF', 'images/sungold.jpg'),
  ('Masti Dahi', 'Amul', 'images/masti.jpg');


ALTER TABLE products AUTO_INCREMENT = 6;  -- or the next available number

ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
