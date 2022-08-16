CREATE DATABASE hotel;

USE hotel;

CREATE TABLE employee (
	ID INT(10) NOT NULL auto_increment,
    firstName VARCHAR(10) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    login VARCHAR(25) NOT NULL,
     password TEXT NOT NULL,
     empType VARCHAR(25) NOT NULL,
     email VARCHAR(90) NOT NULL,
     PRIMARY KEY(ID)
);

CREATE TABLE customer (
	ID INT(10) NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastNaME VARCHAR(50) NOT NULL,
    address VARCHAR(90) NOT NULL,
    city VARCHAR(90) NOT NULL,
    state CHAR(2) NOT NULL,
    zipCode CHAR(10) NOT NULL,
    phone CHAR(10) NOT NULL,
    email VARCHAR(90) NOT NULL,
    idProof TEXT NOT NULL,
    PRIMARY KEY(ID)
);

CREATE TABLE item (
	ID INT(10) NOT NULL AUTO_INCREMENT,
    itemType VARCHAR(25) NOT NULL,
    itemName TEXT NOT NULL,
    itemCost float(10, 2) NOT NULL,
    itemDetails TEXT NOT NULL,
    PRIMARY KEY(ID)
);

CREATE TABLE roomType (
	ID INT(10) NOT NULL AUTO_INCREMENT,
    roomType VARCHAR(100) NOT NULL,
    roomNumber VARCHAR(10) NOT NULL,
    description TEXT NOT NULL,
    cost FLOAT(10, 2) NOT NULL,
    PRIMARY KEY(ID)
);