# Database
USE publications;

# Challenge 4
SELECT a.au_id AS AuthorID, a.au_lname AS LastName, a.au_fname AS FirstName, IFNULL(SUM(s.qty),0) AS Total
FROM publications.authors a
LEFT JOIN publications.titleauthor ta ON ta.au_id = a.au_id
LEFT JOIN publications.sales s ON s.title_id = ta.title_id
GROUP BY AuthorID
ORDER BY Total DESC, AuthorID DESC;