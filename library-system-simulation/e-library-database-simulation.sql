SET search_path TO pm_exercise_week8;

/* No longer will be used
-- area
CREATE TABLE province(
	province_id VARCHAR(20),
	province VARCHAR(100)
);

CREATE TABLE city(
	city_id VARCHAR(20),
	city VARCHAR(100)
);

CREATE TABLE district(
	district_id VARCHAR(20),
	district VARCHAR (100)
);

CREATE TABLE area (
    area_id VARCHAR(20) PRIMARY KEY,
    district VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    province VARCHAR(100) NOT NULL
);

INSERT INTO area(area_id, district, city, province)
	SELECT 
		district_id AS area_id, 
		district,
		city,
		province
	FROM district 
	JOIN city ON LEFT(district_id, 5) = city_id
	JOIN province ON LEFT (district_id,2) = province_id
;
*/

-- author table
CREATE TABLE authors(
	author_id SERIAL PRIMARY KEY,
	author_name VARCHAR(1000) NOT NULL
);

-- publisher table
CREATE TABLE publishers(
	publisher_id SERIAL PRIMARY KEY,
	publisher_name VARCHAR(1000) NOT NULL
);

-- category table
CREATE TABLE categories(
	category_id SERIAL PRIMARY KEY,
	category VARCHAR(1000) NOT NULL
);

-- books table
CREATE TABLE books(
	book_id SERIAL PRIMARY KEY,
	book_title VARCHAR(1000) NOT NULL,
	isbn BIGINT,
	publisher_id INT,
	publish_year INT
	CONSTRAINT fk_publisher_book FOREIGN KEY (publisher_id) REFERENCES publishers (publisher_id)
);

ALTER TABLE books 
ADD COLUMN publisher_id INT,
ADD CONSTRAINT fk_publisher_book FOREIGN KEY (publisher_id) REFERENCES publishers (publisher_id)

ALTER TABLE books
ADD COLUMN isbn BIGINT


-- book-author table
CREATE TABLE book_author(
	book_id INT,
	author_id INT,
	PRIMARY KEY (book_id, author_id),
	CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES books (book_id),
	CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES authors (author_id)
);

-- book-category table
CREATE TABLE book_category(
	book_id INT,
	category_id INT,
	PRIMARY KEY (book_id, category_id),
	CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES books (book_id),
	CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES categories (category_id)
);

-- libraries table
CREATE TABLE libraries(
	library_id SERIAL PRIMARY KEY,
	library_name VARCHAR(255) NOT NULL,
	phone VARCHAR(20) NOT NULL UNIQUE,
	address VARCHAR (1000) NOT NULL
);

-- book_collections table
CREATE TABLE book_collections(
	collection_id SERIAL PRIMARY KEY,
	library_id INT NOT NULL,
	book_id INT NOT NULL,
	quantity INT NOT NULL CHECK (quantity >= 0),
	is_available BOOLEAN,
	CONSTRAINT fk_library FOREIGN KEY (library_id) REFERENCES libraries (library_id),
	CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES books (book_id)
);


-- users table
CREATE TABLE users(
	user_id SERIAL PRIMARY KEY,
	email VARCHAR(1000) NOT NULL UNIQUE,
	phone VARCHAR(20) NOT NULL UNIQUE,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255),
	address VARCHAR (1000) NOT NULL
);

-- loan status table
CREATE TABLE loan_status (
	status_id INT PRIMARY KEY,
	status VARCHAR (100) NOT NULL UNIQUE
);


INSERT INTO loan_status(
	VALUES
		(1,'Active'),
		(2,'Returned')
); 

-- hold status table
CREATE TABLE hold_status (
	status_id INT PRIMARY KEY,
	status VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO hold_status(
	VALUES
		(1,'Active'),
		(2,'Loaned'),
		(3,'Cancelled'),
		(4,'Expired')
); 

-- loan_transaction table
CREATE TABLE loan_transaction(
	loan_id SERIAL PRIMARY KEY,
	user_id INT NOT NULL,
	collection_id INT NOT NULL,
	loan_date DATE NOT NULL,
	return_date DATE,
	status_id INT NOT NULL,
	CONSTRAINT fk_user_loan FOREIGN KEY (user_id) REFERENCES users (user_id),
	CONSTRAINT fk_collection_loan FOREIGN KEY (collection_id) REFERENCES book_collections (collection_id),
	CONSTRAINT fk_status_loan FOREIGN KEY (status_id) REFERENCES loan_status (status_id)
);

-- hold_transaction table
CREATE TABLE hold_reserve(
	hold_id SERIAL PRIMARY KEY,
	user_id INT NOT NULL,
	collection_id INT NOT NULL,
	hold_start DATE NOT NULL,
	hold_end DATE,
	status_id INT NOT NULL,
	CONSTRAINT fk_user_hold FOREIGN KEY (user_id) REFERENCES users (user_id),
	CONSTRAINT fk_collection_hold FOREIGN KEY (collection_id) REFERENCES book_collections (collection_id),
	CONSTRAINT fk_status_hold FOREIGN KEY (status_id) REFERENCES hold_status (status_id)
);

/* DUMMY DATA: BOOKS */

CREATE TABLE original_book (
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(1000),
	authors VARCHAR(1000),
	average_rating NUMERIC,
	isbn BIGINT,
	isbn13 BIGINT,
	lang VARCHAR(100),
	num_page INT,
	ratings_count INT,
	text_review INT,
	publication_date DATE,
	publisher VARCHAR(100)
);

ALTER TABLE original_book
ALTER COLUMN isbn TYPE BIGINT,
ALTER COLUMN isbn13 TYPE BIGINT;

ALTER TABLE original_book
ADD COLUMN category VARCHAR(1000);

TRUNCATE TABLE original_book