-- Evaluate the following ...
SELECT 10!= 10;

SELECT 15 > 14 && 99 - 5 <= 94;

SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;

-- Select all books written before 1980

SELECT title,released_year FROM books WHERE released_year < 1980;

-- Select all books writeten by Eggers or chabon

SELECT title, author_fname, author_lname 
FROM books 
WHERE author_lname = 'Eggers' OR 
author_lname = 'Chabon';

or

SELECT title, author_fname, author_lname 
FROM books 
WHERE author_lname IN ('Eggers', 'Chabon');

-- Select all books written by Lahiri and published year after 2000
SELECT title, author_fname,author_lname 
FROM books 
WHERE author_lname = 'Lahiri' AND
released_year > 2000;

-- Select all books with page counts beween 100 and 200
SELECT title,pages FROM books WHERE pages BETWEEN 100 AND 200;

-- Select all books where author_laname starts with 'C' or 'S'
SELECT title,author_lname FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

or

SELECT title,author_lname FROM books
WHERE SUBSTR(author_lname,1,1) = 'C' OR
SUBSTR(author_lname,1,1) = 'S';

or

SELECT title,author_lname FROM books
WHERE SUBSTR(author_lname,1,1) IN ('C','S');

-- CASE exercise
SELECT
   title,
   author_lname,
   CASE
     WHEN title LIKE '%stories%' THEN 'Short Stories'
     WHEN title LIKE '%Just Kids%' OR
       title LIKE 'A Heartbreaking Work%' THEN 'Memoir'
     ELSE 'Novel'
   END AS TYPE
 FROM books;

-- Bonus excercise
SELECT title,author_lname,CONCAT(COUNT(*),' ','books') AS COUNT FROM books GROUP BY author_lname,author_fname;