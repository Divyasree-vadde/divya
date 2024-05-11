-- Create a table to store information about books
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    Price DECIMAL(10, 2),
    Availability BOOLEAN
);

-- Insert sample data into the Books table
INSERT INTO Books (Title, Author, Genre, Price, Availability)
VALUES 
    ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 15.99, true),
    ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 12.50, true);

-- Query to display all available books
SELECT * FROM Books WHERE Availability = true;

-- Query to search for a book by title
SELECT * FROM Books WHERE Title = 'The Great Gatsby';

-- Query to borrow a book (update availability)
UPDATE Books SET Availability = false WHERE Title = 'The Great Gatsby';

-- Query to return a book (update availability)
UPDATE Books SET Availability = true WHERE Title = 'The Great Gatsby';
