-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- USE DATABASE
USE ecommerce_db;

-- CREATE TABLE Categories
CREATE TABLE Categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(255) NOT NULL
);

-- CREATE TABLE Products
CREATE TABLE Products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  stock INT NOT NULL DEFAULT 10,
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES Categories(id)
);

-- CREATE TABLE Tags
CREATE TABLE Tags (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(255)
);

-- CREATE TABLE ProductTags
CREATE TABLE ProductTags (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  tag_id INT,
  FOREIGN KEY (product_id) REFERENCES Products(id),
  FOREIGN KEY (tag_id) REFERENCES Tags(id)
);