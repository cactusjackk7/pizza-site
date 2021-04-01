
INSERT INTO sopranos.menuitems(naam, omschrijving, foto) VALUES
('hawai', 'met ananas', '1.jpeg'),
('margarita', 'dit dus', '2.jpeg'),
('salami', 'pikant', '3.png'),
('one size', 'geen keuze', '4.jpeg');
INSERT INTO sopranos.producten(id, menuitem, formaat, prijs) VALUES
(1, 'hawai', 'small', 3.50),
(2, 'hawai', 'medium', 5.00),
(3, 'hawai', 'calzone', 6.00),
(4, 'margarita', 'small', 3.00),
(5, 'margarita', 'medium', 4.50),
(6, 'margarita', 'large', 5.50),
(7, 'salami', 'small', 3.25),
(8, 'salami', 'medium', 5.25),
(9, 'salami', 'calzone', 6.25),
(10, 'one size', '1 maat', 9.99);



CREATE TABLE sopranos.menuitems (
naam VARCHAR(45) NOT NULL,
omschrijving VARCHAR(255),
foto VARCHAR(255),
PRIMARY KEY (naam)
);
CREATE TABLE sopranos.producten (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
menuitem VARCHAR(45) NOT NULL,
formaat VARCHAR(30),
prijs DECIMAL(4,2),
PRIMARY KEY(id),
FOREIGN KEY (menuitem)
REFERENCES sopranos.menuitems (naam)
ON DELETE RESTRICT
);
