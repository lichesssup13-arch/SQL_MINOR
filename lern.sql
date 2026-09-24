
CREATE TABLE Marke (
    MarkeKey INTEGER PRIMARY KEY,
    Marke TEXT
);

CREATE TABLE MarkeModel (
    ModelKey INTEGER PRIMARY KEY,
    MarkeKey INTEGER,
    Model TEXT,
    FOREIGN KEY (MarkeKey) REFERENCES Marke(MarkeKey)
);

CREATE TABLE Color (
    ColorKey INTEGER PRIMARY KEY,
    Color TEXT
);

CREATE TABLE Car (
    CarKey INTEGER PRIMARY KEY,
    MarkeKey INTEGER,
    ModelKey INTEGER,
    ColorKey INTEGER,
    Year INTEGER,
    FOREIGN KEY (MarkeKey) REFERENCES Marke(MarkeKey),
    FOREIGN KEY (ModelKey) REFERENCES MarkeModel(ModelKey),
    FOREIGN KEY (ColorKey) REFERENCES Color(ColorKey)
);

INSERT INTO Marke (MarkeKey, Marke) VALUES 
(1, 'Nissan'),
(2, 'BMW');
INSERT INTO Color (ColorKey, Color) VALUES 
(1, 'Green'),
(2, 'Blue'),
(3, 'Red'),
(4, 'Yellow');
INSERT INTO MarkeModel (ModelKey, MarkeKey, Model) VALUES 
(1, 1, 'Pathfinder'),
(2, 1, 'Civic'),
(3, 2, 'Bluebird');
INSERT INTO Car (CarKey, MarkeKey, ModelKey, ColorKey, Year) VALUES 
(1, 1, 1, 2, 2003),
(2, 2, 1, 3, 2005),
(3, 2, 1, 2, 2005);

SELECT * FROM CAR;
SELECT MarkeKey, Year FROM CAR;
SELECT * FROM Marke;
SELECT Color FROM Color;
SELECT * FROM MarkeModel;
SELECT CarKey FROM Car where year > 2003;
SELECT CarKey FROM Car where ColorKey = 2;
SELECT CarKey FROM Car where MarkeKey = 2 and Year = 2005;
SELECT * FROM Car order by year DESC;
SELECT * FROM Car limit 2; 
SELECT DiSTINCT YEAR FROM Car;
SELECT * FROM Car ORDER BY Markekey, Year DESC;
SELECT * FROM Car where year BETWEEN 2003 and 2005;
SELECT * FROM Car where ColorKey =1 or ColorKey =3;
SELECT distinct MarkeKey, year FROM Car;