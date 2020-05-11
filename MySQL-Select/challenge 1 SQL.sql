# Database
USE publications;

# Challenge 1
SELECT a.au_id AS AuthorID, a.au_lname AS LastName, a.au_fname AS FirstName, t.title AS Title, p.pub_name AS Publisher
FROM publications.authors a
INNER JOIN publications.titleauthor ta ON ta.au_id = a.au_id
INNER JOIN publications.titles t ON ta.title_id = t.title_id
INNER JOIN publications.publishers p ON p.pub_id = t.pub_id
ORDER BY AuthorID ASC;
