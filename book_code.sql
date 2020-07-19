# SELECT CONCAT
# (
#     SUBSTRING(title,1,7),
#     '...'
# ) AS 'sub title'
# FROM books;

# SELECT 
#     REPLACE
#     (
#         SUBSTRING(title,1,10), 'e','3' 
#     )
#     AS replaced
# FROM books;

# SELECT 
#     CONCAT
#     (
#         author_lname,' is ',CHAR_LENGTH(author_lname), ' characters long'
#     )
#     AS sample
# FROM books;


SELECT
  CONCAT(SUBSTRING(title,1,10), '...') AS 'short title',
  CONCAT_WS(',', author_lname, author_fname) AS author,
  CONCAT (stock_quantity, ' in stock') AS quantity
FROM books;

