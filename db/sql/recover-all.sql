CREATE TABLE dog (
	id INT IDENTITY(1,1) PRIMARY KEY,
breedId INT NOT NULL,
colorId INT NOT NULL
);
INSERT INTO dog (breedId, colorId)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(3, 2),
(3, 3),
(4, 3),
(4, 4);

CREATE TABLE breedLookup (
	id INT IDENTITY(1,1) PRIMARY KEY,
	breed varchar(100) NOT NULL
);
INSERT INTO breedLookup (breed)
VALUES
('Am Bulldog'),
('Blue Tick'),
('Labrador'),
('Gr Shepard');

CREATE TABLE colorLookup (
	id INT IDENTITY(1,1) PRIMARY KEY,
	color varchar(100) NOT NULL
);
INSERT INTO colorLookup (color)
VALUES
('White'),
('Grey'),
('Black'),
('Brown');

CREATE VIEW dog_expanded AS
SELECT d.id, b.breed, c.color
FROM dog as d
JOIN breedLookup as b ON b.id = d.breedId
JOIN colorLookup as c ON c.id = d.colorId;
