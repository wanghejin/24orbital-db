-- Create User table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE,  -- VARCHAR can have a max length, where TEXT doesn't
  username TEXT,
  password_hash TEXT
);

-- Create Notebook table
CREATE TABLE notebooks (
  id SERIAL PRIMARY KEY,
  nb_name TEXT,  -- avoid reserved keywords like 'name'
  nb_description TEXT,
  created_at TIMESTAMP, -- TIMESTAMP includes date and time
  created_by INT,
  FOREIGN KEY (created_by) REFERENCES users(id)
);

-- Create Note table
CREATE TABLE notes (
  id SERIAL PRIMARY KEY,
  title TEXT,
  content TEXT,
  created_at TIMESTAMP,
  notebook_id INT,
  FOREIGN KEY (notebook_id) REFERENCES notebooks(id)
);