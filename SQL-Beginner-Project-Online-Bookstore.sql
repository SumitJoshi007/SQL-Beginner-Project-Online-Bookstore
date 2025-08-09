CREATE DATABASE BookstoreDB;

USE bookstoredb;

------------ Books Table: ------------------------------------

CREATE TABLE Books (
	BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(50),
    Price DECIMAL(6,2),
    Stock INT
    );
    
INSERT INTO Books VALUES
(1, 'The Alchemist', 'Paulo Coelho', 350.00, 10),
(2, 'Atomic Habits', 'James Clear', 450.00, 15),
(3, 'Ikigai', 'Hector Garcia', 300.00, 20),
(4, 'Deep Work', 'Cal Newport', 500.00, 5),
(5, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 400.00, 8);    

----------------------- Customers Table:  -------------------------------

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Amit Sharma', 'Delhi'),
(2, 'Neha Verma', 'Mumbai'),
(3, 'Ravi Kumar', 'Bangalore'),
(4, 'Priya Singh', 'Kolkata');

------------------------------- Orders Table: ------------------------------

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    BookID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Orders VALUES
(1, 1, 2, 1, '2025-08-01'),
(2, 2, 1, 2, '2025-08-02'),
(3, 3, 4, 1, '2025-08-02'),
(4, 1, 5, 1, '2025-08-03'),
(5, 4, 3, 3, '2025-08-03');


-- Q1. Display all books available in the store.
	
   SELECT * FROM Books;
   
-- Q2. Show only the title and price of all books.

	SELECT title, price FROM books;
    
-- Q3. List all customers who live in 'Delhi'.

    SELECT * FROM customers WHERE City = 'Delhi';
    
-- Q4. Show all orders with customer name, book title, and order date

	SELECT o.OrderID , c.Name, b.title, o.orderdate 
    FROM orders o 
    JOIN customers c on o.CustomerID = c.CustomerID
    JOIN books b on b.BookID = o.BookID;
    
-- Q5. Find the most expensive book in the store.

	SELECT * FROM books
    order by Price desc
    limit 1;
	
-- Q6.  Count how many customers are from each city.

	SELECT city, Count(*) AS TotalCustomers
    From customers 
    group by city;
    
-- Q7. Show the total sales amount for each order.

	select o.orderid, (b.price * o.quantity) AS TotalAmount FROM orders O
    JOIN books b on b.Bookid = o.bookid;
    
-- Q8. Calculate the total revenue from all orders.

	SELECT SUM(b.price * o.quantity) AS TotalRevenue
    From Orders o 
    join books b on b.bookid = o.bookid;
    
-- Q9. Find the title of books that have less than 10 in stock.

	 Select Title, Stock From books 
     where stock < 10;
     
-- Q10. Show all orders placed on '2025-08-03'.

	SELECT o.OrderID, c.Name, b.Title, o.Quantity
	FROM Orders o
	JOIN Customers c ON o.CustomerID = c.CustomerID
	JOIN Books b ON o.BookID = b.BookID
	WHERE o.OrderDate = '2025-08-03';

