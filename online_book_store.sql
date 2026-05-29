USE online_book_store;

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

		ALTER TABLE Orders
		ADD CONSTRAINT FK_Orders_Customers
		FOREIGN KEY (Customer_ID)
		REFERENCES Customers(Customer_ID);

		ALTER TABLE Customers
		ADD CONSTRAINT PK_Customers
		PRIMARY KEY (Customer_ID);

-- 1) Retrieve all books in the "Fiction" genre:

		SELECT *
		FROM Books
		WHERE Genre='Fiction';
		
-- 2) Find books published after the year 1950:

		SELECT Book_ID,Title,Published_Year 
		FROM Books
		WHERE Published_Year>1950;

-- 3) List all customers from the Canada:

		SELECT * FROM Customers
		WHERE Country='Canada';

-- 4) Show orders placed in November 2023:

		SELECT * FROM Orders
		WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30';

-- 5) Retrieve the total stock of books available:

		SELECT SUM(Stock) AS total_stock
		FROM Books;
		
-- 6) Find the details of the most expensive book:
		
		SELECT TOP 1 *
		FROM Books
		ORDER BY Price DESC;

-- 7) Show all customers who ordered more than 1 quantity of a book:

	    SELECT * FROM Orders
	    WHERE Quantity>1;

-- 8) Retrieve all orders where the total amount exceeds $20:

		SELECT * FROM Orders
		WHERE Total_Amount>20;

-- 9) List all genres available in the Books table:

		SELECT DISTINCT genre FROM Books;

-- 10) Find the book with the lowest stock:

		SELECT  TOP 1 *
		FROM Books 
		ORDER BY Stock ;

-- 11) Calculate the total revenue generated from all orders:

		SELECT SUM(total_amount) 
		AS Revenue
		FROM Orders;

-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:

		SELECT b.Genre, SUM(O.Quantity) AS Total_Book_Sold
		FROM Orders O
		JOIN Books b ON o.Book_ID = b.Book_ID
		GROUP BY b.Genre;

-- 2) Find the average price of books in the "Fantasy" genre:

		SELECT AVG(Price) AS Average_price
		FROM Books
		WHERE GENRE = 'Fantasy';

-- 3) List customers who have placed at least 2 orders:

		SELECT c.Name,o.Customer_ID, COUNT(o.Order_ID) AS Order_Count
		FROM Orders O
		JOIN Customers c ON o.Customer_ID = c.Customer_ID
		GROUP BY o.Customer_ID, c.Name
		HAVING COUNT(Order_ID) >= 2;

-- 4) Find the most frequently ordered book:
		
		SELECT TOP 1 o.Book_ID,b.Title, COUNT(o.order_ID) AS ORDER_COUNT
		FROM Orders o
		JOIN books b ON o.Book_ID = b.Book_ID
		GROUP BY o.Book_ID, b.Title
		ORDER BY ORDER_COUNT DESC;
		
-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :
	
		SELECT TOP 3 * 
		FROM Books
		WHERE Genre = 'Fantasy'
		ORDER BY Price DESC;

-- 6) Retrieve the total quantity of books sold by each author:

		SELECT b.Author,SUM(o.Quantity) AS Total_Quantity
		from Orders o
		JOIN Books b ON o.Book_ID = b.Book_ID
		GROUP BY b.Author;
		
-- 7) List the cities where customers who spent over $30 are located:

		SELECT DISTINCT c.city,Total_Amount
		FROM Orders o
		JOIN Customers c ON o.Customer_ID = c.Customer_ID
		WHERE o.Total_Amount >= 30;

-- 8) Find the customer who spent the most on orders:

		SELECT TOP 1 c.Customer_ID,c.name,SUM(o.Total_Amount) AS Total_Spent
		FROM Orders o
		JOIN Customers c ON o.Customer_ID = c.Customer_ID
		GROUP BY c.Customer_ID,c.name
	    ORDER BY Total_Spent DESC;
		
--9) Calculate the stock remaining after fulfilling all orders:

		SELECT 
			b.Book_ID,
			b.Title,
			b.Stock,
			COALESCE(SUM(o.Quantity),0) AS Order_Quantity,
			b.Stock - COALESCE(SUM(o.Quantity),0) AS Remaining_Quantity
		FROM Books b
		LEFT JOIN Orders o ON b.Book_ID = o.Book_ID
		GROUP BY
			b.Book_ID,
			b.Title,
			b.Stock;