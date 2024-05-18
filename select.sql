-- Simple Queries
-- Retrieve all users:
SELECT * FROM users;

-- Retrieve a specific user by their email:
SELECT * FROM users WHERE email = 'bob@example.com';

-- Retrieve all distinct usernames:
SELECT DISTINCT(username) FROM users;

-- Retrieve all users without a specific username:
SELECT * FROM users WHERE username IS NULL;

-- Inner Join:
-- Join two tables based on a particular condition (equivalence of columns)
-- Retrieve all notebooks along with their corresponding user information:
SELECT nb.*, u.username, u.email
FROM notebooks nb
INNER JOIN users u ON nb.created_by = u.id;

SELECT nb.*, u.username, u.email
FROM notebooks nb, users u
WHERE nb.created_by = u.id;

-- Left Outer Join:
-- Join two tables based on a particular condition (even when there are no matches in the right table)
-- Retrieve all notebooks and their number of notes (even if they have 0 notes):
SELECT nb.id AS nb_id, COUNT(nt.id) AS total_notes
FROM notebooks nb
LEFT OUTER JOIN notes nt ON nb.id = nt.notebook_id
GROUP BY nb.id

-- Contrast with inner join:
SELECT nb.id AS nb_id, COUNT(nt.id) AS total_notes
FROM notebooks nb
INNER JOIN notes nt ON nb.id = nt.notebook_id
GROUP BY nb.id

-- Aggregate Queries
-- COUNT, MAX, MIN, AVG, SUM
-- COUNT(*) counts all rows, while COUNT(column_name) counts rows with non-NULL values in the specified column
-- Retrieve the total number of users:
SELECT COUNT(*) FROM users;
SELECT COUNT(username) FROM users;

-- More complicated examples:
-- Retrieve the username and total number of notes for each user, in descending order:
SELECT u.username, COUNT(nb.id) AS total_notes
FROM users u
LEFT OUTER JOIN notebooks nb ON u.id = nb.created_by
LEFT OUTER JOIN notes nt ON nb.id = nt.notebook_id
GROUP BY u.id, u.username
ORDER BY total_notes DESC;

-- Nested Queries
-- Retrieve user who created the most notes
-- Nested subqueries can only appear in FROM/WHERE clauses
-- Nested subqueries must have an alias
-- Nested subqueries can access columns in the outer query, but not the other way around
SELECT username, total_notes AS col_x
FROM (SELECT u.username, COUNT(nb.id) AS total_notes
        FROM users u
        LEFT OUTER JOIN notebooks nb ON u.id = nb.created_by
        LEFT OUTER JOIN notes nt ON nb.id = nt.notebook_id
        GROUP BY u.id, u.username
        ORDER BY total_notes DESC) AS user_ranking
WHERE ... -- cannot access columns from the inner query
LIMIT 1;

