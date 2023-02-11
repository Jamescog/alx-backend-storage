-- This script creates a table users
-- if the table already exists, it will not fail
CREATE TABLE IF NOT EXISTS users(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255)
	);
