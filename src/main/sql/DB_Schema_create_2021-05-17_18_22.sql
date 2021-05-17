-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-05-17 15:22:06.033

-- DB
CRATE DATABASE emporium;
USE emporium;

-- tables
-- Table: category
CREATE TABLE category (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(32) NOT NULL,
    display_name varchar(32) NOT NULL,
    parent_name varchar(32) NULL,
    UNIQUE INDEX alternate_key_name (name),
    CONSTRAINT category_pk PRIMARY KEY (id)
);

CREATE INDEX parent_category_index ON category (parent_name);

-- Table: product
CREATE TABLE product (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(64) NOT NULL,
    display_name varchar(64) NOT NULL,
    brand varchar(16) NULL,
    category varchar(32) NOT NULL,
    retailer varchar(16) NOT NULL,
    price decimal(4,2) NOT NULL,
    UNIQUE INDEX alternate_key_name (name),
    UNIQUE INDEX alternate_key_display_name (display_name),
    CONSTRAINT product_pk PRIMARY KEY (id)
);

CREATE INDEX retailer_index ON product (retailer);

CREATE INDEX category_index ON product (category);

-- foreign keys
-- Reference: category_hierarch (table: category)
ALTER TABLE category ADD CONSTRAINT category_hierarch FOREIGN KEY category_hierarch (parent_name)
    REFERENCES category (name);

-- Reference: product_category (table: product)
ALTER TABLE product ADD CONSTRAINT product_category FOREIGN KEY product_category (category)
    REFERENCES category (name);

-- End of file.

