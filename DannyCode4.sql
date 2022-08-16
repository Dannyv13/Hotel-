USE hotel;


CREATE TABLE employeeType (
ID INT(7) NOT NULL AUTO_INCREMENT,
type VARCHAR(90) NOT NULL   Unique,
PRIMARY KEY (ID)
);


CREATE TABLE cityState (
city VARCHAR(90) NOT NULL ,
state CHAR(2) NOT NULL ,
zipCode CHAR(5) NOT NULL   UNIQUE ,
PRIMARY KEY(zipCode) 
);


Insert into employeeType ( type)
SELECT distinct empType
FROM employee;

INSERT INTO cityState 
SELECT distinct city,state,zipCode
FROM customer;


UPDATE employee
SET empType = 1
WHERE empType = 'General Manager';

UPDATE employee
SET empType = 2
WHERE empType = 'Front Office Manager';

UPDATE employee
SET empType = 3
WHERE empType = 'Concierge';

UPDATE employee
SET empType = 4
WHERE empType = 'Guest Service Agent';

UPDATE employee
SET empType = 5
WHERE empType = 'Van Driver';

UPDATE employee
SET empType = 6
WHERE empType = 'Security';

UPDATE employee
SET empType = 7
WHERE empType = 'Sales Director';

UPDATE employee
SET empType = 8
WHERE empType = 'Sales Manager';

UPDATE employee
SET empType = 9
WHERE empType = 'Catering Assistant';

UPDATE employee
SET empType = 10
WHERE empType = ' Executive Housekeeper';

UPDATE employee
SET empType = 11
WHERE empType = 'Houseperson';

ALTER TABLE employee
MODIFY COLUMN empType INT(7) NOT NULL;

ALTER TABLE employee 
ADD FOREIGN KEY (empType) REFERENCES employeeType (ID);

ALTER TABLE customer
ADD FOREIGN KEY (zipCode) REFERENCES cityState (zipCode);

ALTER TABLE customer
DROP COLUMN city;

ALTER TABLE customer
DROP COLUMN state;





