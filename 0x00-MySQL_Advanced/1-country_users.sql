-- Create the "users" table if it doesn't already exist
-- with attributes: id (integer, auto increment, primary key, never null), 
-- email (string, unique, never null), name (string), 
-- country (enumeration of US, CO, TN, default US, never null)
CREATE TABLE IF NOT EXISTS users(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255),
	country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT  'US'
	);
