CREATE DATABASE OnlineBookStore;

USE OnlineBookStore;

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    ISBN VARCHAR(30)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    BookID INT,
    Quantity INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

ALTER TABLE Books
ADD CONSTRAINT unique_isbn UNIQUE (ISBN);

INSERT INTO Orders (OrderID, BookID, Quantity) VALUES
(1, 101, 2),
(2, 102, 3),
(3, 103, 1);

DELETE FROM Orders WHERE OrderID = 2;

TRUNCATE TABLE Orders;
