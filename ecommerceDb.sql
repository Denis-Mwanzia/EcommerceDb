
-- ==============================================
-- E-commerce Database Schema
-- ==============================================

-- Create E-commerce Database
CREATE DATABASE ecommercedb;

-- Use E-commerce Database
USE ecommercedb;

-- Table: brand
CREATE TABLE brand (
    brandID INT AUTO_INCREMENT PRIMARY KEY,
    brandName VARCHAR(100) NOT NULL
);

-- Table: productCategory
CREATE TABLE productCategory (
    categoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(100) NOT NULL
);

-- Table: product
CREATE TABLE product (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(150) NOT NULL,
    brandID INT,
    categoryID INT,
    basePrice DECIMAL(10, 2),
    description TEXT,
    FOREIGN KEY (brandID) REFERENCES brand(brandID),
    FOREIGN KEY (categoryID) REFERENCES productCategory(categoryID)
);


