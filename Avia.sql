CREATE DATABASE Avia;
USE Avia;

CREATE TABLE Company (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY(id)
);
INSERT INTO Company (name)
VALUES ('Don_avia'),
    ('Aeroflot'),
    ('Dale_avia'),
    ('air_France'),
    ('British_AW');

CREATE TABLE Trip (
    id INT NOT NULL,
    company INT,
    plane VARCHAR(255),
    town_from VARCHAR(255),
    town_to VARCHAR(255),
    time_out DATETIME,
    time_in DATETIME,
    PRIMARY KEY(id),
    FOREIGN KEY(company) REFERENCES Company(id)
);
INSERT INTO Trip (id, company, plane, town_from, town_to, time_out, time_in)
VALUES (1100, 4, 'Boeing', 'Rostov', 'Paris', '1900-01-01 14:30:00', '1900-01-01 14:30:00'),
    (1101, 4, 'Boeing', 'Paris', 'Rostov', '1900-01-01 08:12:00', '1900-01-01 08:12:00'),
    (1123, 3, ' U-154', 'Rostov', 'Vladivostok', '1900-01-01 16:20:00', '1900-01-01 16:20:00'),
    (1124, 3, ' U-154', 'Vladivostok', 'Rostov', '1900-01-01 09:00:00', '1900-01-01 09:00:00'),
    (1145, 2, 'IL-86', 'Moscow', 'Rostov', '1900-01-01 09:35:00', '1900-01-01 09:35:00'),
    (1146, 2, 'IL-86', 'Rostov', 'Moscow', '1900-01-01 17:55:00', '1900-01-01 17:55:00'),
    (1181, 1, ' U-134', 'Rostov', 'Moscow', '1900-01-01 06:12:00', '1900-01-01 06:12:00'),
    (1182, 1, ' U-134', 'Moscow', 'Rostov', '1900-01-01 12:35:00', '1900-01-01 12:35:00'),
    (1187, 1, ' U-134', 'Rostov', 'Moscow', '1900-01-01 15:42:00', '1900-01-01 15:42:00'),
    (1188, 1, ' U-134', 'Moscow', 'Rostov', '1900-01-01 22:50:00', '1900-01-01 22:50:00'),
    (1195, 1, ' U-154', 'Rostov', 'Moscow', '1900-01-01 23:30:00', '1900-01-01 23:30:00'),
    (1196, 1, ' U-154', 'Moscow', 'Rostov', '1900-01-01 04:00:00', '1900-01-01 04:00:00'),
    (7771, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 01:00:00', '1900-01-01 01:00:00'),
    (7772, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 12:00:00', '1900-01-01 12:00:00'),
    (7773, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 03:00:00', '1900-01-01 03:00:00'),
    (7774, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 14:00:00', '1900-01-01 14:00:00'),
    (7775, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 09:00:00', '1900-01-01 09:00:00'),
    (7776, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 18:00:00', '1900-01-01 18:00:00'),
    (7777, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 18:00:00', '1900-01-01 18:00:00'),
    (7778, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 22:00:00', '1900-01-01 22:00:00'),
    (8881, 5, 'Boeing', 'London', 'Paris', '1900-01-01 03:00:00', '1900-01-01 03:00:00'),
    (8882, 5, 'Boeing', 'Paris', 'London', '1900-01-01 22:00:00', '1900-01-01 22:00:00');

CREATE TABLE Passenger (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY(id)
);
INSERT INTO Passenger (name)
VALUES ('Bruce Willis'),
	('George Clooney'),
	('Kevin Costner'),
	('Donald Sutherland'),
	('Jennifer Lopez'),
	('Ray Liotta'),
	('Samuel L. Jackson'),
	('Nikole Kidman'),
	('Alan Rickman'),
	('Kurt Russell'),
	('Harrison Ford'),
	('Russell Crowe'),
	('Steve Martin'),
	('Michael Caine'),
	('Angelina Jolie'),
	('Mel Gibson'),
	('Michael Douglas'),
	('John Travolta'),
	('Sylvester Stallone'),
	('Tommy Lee Jones'),
	('Catherine Zeta-Jones'),
	('Antonio Banderas'),
	('Kim Basinger'),
	('Sam Neill'),
	('Gary Oldman'),
	('ClINT Eastwood'),
	('Brad Pitt'),
	('Johnny Depp'),
	('Pierce Brosnan'),
	('Sean Connery'),
	('Bruce Willis'),
	('Mullah Omar'),
	('Leonardo Grant-Baker');

CREATE TABLE Pass_in_trip (
    id INT NOT NULL AUTO_INCREMENT,
    trip INT,
    passenger INT,
    place VARCHAR(255),
    PRIMARY KEY(id),
    FOREIGN KEY(trip) REFERENCES Trip(id),
    FOREIGN KEY(passenger) REFERENCES Passenger(id)
);
INSERT INTO Pass_in_trip (trip, passenger, place)
VALUES (1100, 1, '1a'),
	(1123, 3, '2a'),
	(1123, 1, '4c'),
	(1123, 6, '4b'),
	(1124, 2, '2d'),
	(1145, 3, '2c'),
	(1181, 1, '1a'),
	(1181, 6, '1b'),
	(1181, 8, '3c'),
	(1181, 5, '1b'),
	(1182, 5, '4b'),
	(1187, 8, '3a'),
	(1188, 8, '3a'),
	(1182, 9, '6d'),
	(1145, 5, '1d'),
	(1187, 10, '3d'),
	(8882, 37, '1a'),
	(7771, 37, '1c'),
	(7772, 37, '1a'),
	(8881, 37, '1d'),
	(7778, 10, '2a'),
	(7772, 10, '3a'),
	(7771, 11, '4a'),
	(7771, 11, '1b'),
	(7771, 11, '5a'),
	(7772, 12, '1d'),
	(7773, 13, '2d'),
	(7772, 13, '1b'),
	(8882, 14, '3d'),
	(7771, 14, '4d'),
	(7771, 14, '5d'),
	(7772, 14, '1c');