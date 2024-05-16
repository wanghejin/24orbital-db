-- Take note of the sequence to delete: avoid foreign key constraint violations
-- End goal: Delete a user

-- Delete a specific note:
DELETE FROM notes WHERE id = 1 OR id = 3;

-- Delete a specific notebook and all related notes:
DELETE FROM notebooks WHERE id = 1 OR id = 3;

-- Delete a specific user and all related notebooks and notes:
DELETE FROM users WHERE id = 1;

-- DROP TABLE notes;