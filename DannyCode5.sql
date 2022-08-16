USE hotel;

ALTER TABLE roomType
DROP COLUMN roomNumber;

ALTER TABLE roomType
ADD UNIQUE (roomType);

ALTER TABLE room
ADD UNIQUE (roomNumber);

INSERT INTO  roomType(roomType, description, cost) Values

("Queen", "A room with a queen-sized bed", "145.00"),
("King", "A room with a king-sized bed", "165.00"),
("Twin", "A room with two twin-sized beds", "130.00"),
("Double", "A room with two double beds", "150.00"),
("Studio", "A room with a studio bed with small kitchenette", "155.00");

INSERT INTO room(roomTypeId, roomNumber, description) VALUES

("1", "100", "Standard room"),
("2", "101", "Standard room"),
("3", "102", "Standard room"),
("4", "103", "Standard room"),
("5", "104", "Standard room"),
("1", "105", "Standard room"),
("1", "106", "Accessible room"),
("2", "107", "Accessible room"),
("3", "108", "Accessible room"),
("4", "109", "Accessible room"),
("5", "110", "Accessible room"),
("1", "111", "Accessible room"),
("2", "112", "Accessible room"),
("3", "113", "Accessible room"),
("4", "114", "Accessible room"),
("5", "115", "Accessible room"),
("1", "200", "Connecting room"),
("2", "201", "Connecting room"),
("3", "202", "Connecting room"),
("4", "203", "Connecting room"),
("5", "204", "Connecting room"),
("1", "205", "Connecting room"),
("2", "206", "Deluxe room"),
("3", "207", "Deluxe room"),
("4", "208", "Deluxe room"),
("5", "209", "Deluxe room"),
("5", "210", "Deluxe room"),
("1", "211", "Suite room"),
("2", "212", "Suite room"),
("3", "213", "Suite room"),
("4", "214", "Suite room"),
("5", "215", "Suite room"),
("1", "300", "Standard room"),
("2", "301", "Standard room"),
("3", "302", "Standard room"),
("4", "303", "Connecting room"),
("5", "304", "Connecting room"),
("1", "305", "Connecting room"),
("3", "306", "Deluxe room"),
("2", "307", "Deluxe room"),
("3", "308", "Deluxe room"),
("4", "309", "Deluxe room"),
("5", "310", "Deluxe room"),
("1", "311", "Suite room"),
("2", "312", "Suite room"),
("3", "313", "Suite room"),
("4", "314", "Suite room"),
("3", "315", "Suite room");