-- TABLE
CREATE TABLE category (
	category_ID INT NOT NULL,
  	category_name VARCHAR(255),
  	PRIMARY KEY(category_ID)
);
CREATE TABLE customer (
	customer_ID INT NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    address_city VARCHAR(255),
 	PRIMARY KEY (customer_ID)
);
CREATE TABLE orders (
	order_ID INT NOT NULL,
  	order_number INT,
  	customer_ID INT,
    product_ID,
  	amount ID,
  	PRIMARY KEY (order_ID),
  	FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID),
  	FOREIGN KEY (product_ID) REFERENCES product(product_ID)
);
CREATE TABLE product (
	product_ID INT NOT NULL,
  	product_name VARCHAR(255),
  	category_ID INT,
  	price money,
  	PRIMARY KEY (product_ID),
  	FOREIGN KEY (category_ID) REFERENCES category(category_ID)
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
