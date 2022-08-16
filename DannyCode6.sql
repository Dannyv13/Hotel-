USE hotel;


CREATE TABLE idProof (
ID INT(7) NOT NULL AUTO_INCREMENT,
type VARChAR(90) NOT NULL UNIQUE,
PRIMARY KEY(ID)
);

INSERT INTO idProof (type)
select distinct idProof
FROM customer;

update customer
set idProof = 1
where idProof = "Driver's License";

update customer
set idProof = 2
where idProof = "passport";

update customer
set idProof = 3
where idProof = " Student ID Card";

update customer
set id =4
where idProof ='Employee ID Card';

ALTER TABLE customer 
modify column idProof int(7)not null;

SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE customer 
add foreign key (idProof) references idProof (ID);

CREATE TABLE itemType (
ID int(7) not null auto_increment,
type VARCHAR(90) not null UNIQUE,
primary key(ID)
);

INSERT INTO itemType(type) Values

('Health and Beauty'),
('Travel'),
('Clothing'),
('Food'),
('Beverage'),
('Laundry');

ALTER TABLE item 
modify column itemType int(7)not null;

ALTER TABLE item
add foreign key (itemType) references itemType(ID);

INSERT INTO item (itemType, itemName, itemCost, itemDetails) VALUES

(“1”, 'Bar soap', '1.99', 'Novo Essentials 0.4 oz. Wrapped Facial Soap Bar'),
(“1”, 'Bar soap', '2.99', 'Novo Essentials 0.8 oz. Wrapped Bath Soap Bar'),
(“1”, 'Body loation', '3.99', 'Novo Essentials 0.75 oz. Body Lotion'),
(“1”, 'Body lotion', '3.99', 'Basic Earth Botanicals Refreshing Body Lotion 1 oz.'),
(“1”, 'Body wash', '2.99', 'Basic Earth Botanicals Reviving Body Wash 1 oz.'),
(“1”, 'Body wash', '2.99', 'Ecossential Naturals Body Wash 0.5 oz.'),
(“1”, 'Conditioner', '3.99', 'Novo Essentials 0.75 oz. Conditioner'),
(“1”, 'Conditioner', '3.99', 'Basic Earth Botanicals Restoring Conditioner 1 oz.'),
(“1”, 'Shampoo', '3.99', 'Novo Essentials 0.75 oz. Shampoo'),
(“1”, 'Shampoo', '3.99', 'Eco Novo Natura 0.5 oz. Shampoo'),
(“1”, 'Toothbrush', '1.99', 'Novo Essentials 6" Travel Toothbrush'),
(“1”, 'Toothpaste', '2.99', 'Colgate Total Clean Mint Toothpaste 0.88 oz.'),
(“1”, 'Mouth wash', '3.99', 'Judith Jackson Spa Alcohol Free Mint Mouthwash 1 oz.'),
(“1”, 'Comb', '.99', 'Novo Essentials 4 5/8" Black Comb'),
(“1”, 'Razor', '1.59', 'Novo Essentials Blue Twin Blade Disposable Razor'),
(“1”, 'Vanity Kit', '4.59', 'Novo Essentials Personal Vanity Kit'),
(“1”, 'Deoderant', '4.99', 'Arm & Hammer Essentials 1 oz. Rosemary and Lavender Scent Deodorant'),
(“4”, 'Candy', '1.59', 'Hersheys Chocolate Bar'),
(“4”,'Candy', '1.59', 'Kit Kat'),
(“4”, 'Candy', '1.59', 'Reeses Peanut Butter Cups'),
(“4”, 'Snacks', '1.89', 'Doritos 1.75 oz. Bag of Nacho Cheese Flavored Tortilla Chips'),
(“4”, 'Snacks', '1.89', 'Route 11 Chips 2 oz. Lightly Salted Potato Chips'),
(“4”, 'Snacks', '1.89', 'Fresh Gourmet Tri-Color Tortilla Strips 2 oz. Bag'),
(“4”, 'Snacks', '2.89', 'General Mills 3 oz. Traditional Chex Mix'),
(“4”, 'Snacks', '3.29', 'Fiesta Sunshine Snack Mix 4 oz. Bag '),
(“5”, 'Energy drink', '2.99', '5-Hour Energy Regular Strength 1.93 fl. oz. Grape Energy Drink'),
(“5”, 'Energy drink', '2.99', 'Red Bull 8.4 fl. oz. Can Original Energy Drink'),
(“5”, 'Soda', '1.39', 'Coca-cola'),
(“5”, 'Soda', '1.39', 'Sprite'),
(“5”, 'Soda', '1.39', 'Dr. Pepper'),
(“5”, 'Soda', '1.39', 'Diet Coca-cola'),
(“5”, 'Soda', '1.39', 'Mountain Dew'),
(“5”, 'Soda', '2.39', 'Pepsi'),
(“5”, 'Soda', '2.39', 'Canada Dry Ginger Ale'),
(“6”, 'Laundry bag', '9.99', '25" x 36" Mesh Laundry Bag with Drawstring'),
(“6”, 'Dryer sheets', '4.99', '2 Count Snuggle Blue Sparkle Dryer Sheet Fabric Softener'),
(“6”, 'Laundry detergent', '4.99', '2 oz. ALL Stainlifter Powder Laundry Detergent'),
(“6”, 'Laundry detergent', '4.99', '1.5 oz. Snuggle Blue Sparkle Liquid Fabric Softener');

