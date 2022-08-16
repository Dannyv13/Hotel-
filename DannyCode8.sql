use hotel;

Create table status (
ID int(10) not null auto_increment,
status VARCHAR(30) not null unique,
Primary key(ID)
);

INSERT INTO status(status) Values 

("Confirmed"),
("6 PM Release"),
("Tentative"),
("Waitlist"),
("Turn away"),
("Cancelled"),
("No Show"),
("Group Confirmed"),
("Group Waitlist"),
("CC Guaranteed");

update booking 
set status = 2
where status = "6 PM Release";

update booking 
set status = 6
where status = "Cancelled";

update booking 
set status = 10
where status = "CC Guaranteed";

update booking 
set status = 1
where status = "Confirmed";

update booking 
set status = 8
where status = "Group Confirmed";

update booking 
set status = 9
where status = "Group Waitlist";

update booking 
set status = 7
where status = "No Show";

update booking 
set status = 3
where status = "Tentative";

update booking 
set status = 5
where status = "Turn away";

update booking 
set status = 4
where status = "Waitlist";

Alter table booking
modify column status int(7) not null;

ALTER TABLE booking 
ADD FOREIGN KEY (status) REFERENCES status(ID);

Create view bookingView as
 SELECT concat(c.firstName, " ", c.lastNaME) AS Customer ,r.roomNumber as "Room Number",b.checkIn as "Check In Date",b.checkOut as "Check Out Date", b.status as "Reservation Status"
 FROM Customer c,  booking b, room r
 where b.customerId = c.ID
 AND b.roomId = r.id
order by c.lastname;

Create View roomView as 
Select r.roomNumber, CONCAT(roomType,' ', r.description,' ', rt.description) as "Room Description" , cost as "Daily Rate" 
FROM roomType rt, room r
where r.roomTypeId = rt.ID
order by r.roomNumber;


Create view customerMail as
SELECT concat(c.firstName, " ", c.lastNaME) AS Customer, c.address as Address, cs.city as City, cs.state as state, c.zipCode as Zip
from customer c, citystate cs
where c.zipCode = cs.zipCode;

Create view customerEmail as 
SELECT concat(c.firstName, " ", c.lastNaME) AS Customer, c.email as "Email Address"
From customer c
order by c.lastName;


Create view employeeEmail as 
SELECT concat(e.firstName, " ", e.lastNaME) AS Employee, e.email as "Email Address"
From employee e
order by e.lastName;

Create view employeeList as 
SELECT concat(e.firstName, " ", e.lastNaME) AS Employee, et.type as Department
From employee e, employeeType et
where e.empType = et.ID
order by e.empType, e.lastName;






