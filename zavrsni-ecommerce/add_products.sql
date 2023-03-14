-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `zavrsnidb`;

CREATE SCHEMA `zavrsnidb`;
USE `zavrsnidb` ;

-- -----------------------------------------------------
-- Table `zavrsnidb`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zavrsnidb`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `zavrsnidb`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zavrsnidb`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('BOOKS');
INSERT INTO product_category(category_name) VALUES ('COFFEE MUGS');
INSERT INTO product_category(category_name) VALUES ('MOUSE PADS');
INSERT INTO product_category(category_name) VALUES ('LUGGAGE TAGS');


-- -------------------------------------------------------
-- Books
-- -------------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1000', 'JavaScript - The Fun Parts', 'Learn JavaScript',
'assets/images/products/placeholder.png'
,1,100,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1001', 'Spring Framework Tutorial', 'Learn Spring',
'assets/images/products/placeholder.png'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1002', 'Kubernetes - Deploying Containers', 'Learn Kubernetes',
'assets/images/products/placeholder.png'
,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1003', 'Internet of Things (IoT) - Getting Started', 'Learn IoT',
'assets/images/products/placeholder.png'
,1,100,29.99,1, NOW());

-- -------------------------------------------------------
-- Coffee Mugs
-- -------------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('COFFEE-MUG-1000', 'Best Programmer ever :P', 'Best Programmer ever mug',
'assets/images/products/placeholder.png'
,1,100,9.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('COFFEE-MUG-1001', '6 digits pay', '6 digits pay mug',
'assets/images/products/placeholder.png'
,1,100,9.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('COFFEE-MUG-1002', 'RedBull & Coffee <3', 'RedBull & Coffee <3 mug',
'assets/images/products/placeholder.png'
,1,100,9.99,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('COFFEE-MUG-1003', 'No-Life', 'No-Life mug',
'assets/images/products/placeholder.png'
,1,100,9.99,2, NOW());

-- -------------------------------------------------------
-- Mouse Pads
-- -------------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('MOUSE-PAD-1000', 'Dragon Ball Z', 'Dragon Ball Z mouse pad',
'assets/images/products/placeholder.png'
,1,100,14.99,3, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('MOUSE-PAD-1001', 'Avatar: The Last Airbender', 'Avatar: The Last Airbender mouse pad',
'assets/images/products/placeholder.png'
,1,100,14.99,3, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('MOUSE-PAD-1002', 'Purple original', 'Purple original mouse pad',
'assets/images/products/placeholder.png'
,1,100,14.99,3, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('MOUSE-PAD-1003', 'One piece', 'One piece mouse pad',
'assets/images/products/placeholder.png'
,1,100,14.99,3, NOW());

-- -------------------------------------------------------
-- Luggage Tags
-- -------------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('LUGGAGE-TAG-1000', 'Dont mind me, Im just a cool programmer', 'Dont mind me, Im just a cool programmer luggage tag',
'assets/images/products/placeholder.png'
,1,100,0.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('LUGGAGE-TAG-1001', '7 am gonna wake up', '7 am gonna wake up luggage tag',
'assets/images/products/placeholder.png'
,1,100,0.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('LUGGAGE-TAG-1002', 'Jesus take the wheel', 'Jesus take the wheel luggage tag',
'assets/images/products/placeholder.png'
,1,100,0.99,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('LUGGAGE-TAG-1003', 'Windows XP', 'luggage tag',
'assets/images/products/placeholder.png'
,1,100,0.99,4, NOW());
