CREATE TABLE IF NOT EXISTS zoo_animal(
animal_id INTEGER PRIMARY KEY,
name TEXT NOT NULL,
species TEXT NOT NULL,
age_years INTEGER NOT NULL,
weight_kg REAL NOT NULL
);


INSERT INTO zoo_animal (animal_id, name, species, age_years, weight_kg) VALUES
(112, 'Leo', 'Lion', 5, 190.5),
(223, 'Molly', 'Elephant', 10, 5400.0),
(2000, 'Zara', 'Zebra', 3, 350.0),
(412, 'Gerry', 'Giraffe', 7, 800.0),
(522, 'Penny', 'Penguin', 2, 15.0),
(633, 'Sammy', 'Snake', 4, 12.0),
(744, 'Benny', 'Bear', 6, 300.0),
(855, 'Tina', 'Tiger', 8, 220.0),
(956, 'Coco', 'Chimpanzee', 5, 50.0),
(1507, 'Rex', 'Rhinoceros', 12, 2300.0);

SELECT*FROM zoo_animal;

SELECT species FROM zoo_animal;

SELECT DISTINCT species FROM zoo_animal;

SELECT COUNT(DISTINCT species) AS unique_species FROM zoo_animal;

SELECT COUNT (animal_id) AS total_animals FROM zoo_animal;

SELECT COUNT(animal_id) AS olderr_than_5 FROM zoo_animal WHERE age_years > 5;

SELECT SUM(weight_kg) AS total_weight_kg FROM zoo_animal;

SELECT AVG (age_years) AS average_age FROM zoo_animal;


SELECT
COUNT (animal_id) AS total_animals,
count (DISTINCT species) AS unique_species,
SUM(weight_kg) AS total_weight_kg,
AVG(age_years) AS average_age
FROM zoo_animal;