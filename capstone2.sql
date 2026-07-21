CREATE TABLE IF NOT EXISTS Resturant(
name TEXT,
neighborhood TEXT,
cuisine TEXT,
review REAL, 
price TEXT,
health TEXT
);

INSERT INTO Resturant(name,neighborhood, cuisine, review,price,health)VALUES

('peter', 'Brooklyn','steak',4.4,'$$$','A'),
('jongro','Midtown','Korean', 3.5, '$$','A'),
('pocha','Midtown', 'Pizza', 4.0, '$$$','B'),
('Lighthouse','Queens','Chinese',3.9,'$','A'),
('minca','Downtown','American',4.6,'$$$',''),
('marea','Chinatown','Chinese',3.0,'$$',''),
('Dirty Candy','Uptown','Italian',4.9,'$$$','B'),
('Di Fara Pizza', 'Brooklyn','Pizza',3.8,'$$','A'),
('Golden Unicorn','Uptown', 'Italian',3.8,'$$','A');


SELECT DISTINcT neighborhood
from Resturant;

select distinct cuisine
from Resturant;

select *
from Resturant
where review >=4.0;

select *
from Resturant
where cuisine='Italian'
    and price in ('$$','$$$');

select *
from Resturant
where price='$$$';

select *
from Resturant
where name like '%Candy%';

select *
from Resturant
where neighborhood in ('Midtown', 'Downtown', 'Chinatown');

select *
from Resturant
where health='' OR health is null;

select *
from Resturant
Order by review DESC
limit 4;
