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

