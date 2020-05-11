# Database
USE publications;

# Challenge 3
SELECT a.au_id AS AuthorID, a.au_lname AS LastName, a.au_fname AS FirstName, SUM(s.qty) AS Total
FROM publications.authors a
INNER JOIN publications.titleauthor ta ON ta.au_id = a.au_id
INNER JOIN publications.sales s ON s.title_id = ta.title_id
GROUP BY AuthorID
ORDER BY Total DESC, AuthorID DESC
LIMIT 3;
