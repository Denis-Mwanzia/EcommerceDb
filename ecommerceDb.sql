
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


