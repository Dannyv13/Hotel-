use hotel;

update booking set checkOut= '2021-12-28' where checkIn='2021-12-23' ;

DELIMITER $$

DROP PROCEDURE IF EXISTS getCustomerTotal$$
CREATE PROCEDURE getCustomerTotal (IN customerLastName VARCHAR(100), 
INOUT invoice VARCHAR(4000))

BEGIN

	DECLARE v_finished INT DEFAULT 0;
    DECLARE v_customerName VARCHAR(100) DEFAULT "";
    DECLARE v_checkIn DATETIME;
    DECLARE v_checkOut DATETIME;
    DECLARE v_roomNumber INT DEFAULT 0;
    DECLARE v_cost FLOAT(10,2) DEFAULT 0.0;
    DECLARE v_days INT DEFAULT 0;
    DECLARE v_total FLOAT(10,2) DEFAULT 0.0;
    
DECLARE customerBillCursor CURSOR FOR

SELECT concat(c.firstName, ' ', c.lastName), b.checkIn, b.checkOut, r.roomNumber, rt.cost
from customer c, room r, roomType rt, booking b
WHEre c.lastName = customerLastName
and b.customerId = c.Id
And b.roomId = r.id
and r.roomTypeId = rt.id;

DECLARE CONTINUE HANDLER 
	FOR NOT FOUND SET v_finished = 1;
    
SET invoice = CONCAT(invoice, "Customer Name		", "Room Number		", "Check In		", "Check Out		", "Daily Rate		", "Nights		", "Total\n");

Open customerBillCursor;

getCharges: LOOP

FETCH customerBillCursor INTO v_customerName, v_checkIn, v_checkOut, v_roomNumber,v_cost;

if v_finished = 1 THEN
	LEAVE getCharges;
END IF;


SET v_days = DATEDIFF(v_checkOut, v_checkIn);
SET v_total = v_cost * V_days;

SET invoice = CONCAT(invoice, v_CustomerName, v_roomNumber, v_checkIn, v_checkOut, v_cost, v_days, v_total, '\n');

END LOOP getCharges;

CLOSE customerBillCursor;

END$$

DELIMITER ;


SET @invoice = "";
CALL getCustomerTotal("Chambers", @invoice);
SELECT @invoice;

SET @invoice = "";
CALL getCustomerTotal("Esparza", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Gonzalez", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Goodman", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Guthrie", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Kaiser", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Kelly", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Lindsey", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Mackenzie", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Mckee", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Melia", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Rennie", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Solis", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Squires", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("Waters", @invoice);
SELECT @invoice;
SET @invoice = "";

CALL getCustomerTotal("White", @invoice);
SELECT @invoice;
SET @invoice = "";




