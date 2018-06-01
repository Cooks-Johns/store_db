CREATE database Haze_Vape_DB;

DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS swagg;
DROP TABLE IF EXISTS juice;
DROP TABLE IF EXISTS mods;
DROP TABLE IF EXISTS roles;


CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

-- MERCH


CREATE TABLE stock (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  price DECIMAL(3, 2) NOT NULL,
  brand VARCHAR(100) NOT NULL,
  title VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE gear (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  price DECIMAL(3, 2) NOT NULL        title, price
  stock_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (stock_id) REFERENCES stock (id)
);

CREATE TABLE clothes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  price DECIMAL(3, 2) NOT NULL,
  size VARCHAR(100) NOT NULL,         title, price
  stock_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (stock_id) REFERENCES stock (id)
);

CREATE TABLE juice (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  brand VARCHAR(100) NOT NULL,
  title VARCHAR(255) NOT NULL,
  ml int(3) NOT NULL,
  price DECIMAL(3, 2) NOT NULL,
  mg VARCHAR(10),
  stock_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (stock_id) REFERENCES stock (id)
);

CREATE TABLE mods (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  brand VARCHAR(100) NOT NULL,
  title VARCHAR(255) NOT NULL,
  size int(3) NOT NULL,
  price DECIMAL(3, 2) NOT NULL,
  batteries VARCHAR(59),
  stock_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (stock_id) REFERENCES stock (id)
);

CREATE TABLE tanks (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  brand VARCHAR(100) NOT NULL,
  title VARCHAR(255) NOT NULL,
  size int(3) NOT NULL,
  price DECIMAL(3, 2) NOT NULL,
  stock_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (stock_id) REFERENCES stock (id)
);




INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('owner');
INSERT INTO roles (name) VALUES ('user');

INSERT INTO users (name, email, role_id, password) VALUES
  ('bob', 'bob@example.com', 1, 'pass'),
  ('joe', 'joe@example.com', 2, 'pass'),
  ('sally', 'sally@example.com', 3, 'pass'),
  ('adam', 'adam@example.com', NULL, 'pass'),
  ('jane', 'jane@example.com', 2, 'pass'),
  ('mike', 'mike@example.com', 1, 'pass')
  ;


  -- THINK A LIL HARDER ABOUT THIS

INSERT INTO  stock (title, price, brand) VALUES
  ('Hello World'),
  ('Goodbye World', NULL),
  ('JS Rocks ZOMG JS', 2),
  ('Jquery is pretty ok...', 2),
  ('npm is trickier...', 6),
  ('Java is my favorite!!!', 3),
  ('IntelliJ is A-OK', 5);

INSERT INTO  juice (brand, title, price, ml, mg, stock_id) VALUES
  ('day dream', 'cucumber', 19.95, '60', 0, 1),
  ('day dream', 'cucumber', 19.95, '60', 3, 2),
  ('day dream', 'cucumber', 19.95, '60', 6, 3),
  ('Frost Factory', 'Tropic Freez', 19.95, 100, 4),
  ('Frost Factory', 'Iced Chee', 9.95, 100, 5),
  ('Frost Factory', 'Crisp Apple', 19.95, 100, 6),
  ('Frost Factory', 'Lemon Glaze', 19.95, 100, 7)
  ;

-- SIZE
    --box
    --mech
    --salt

INSERT INTO  mods (brand, title, size, price, batteries, stock_id) VALUES
  ('Mi-Pod', 'mini', 'salt', 27.99, '300mAh', 1),
  ('Suorin Drop', 'Pod Vape', 'salt',27.99 , '300mAh', 2),
  ('Ovns', 'saber Pod', 'salt', 16.99, ' 400mAh', 43,

  ('Grip', 'VT100', 'box', 4.99, 'Removable 18650 or 26650 ', 4),
  ('Wismec', 'LUXOTIC BF', 69.99, 'removable 186500', 5),

  ('SMOK', 'Alien 220W', 99.99, 'Removable dual 18650 batteries', 6),
  ('SMOK', 'g-PRIV 22', 99.99, 'Adjustable settings', 7),
  ('SMOK', 'ALIEN MIN AL85', 64.99, 'Removable 18650', 8)
  ;

INSERT INTO clothes (brand, title, size, price) VALUES
  ('t-shirt', 'skull', 'xs', '25.95'),
  ('t-shirt', 'skull', 's', '25.95'),
  ('t-shirt', 'skull', 'm', '25.95'),
  ('t-shirt', 'skull', 'l', '25.95'),
  ('t-shirt', 'skull', 'xl', '25.95'),
  ('t-shirt', 'skull', 'xxl', '25.95'),
  ('t-shirt', 'skull', 'xxxl', '25.95')

  ;