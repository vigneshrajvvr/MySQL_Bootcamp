-- select all story collections - titles that contain 'stories'

# SELECT title FROM books WHERE title LIKE '%stories%';

-- Find the longest book - Print out the Title and Page Count

# SELECT title,pages FROM books ORDER BY pages DESC LIMIT 1;

-- print a summary containing the title and year, for the 3 most recent books

# SELECT CONCAT(title,' - ',released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;

-- Find all the books with an author_lname that contains a space(" ")

# SELECT title,author_lname FROM books WHERE author_lname LIKE '%\ %';

-- Find the 3 books with the Lowest Stock - Select title, year and stock

# SELECT title,released_year,stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;

-- Print title and author_lname, sorted first by author_lname and then by title

# SELECT title,author_lname FROM books ORDER BY author_lname,title;

-- Sort Alphabetically By last name

SELECT CONCAT('MY FAVOURITE AUTHOR IS ',author_fname,' ',author_lname) As yell FROM books ORDER BY author_lname,author_fname DESC;