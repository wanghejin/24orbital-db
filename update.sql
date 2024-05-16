-- Update username of a specific user:
UPDATE users SET username = 'alex' WHERE username = 'alice';

-- Update the email of a specific user:
UPDATE users SET email = 'alex@example.com' WHERE id = 1;

-- Update the title and color of a specific notebook:
UPDATE notebooks SET nb_name = 'Updated Title', nb_description = 'Updated Color' WHERE id = 1;

-- Update the content of a specific note:
UPDATE notes SET content = 'Updated Content' WHERE id = 1;