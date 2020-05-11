# Database
USE publications;

# Challenge 2
SELECT a.au_id AS AuthorID, a.au_lname AS LastName, a.au_fname AS FirstName, p.pub_name AS Publisher, COUNT(t.title_id) AS TitleCount
FROM publications.authors a
INNER JOIN publications.titleauthor ta ON ta.au_id = a.au_id
INNER JOIN publications.titles t ON ta.title_id = t.title_id
INNER JOIN publications.publishers p ON p.pub_id = t.pub_id
GROUP BY p.pub_name, a.au_id
ORDER BY TitleCount DESC, AuthorID DESC, Publisher DESC;

