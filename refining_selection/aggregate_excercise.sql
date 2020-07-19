-- Print the number of books in the database
-- SELECT COUNT(*) FROM books;

-- Print out how many books were released in each year
-- SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- Print out the total number of books in stock
-- SELECT SUM(stock_quantity) FROM books;

-- Find the average released_year for each author 
-- SELECT CONCAT(author_fname,' ',author_lname,' '),AVG(released_year) FROM books GROUP BY author_fname,author_lname;

-- Find the full name of the author who wrote the longest books
-- SELECT CONCAT(author_fname,' ',author_lname) AS 'full name',title,pages FROM books ORDER BY pages DESC LIMIT 1;
-- SELECT MAX(pages), CONCAT(author_fname,' ',author_lname) AS 'full name',title FROM books ORDER BY pages; 

-- table structure
SELECT
    released_year AS year, 
    COUNT(*) AS '# books', 
    AVG(pages) AS 'avg pages' 
FROM books GROUP BY released_year ORDER BY released_year;
