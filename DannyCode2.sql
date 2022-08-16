
USE hotel;

CREATE TABLE room(
	ID INT(10) NOT NULL auto_increment,
	roomTypeId INT(10) NOT NULL,
    roomNumber VARCHAR(10) NOT NULL,
    description TEXT NOT NULL,
     PRIMARY KEY(ID),
     FOREIGN KEY (roomTypeId) REFERENCES roomType (ID)
);

CREATE TABLE expense (
	ID INT(10) NOT NULL AUTO_INCREMENT,
    employeeId INT(10) NOT NULL,
    expenseType VARCHAR(20) NOT NULL,
    description TEXT NOT NULL,
    expenseAmount float(10, 2) NOT NULL,
	expenseDate DATE NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY (employeeId) REFERENCES employee (ID)
);

CREATE TABLE booking (
	ID INT(10) NOT NULL AUTO_INCREMENT,
    roomId INT(10) NOT NULL,
    customerId INT(10) NOT NULL,
    bookingDate DATE NOT NULL,
    checkIn DATETIME NOT NULL,
    checkOut DATETIME NOT NULL,
    status VARCHAR(10) NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY (roomId) REFERENCES room (ID),
    FOREIGN KEY (customerId) REFERENCES customer (ID)
);

