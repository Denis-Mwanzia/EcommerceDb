
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

-- Table: productImage
CREATE TABLE productImage (
    imageID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT,
    imageUrl VARCHAR(255),
    FOREIGN KEY (productID) REFERENCES product(productID)
);

-- Table: color
CREATE TABLE color (
    colorID INT AUTO_INCREMENT PRIMARY KEY,
    colorName VARCHAR(50) NOT NULL
);

-- Table: sizeCategory
CREATE TABLE sizeCategory (
    sizeCategoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(100) NOT NULL
);

-- Table: sizeOption
CREATE TABLE sizeOption (
    sizeOptionID INT AUTO_INCREMENT PRIMARY KEY,
    sizeValue VARCHAR(20) NOT NULL,
    sizeCategoryID INT,
    FOREIGN KEY (sizeCategoryID) REFERENCES sizeCategory(sizeCategoryID)
);

-- Table: productVariation
CREATE TABLE productVariation (
    variationID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT,
    colorID INT,
    sizeOptionID INT,
    FOREIGN KEY (productID) REFERENCES product(productID),
    FOREIGN KEY (colorID) REFERENCES color(colorID),
    FOREIGN KEY (sizeOptionID) REFERENCES sizeOption(sizeOptionID)
);

-- Table: productItem
CREATE TABLE productItem (
    itemID INT AUTO_INCREMENT PRIMARY KEY,
    variationID INT,
    stockQuantity INT,
    price DECIMAL(10, 2),
    sku VARCHAR(100),
    FOREIGN KEY (variationID) REFERENCES productVariation(variationID)
);

-- Table: attributeCategory
CREATE TABLE attributeCategory (
    attributeCategoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(100) NOT NULL
);

-- Table: attributeType
CREATE TABLE attributeType (
    typeID INT AUTO_INCREMENT PRIMARY KEY,
    typeName VARCHAR(50) NOT NULL
);

-- Table: productAttribute
CREATE TABLE productAttribute (
    attributeID INT AUTO_INCREMENT PRIMARY KEY,
    productID INT,
    attributeCategoryID INT,
    typeID INT,
    attributeName VARCHAR(100),
    attributeValue VARCHAR(255),
    FOREIGN KEY (productID) REFERENCES product(productID),
    FOREIGN KEY (attributeCategoryID) REFERENCES attributeCategory(attributeCategoryID),
    FOREIGN KEY (typeID) REFERENCES attributeType(typeID)
);
