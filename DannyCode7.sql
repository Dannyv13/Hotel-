

use hotel;

Alter table booking
modify column status varchar(30) not null;

INSERT INTO booking (roomId, customerId, bookingDate, checkIn, checkOut, status) VALUES

(49, 126, '2021-09-12', '2021-10-12', '2021-10-15', "Confirmed"),
(51, 126, '2021-09-12', '2021-10-12', '2021-10-15', "Confirmed"),
(53, 127, '2021-09-14', '2021-10-14', '2021-10-18', "Tentative"),
(55, 127, '2021-09-14', '2021-10-14', '2021-10-18', "Tentative"),
(57, 129, '2021-09-14', '2021-10-14', '2021-10-18', "Waitlist"),
(59, 130, '2021-09-18', '2021-10-18', '2021-10-21', "Confirmed"),
(61, 130, '2021-09-18', '2021-10-18', '2021-10-21', "Confirmed"),
(63, 131, '2021-09-14', '2021-10-14', '2021-10-20', "Waitlist"),
(65, 133, '2021-09-18', '2021-10-18', '2021-10-24', 'CC Guaranteed'),
(67, 133, '2021-09-18', '2021-10-18', '2021-10-24', 'CC Guaranteed'),
(69, 134, '2021-09-20', '2021-10-15', '2021-10-24', 'CC Guaranteed'),
(71, 135, '2021-09-21', '2021-10-29', '2021-10-31', 'Turn away'),
(73, 136, '2021-10-15', '2021-11-24', '2021-11-28', 'Group Confirmed'),
(75, 136, '2021-10-15', '2021-11-24', '2021-11-28', 'Group Confirmed'),
(77, 138, '2021-10-15', '2021-11-24', '2021-11-28', 'Group Confirmed'),
(79, 138, '2021-10-15', '2021-11-24', '2021-11-28', 'Group Confirmed'),
(81, 138, '2021-10-15', '2021-11-24', '2021-11-28', 'Group Confirmed'),
(83, 140, '2021-09-30', '2021-10-29', '2021-10-31', 'Turn away'),
(85, 142, '2021-10-18', '2021-11-26', '2021-11-29', "Tentative"),
(87, 144, '2021-10-20', '2021-12-23', '2021-11-28', "Confirmed"),
(89, 146, '2021-10-20', '2021-12-23', '2021-11-28', "Confirmed"),
(91, 147, '2021-10-20', '2021-12-23', '2021-11-28', "Confirmed"),
(93, 150, '2021-10-15', '2021-11-24', '2021-11-28', 'Group Confirmed'),
(95, 150, '2021-10-15', '2021-11-24', '2021-11-28', 'Group Confirmed');



SELECT concat(c.firstName, " ", c.lastNaME) AS Customer ,r.roomNumber as "Room Number",b.checkIn as "Check In Date",b.checkOut as "Check Out Date", b.status as "Reservation Status"
FROM Customer c,  booking b, room r
where b.customerId = c.ID
AND b.roomId = r.id
order by c.lastname;

