CREATE DATABASE Family;
USE Family;

CREATE TABLE FamilyMembers (
    member_id INT NOT NULL AUTO_INCREMENT,
    status VARCHAR(255),
    member_name VARCHAR(255),
    birthday DATETIME,
    PRIMARY KEY(member_id)
);
INSERT INTO FamilyMembers (status, member_name, birthday)
VALUES ('father', 'Headley Quincey', '1960-05-13'),
	('mother', 'Flavia Quincey', '1963-02-16'),
	('son', 'Andie Quincey', '1983-06-05'),
	('daughter', 'Lela Quincey', '1985-06-07'),
	('daughter', 'Annie Quincey', '1988-04-10'),
	('father', 'Ernest Forrest', '1961-09-11'),
	('mother', 'Constance Forrest', '1968-09-06'),
	('daughter', 'Wednesday Addams', '2005-01-13');

CREATE TABLE GoodTypes (
    good_type_id INT NOT NULL AUTO_INCREMENT,
    good_type_name VARCHAR(255),
    PRIMARY KEY(good_type_id)
);
INSERT INTO GoodTypes (good_type_name)
VALUES ('communal payments'),
	('food'),
	('delicacies'),
	('entertainment'),
	('treatment'),
	('education'),
	('clothes'),
	('equipment');

CREATE TABLE Goods (
    good_id INT NOT NULL AUTO_INCREMENT,
    good_name VARCHAR(255),
    type INT,
    PRIMARY KEY(good_id),
    FOREIGN KEY(type) REFERENCES GoodTypes(good_type_id)
);
INSERT INTO Goods (good_name, type)
VALUES ('apartment fee', 1),
	('phone fee', 1),
	('bread', 2),
	('milk', 2),
	('red caviar', 3),
	('cinema', 4),
	('black caviar', 3),
	('cough tablets', 5),
	('potato', 2),
	('pineapples', 3),
	('television', 8),
	('vacuum cleaner', 8),
	('jacket', 7),
	('fur coat', 7),
	('music school fee', 6),
	('english school fee', 6),
	('airsoft game session', 4),
	('netflix subscription', 4);

CREATE TABLE Payments (
    payment_id INT NOT NULL AUTO_INCREMENT,
    family_member INT,
    good INT,
    amount INT,
    unit_price INT,
    date DATETIME,
    PRIMARY KEY(payment_id),
    FOREIGN KEY(family_member) REFERENCES FamilyMembers(member_id),
    FOREIGN KEY(good) REFERENCES Goods(good_id)
);
INSERT INTO Payments (date, family_member, good, amount, unit_price)
VALUES ('2005-02-12', 1, 1, 1, 2000),
	('2005-03-23', 2, 1, 1, 2100),
	('2005-05-14', 3, 4, 5, 20),
	('2005-07-22', 4, 5, 1, 350),
	('2005-07-26', 4, 7, 2, 150),
	('2005-02-20', 5, 6, 1, 100),
	('2005-07-30', 2, 6, 1, 120),
	('2005-09-12', 2, 16, 1, 5500),
	('2005-09-30', 5, 15, 1, 230),
	('2005-10-27', 5, 15, 1, 230),
	('2005-11-28', 5, 15, 1, 250),
	('2005-12-22', 5, 15, 1, 250),
	('2005-08-11', 3, 13, 1, 2200),
	('2005-10-23', 2, 14, 1, 66000),
	('2005-02-03', 1, 9, 5, 8),
	('2005-03-11', 1, 9, 5, 7),
	('2005-03-18', 2, 9, 3, 8),
	('2005-04-20', 1, 9, 8, 8),
	('2005-05-13', 1, 9, 5, 7),
	('2005-06-11', 2, 9, 3, 150),
	('2006-01-12', 3, 10, 1, 100),
	('2006-03-12', 1, 5, 3, 10),
	('2005-06-05', 1, 8, 1, 300),
	('2005-06-20', 3, 6, 8, 150),
	('2005-06-21', 2, 9, 3, 150),
	('2005-06-22', 5, 18, 1, 16),
	('2005-06-22', 3, 17, 1, 59);