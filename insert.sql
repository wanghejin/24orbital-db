-- Insert into User table
INSERT INTO users (email, username, password_hash) VALUES ('alice@example.com', 'alice', 'hash1');
INSERT INTO users (email, username, password_hash) VALUES ('bob@example.com', 'bob', 'hash1');
INSERT INTO users VALUES (DEFAULT, 'charlie@example.com', 'charlie', 'hash2');
INSERT INTO users VALUES (DEFAULT, 'derrick@example.com', 'derrick', 'hash3'); -- user#4 doesn't have a notebook
INSERT INTO users VALUES (DEFAULT, 'aliceee@example.com', 'alice', 'hash4');
INSERT INTO users (email) VALUES ('glenda@example.com');

-- Insert into Notebook table
INSERT INTO notebooks (nb_name, nb_description, created_at, created_by) VALUES ('Notebook 1', 'Blue', NOW(), 1);
INSERT INTO notebooks (nb_name, nb_description, created_at, created_by) VALUES ('Notebook 2', 'Green', NOW(), 2);
INSERT INTO notebooks (nb_name, nb_description, created_at, created_by) VALUES ('Notebook 3', 'Red', NOW(), 1);
INSERT INTO notebooks (nb_name, nb_description, created_at, created_by) VALUES ('Notebook 4', 'Blue', NOW(), 3);  --nb#4 doesn't have any notes
INSERT INTO notebooks (nb_name, nb_description, created_at, created_by) VALUES ('Notebook 5', 'Yellow', NOW(), 5);
INSERT INTO notebooks (nb_name, nb_description, created_at, created_by) VALUES ('Notebook 6', 'White', NOW(), 6);

-- Insert into Note table
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 1', 'Content 1', NOW(), 1);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 2', 'Content 2', NOW(), 3);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 3', 'Content 3', NOW(), 6);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 4', 'Content 4', NOW(), 1);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 5', 'Content 5', NOW(), 2);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 6', 'Content 6', NOW(), 5);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 7', 'Content 7', NOW(), 5);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 8', 'Content 8', NOW(), 2);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 9', 'Content 9', NOW(), 1);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 10', 'Content 10', NOW(), 6);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 11', 'Content 11', NOW(), 5);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 12', 'Content 12', NOW(), 2);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 13', 'Content 13', NOW(), 2);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 14', 'Content 14', NOW(), 2);
INSERT INTO notes (title, content, created_at, notebook_id) VALUES ('Note 15', 'Content 15', NOW(), 1);