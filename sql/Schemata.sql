CREATE TABLE fish (
Species VARCHAR(225),
scientific_name VARCHAR(225),
family VARCHAR(225),
PRIMARY KEY (Species)
)

CREATE TABLE fish_name (
Species VARCHAR(225),
name VARCHAR(225),
FOREIGN KEY (Species) REFERENCES fish(Species)
)

CREATE TABLE country (
Country VARCHAR(225),
Description VARCHAR(225),
PRIMARY KEY (Country)
)

CREATE TABLE catch (
Country VARCHAR(225),
Species VARCHAR(225),
Year INT,
TLW FLOAT,
FOREIGN KEY (Country) REFERENCES country(Country),
FOREIGN KEY (Species) REFERENCES fish(Species)
)
