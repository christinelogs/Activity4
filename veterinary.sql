CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals(
	animalid INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	species VARCHAR(50) NOT NULL,
	breed VARCHAR(50) NOT NULL,
	dateofbirth DATE,
	gender VARCHAR(10) NOT NULL,
	color VARCHAR(50) NOT NULL,
	ownerid INT,
	FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);