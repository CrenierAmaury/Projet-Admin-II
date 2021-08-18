CREATE TABLE jouets (id INTEGER NOT NULL AUTO_INCREMENT, nom varchar(40) NOT NULL, prix INTEGER NOT NULL, CONSTRAINT pk_jouets PRIMARY KEY(id));

INSERT INTO jouets (nom, prix)
VALUE ('cheval', 10), ('voiture', 15), ('puissance 4', 25);
