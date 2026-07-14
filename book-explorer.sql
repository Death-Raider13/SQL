CREATE TABLE IF NOT EXISTS book(
book_id INTEGER PRIMARY KEY,
title TEXT NOT NULL,
genre TEXT NOT NULL,
rating REAL NOT NULL,
pages INTEGER NOT NULL,
pub_year INTEGER NOT NULL
);

INSERT INTO book  (book_id, title,genre, rating, pages, pub_year) VALUES

(1, 'dragon quest', 'fantasy', 9.2, 332, 2021),
(2, 'code wizards', 'sci-fi', 8.5, 280, 2020),
(3, 'ocean deep', 'adventure', 7.8, 195, 2022),
(4, 'star rangers', 'sci-fi', 9.5,340,2019),
(5, 'forest secrets','fantasy', 8.1, 228, 2023),
(6, 'robot city', 'sci-fi', 7.2, 260, 2021),
(7, 'time jumpers','adventure', 8.9, 175,2022),
(8, 'magic academy', 'fantasy', 9.0, 398, 2020);

SELECT* FROM book;

select title, rating from book order by rating ASC;

select title, rating from book order by rating DESC;

select title, genre, rating from book order by genre asc, rating desc;

select title, rating from book order by rating desc limit 3;

select title, pub_year from book order by pub_year asc limit 5;

select genre, count(*) as book_count from book group by genre;

select genre, sum(pages) as total_pages, avg(rating) as avg_rating from book group by genre;

select genre, avg(rating) as avg_rating from book group by genre having avg(rating) >=8.5;