-- database voor soprano's --
CREATE TABLE customer (
   customer_id SERIAL ,
   name VARCHAR ,
   address VARCHAR ,
   phone_num VARCHAR ,
   payment_meth TEXT ,
   PRIMARY KEY (customer_id)
);

CREATE TABLE card_join (
   customer_id INTEGER , 
   card_id INTEGER
);

CREATE TABLE orders_join (
	customer_id  INTEGER ,
	orders_id INTEGER

);

CREATE TABLE card (
	id  SERIAL ,
	card_num VARCHAR ,
	PRIMARY KEY (id)

);

CREATE TABLE orders(
	id  SERIAL ,
	orders_date TIMESTAMP ,
	PRIMARY KEY (id)
);

CREATE TABLE pizza_data (
   pizza_data_id SERIAL ,
   size VARCHAR ,
   type VARCHAR ,
   price DECIMAL ,
   happy_hour BOOLEAN NOT NULL DEFAULT 'False' ,
   PRIMARY KEY (pizza_data_id)
);

CREATE TABLE pizza_data_join (
   pizza_data_id INTEGER ,
   orders_id INTEGER
);

CREATE TABLE 
