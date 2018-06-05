use Haze_Vape_DB;



DROP TABLE IF EXISTS roles;
CREATE TABLE IF NOT EXISTS roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)

);

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)

);


DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  brand VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  discription VARCHAR(500) NOT NULL,
  price DECIMAL(6, 4) NOT NULL,
  size VARCHAR(255),
  mg INT(3),
  ml INT(3),
  batteries VARCHAR(255),
  stocker INT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (stocker) REFERENCES users(id)

);


CREATE TABLE reviews (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  review VARCHAR(512) NOT NULL,
  product_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES products(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

