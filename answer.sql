-- Write your answers here
-- Question 1: Create the categories table
CREATE TABLE categories (
    categoryID INT AUTO_INCREMENT PRIMARY KEY,  -- Primary key with auto-increment
    categoryName VARCHAR(50) NOT NULL           -- Category name with a maximum of 50 characters
);

-- Question 2: Insert at least 5 categories into the categories table
INSERT INTO categories (categoryName) VALUES
('Electronics'),
('Furniture'),
('Groceries'),
('Clothing'),
('Utilities');

-- Question 3: Create the customer table
CREATE TABLE customers (
    customerID INT AUTO_INCREMENT PRIMARY KEY,  -- Primary key with auto-increment
    customerName VARCHAR(50) NOT NULL,          -- Customer name, not allowing NULL values
    email VARCHAR(50),                          -- Email address with a maximum of 50 characters
    phoneNumber VARCHAR(11),                    -- Phone number with a maximum of 11 characters
    customerAddress VARCHAR(20),                -- Customer address with a maximum of 20 characters
    dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Automatically record the time of creation
);

-- Question 4: Insert at least 4 customer records into the customer table
INSERT INTO customers (customerName, email, phoneNumber, customerAddress) VALUES
('John Doe', 'john.doe@example.com', '1234567890', 'Westlands'),
('Jane Smith', 'jane.smith@example.com', '0987654321', 'Kilimani'),
('Alice Brown', 'alice.brown@example.com', '1122334455', 'Parklands'),
('Bob Green', 'bob.green@example.com', '5566778899', 'Ngong Road');

-- Question 5: Update customerAddress to "Lavington" for customerID = 1 and customerID = 2
UPDATE customers
SET customerAddress = 'Lavington'
WHERE customerID IN (1, 2);

-- Question 6: Delete the category where categoryID is equal to 2
DELETE FROM categories
WHERE categoryID = 2;
categories
