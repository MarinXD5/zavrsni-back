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
<<<<<<< HEAD
  `name` longtext DEFAULT NULL,
=======
  `name` VARCHAR(255) DEFAULT NULL,
>>>>>>> 10c0e0d8cbc9616708b138d1e7e934819795b49f
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
<<<<<<< HEAD
-- Categories
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('LAPTOPS');
INSERT INTO product_category(category_name) VALUES ('DESKTOPS');
INSERT INTO product_category(category_name) VALUES ('MOBILE PHONES');
INSERT INTO product_category(category_name) VALUES ('TABLETS');
INSERT INTO product_category(category_name) VALUES ('SMART WATCHES');
INSERT INTO product_category(category_name) VALUES ('COMPONENTS');


-- -------------------------------------------------------
-- LAPTOPS
-- -------------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('LAPTOP-WORK-0000', 'Notebook Acer TravelMate Spin B3, NX.VN2EX.005, 11.6" FHD IPS, Intel Celeron N4120 up to 2.6GHz, 4GB DDR4, 64GB SSD, Intel UHD Graphics 600, Win 10', 'Work Laptop 0',
'assets/images/products/acer-prijenosno-racunalo-tmb311rn-31-c0u1-nxvn2ex005-69131-0852726_1.png'
,0,100,262.20,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('LAPTOP-WORK-0001', 'Notebook Acer Extensa 15, NX.EG9EX.01W, 15.6" FHD IPS, AMD Ryzen 3 3250U up to 3.5GHz, 8GB DDR4, 256GB SSD, AMD Radeon Graphics, no OS', 'Work Laptop 1',
'assets/images/products/notebook-acer-aspire-3-nxeg9ex01w-156-fhd-ips-amd-ryzen-3-32-76018-0001277336_1.png'
,1,100,434.81,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('LAPTOP-WORK-0002', 'Notebook Dell Vostro 3525, 15.6" FHD IPS, AMD Ryzen 5 5625U up to 4.3GHz, 8GB DDR4, 512GB NVMe SSD, AMD Radeon Graphics, Win 11 Pro', 'Work Laptop 2',
'assets/images/products/notebook-dell-vostro-3525-n1005vnb3525em-0001272364_1.png'
,1,100,935.48,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('LAPTOP-WORK-0003', 'Notebook Asus ExpertBook B1, B1500CEAE-BQ3072, 15.6" FHD IPS, Intel Core i5 1135G7 up to 4.2GHz, 8GB DDR4, 256GB NVMe SSD, Intel Iris Xe Graphics, no OS', 'Work Laptop 3',
'assets/images/products/notebook-asus-expertbook-b1-b1500ceae-bq-asu-b1500-bq027r_1.png'
,1,100,29.99,1, NOW());

-- -------------------------------------------------------
-- DESKTOPS
=======
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
>>>>>>> 10c0e0d8cbc9616708b138d1e7e934819795b49f
-- -------------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
<<<<<<< HEAD
VALUES ('DESKTOP-1000', 'Računalo INSTAR Gamer Iris, Intel Core i3 10105F up to 4.40GHz, 8GB DDR4, 250GB NVMe SSD, NVIDIA GeForce GTX1650 4GB, no ODD', 'DESKTOP INTEL',
'assets/images/products/racunalo-instar-gamer-iris-intel-core-i3-10105f-up-to-440ghz-52835-10105f-iri-ssd250-1650_144900.png'
,1,100,585.00,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DESKTOP-1001', 'Računalo INSTAR Gamer Alpha Xplode, Intel Core i5 13400F up to 4.6GHz, 16GB DDR4, 1TB NVMe SSD, NVIDIA GeForce GTX1660 SUPER 6GB, no ODD', 'DESKTOP INTEL',
'assets/images/products/racunalo-instar-gamer-alpha-xplode-intel-core-i5-13400f-up-t-84829-13400f-alp-ssd1tb-1660s_191298.png'
,1,100,999.00,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DESKTOP-1002', 'Računalo INSTAR Gamer Iris, AMD Ryzen 3 4100 up to 4.0GHz, 8GB DDR4, 250GB NVMe SSD, NVIDIA GeForce GTX1650 4GB, no ODD', 'DESKTOP AMD',
'assets/images/products/racunalo-instar-gamer-iris-amd-ryzen-3-4100-up-to-40ghz-8gb--72726-4100-iri-ssd250-1650_161688.png'
,1,100,589.00,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DESKTOP-1003', 'Računalo Lenovo Gaming Legion T5, 90RC01ASXT, AMD Ryzen 7 5800 up to 4.6GHz, 16GB DDR4, 1TB NVMe SSD + 1TB HDD, NVIDIA GeForce RTX3060Ti 8GB, no OS', 'DESKTOP AMD',
'assets/images/products/racunalo-lenovo-gaming-legion-t5-90rc01a-len-pc-90rc01asxt_1.png'
,1,100,1680.87,2, NOW());

-- -------------------------------------------------------
-- MOBILE PHONES
=======
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
>>>>>>> 10c0e0d8cbc9616708b138d1e7e934819795b49f
-- -------------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
<<<<<<< HEAD
VALUES ('MOBILE-PHONE-1000', 'Mobitel Apple iPhone SE (2022), 64GB, Starlight', 'iPhone',
'assets/images/products/mobitel-apple-iphone-se-2022-64gb-starli-ins-58693_1.png'
,1,10,609.00,3, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('MOBILE-PHONE-1001', 'Mobitel Xiaomi Redmi A1, 6.52", 2GB RAM, 32GB Memorija, Light Blue', 'Xiaomi',
'assets/images/products/mobitel-xiaomi-redmi-a1-652-2gb-ram-32gb-ins-58815-19648_1.png'
,1,52,99.00,3, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('MOBILE-PHONE-1002', 'Mobitel Samsung Galaxy A04s, 6.5" 90Hz, 3GB RAM, 32GB Memorija, 4G, Crni', 'Samsung',
'assets/images/products/mobitel-samsung-galaxy-a04s-65-3gb-ram-32gb-memorija-4g-crni-90636-sam-sm-a047-bl_1.png'
,1,13,139.90,3, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('MOBILE-PHONE-1003', 'Mobitel Oppo A96, 6.59" 90Hz, 6GB RAM, 128GB Memorija, Starry Black', 'Oppo',
'assets/images/products/mobitel-oppo-a96-659-90hz-6gb-ram-128gb--0001276020_1.png'
,1,6,219.00,3, NOW());

-- -------------------------------------------------------
-- TABLETS
=======
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
>>>>>>> 10c0e0d8cbc9616708b138d1e7e934819795b49f
-- -------------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
<<<<<<< HEAD
VALUES ('TABLET-1000', 'Tablet Apple iPad Pro (2022) WiFi, 11", 128GB Memorija, Space Grey', 'iPad Pro',
'assets/images/products/tablet-apple-ipad-pro-2022-wifi-11-128gb-memorija-space-grey-297-mnxd3_1.png'
,1,100,1149.00,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TABLET-1001', 'Tablet Apple iPad (2022) WiFi, 10.9", 64GB Memorija, Silver', 'iPad',
'assets/images/products/tablet-apple-ipad-2022-wifi-109-64gb-memorija-silver-15959-mpq03a_1.png'
,1,100,629.00,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TABLET-1002', 'Tablet Vivax TPC-105, 10.1" 1280x800px, Quad-Core 1.3GHz, 3GB RAM, 32GB Memorija, 4G/LTE, WiFi 5, Bluetooth 4.0, Android 9, Crni', 'Vivax',
'assets/images/products/vivax-tablet-tpc-105-4g-0001230159_1.png'
,1,100,135.38,4, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TABLET-1003', 'ablet Lenovo Tab M8 (3rd Gen), ZA870159GR, 8" 1280x800px IPS Touch, Octa-Core 2.3GHz, 3GB DDR4 RAM, 32GB eMMC Memorija, WiFi 5, Bluetooth 5.0, Android 11, Iron Grey', 'Lenovo',
'assets/images/products/tablet-lenovo-tab-m8-3rd-gen-za5h0016bg--len-tab-za870159gr_1.png'
,1,100,158.18,4, NOW());

-- -------------------------------------------------------
-- SMART WATCHES
-- -------------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('SMART-WATCH-1000', 'Pametni sat Apple Watch SE (2022) GPS, 40mm, Midnight Aluminium Case with Midnight Sport Band', 'Apple Smart Watch',
'assets/images/products/pametni-sat-apple-watch-se-2022-40mm-mid-mnjt3bs_1.png'
,1,100,319.00,5, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('SMART-WATCH-1001', 'Pametni sat Apple Watch SE (2022) GPS, 44mm, Midnight Aluminium Case with Midnight Sport Band', 'Apple Smart Watch',
'assets/images/products/pametni-sat-apple-watch-se-2022-44mm-mid-mnjt3bs-20521_1.png'
,1,100,349.99,5, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('SMART-WATCH-1002', 'Pametni sat Samsung Galaxy Watch 4 LTE, 44mm, Crni', 'Samsung Galaxy Smart Watch',
'assets/images/products/pametni-sat-samsung-galaxy-watch-4-lte-44mm-crni-81990-sam-sat-sm-r875-bl_190069.png'
,1,100,199.00,5, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('SMART-WATCH-1003', 'Pametni sat Samsung Galaxy Watch 5, 40mm, Grafitni', 'Samsung Galaxy Smart Watch',
'assets/images/products/pametni-sat-samsung-galaxy-watch-5-44mm--sm-r910nzbaeue-18964_1.png'
,1,100,278.59,5, NOW());

-- -------------------------------------------------------
-- COMPONENTS
-- -------------------------------------------------------

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('COMPONENTS-1000', 'Procesor Intel Core i3-10100F (3.6GHz, 6MB, LGA1200), BX8070110100F', 'INTEL processor',
'assets/images/products/procesor-intel-core-i3-10100f-36ghz-6mb--inp-000151_3.png'
,1,100,96.75,6, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('COMPONENTS-1001', 'Procesor Intel Core i3-12100F (4.3GHz, 12MB, LGA1700), BX8071512100F', 'INTEL processor',
'assets/images/products/procesor-intel-core-i3-12100f-43ghz-12mb-inp-000228_1.png'
,1,100,139.23,6, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('COMPONENTS-1002', 'Grafička Gigabyte GeForce RTX3060 Eagle, 12GB GDDR6', 'NVIDIA graphics card',
'assets/images/products/graficka-gigabyte-nvidia-geforce-rtx3060-eagle-12gb-gddr6-50515-gv-n3060eagle-12gd20_1.png'
,1,100,449.00,6, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('COMPONENTS-1003', 'Grafička Gainward GeForce GT710 SilentFX, 2GB DDR3', 'NVIDIA graphics card',
'assets/images/products/gainward-gf-gt710-2gb-ddr3-silentfx-89290-gai-710-2gb3_1.png'
,1,100,79.71,6, NOW());
=======
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
>>>>>>> 10c0e0d8cbc9616708b138d1e7e934819795b49f
