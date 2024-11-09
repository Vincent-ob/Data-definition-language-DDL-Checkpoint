-- Create Product table
CREATE TABLE Product (
    Product_id NUMBER PRIMARY KEY,
    Product_name VARCHAR2(100) NOT NULL,
    Price NUMBER NOT NULL,
    Category VARCHAR2(20)
);

-- Create Orders table
CREATE TABLE Orders (
    Order_id NUMBER PRIMARY KEY,
    Order_date DATE NOT NULL,
    Product_id NUMBER,
    Quantity NUMBER NOT NULL,
    CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

-- Add Category column to Product table (if not already there)
ALTER TABLE Product ADD Category VARCHAR2(20);

-- Add OrderDate column to Orders table with default value as SYSDATE
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;