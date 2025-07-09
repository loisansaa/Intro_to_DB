USE alx_book_store;

CREATE TABLE IF NOT EXISTS Authors (
    Author_id INT AUTO_INCREMENT PRIMARY KEY,
    Author_name VARCHAR(215) NOT NULL
);

CREATE TABLE IF NOT EXISTS Books (
    Book_id INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(130) NOT NULL,
    Author_id INT,
    Price DOUBLE,
    Publication_date DATE,
    FOREIGN KEY (Author_id) REFERENCES Authors(Author_id)
);

CREATE TABLE IF NOT EXISTS Customers (
    Customer_id INT AUTO_INCREMENT PRIMARY KEY,
    Customer_name VARCHAR(215) NOT NULL,
    Email VARCHAR(215),
    Address TEXT
);

CREATE TABLE IF NOT EXISTS Orders (
    Order_id INT AUTO_INCREMENT PRIMARY KEY,
    Customer_id INT,
    Order_date DATE,
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);

CREATE TABLE IF NOT EXISTS Order_details (
    Orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    Order_id INT,
    Book_id INT,
    Quantity DOUBLE,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);
