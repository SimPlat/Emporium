-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-05-17 15:22:06.033

-- DB
CREATE DATABASE emporium;
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
    UNIQUE INDEX alternate_key_name (name,retailer),
    UNIQUE INDEX alternate_key_display_name (display_name,retailer),
    CONSTRAINT product_pk PRIMARY KEY (id)
);

-- indices
CREATE INDEX retailer_index ON product (retailer);
CREATE INDEX category_index ON product (category);

-- update coalations to support greek characters 
ALTER TABLE product CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE category CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- foreign keys
-- Reference: category_hierarch (table: category)
ALTER TABLE category ADD CONSTRAINT category_hierarch FOREIGN KEY category_hierarch (parent_name)
    REFERENCES category (name);

-- Reference: product_category (table: product)
ALTER TABLE product ADD CONSTRAINT product_category FOREIGN KEY product_category (category)
    REFERENCES category (name);

-- Spring Session Tables
CREATE TABLE SPRING_SESSION (
    PRIMARY_ID CHAR(36) NOT NULL,
    SESSION_ID CHAR(36) NOT NULL,
    CREATION_TIME BIGINT NOT NULL,
    LAST_ACCESS_TIME BIGINT NOT NULL,
    MAX_INACTIVE_INTERVAL INT NOT NULL,
    EXPIRY_TIME BIGINT NOT NULL,
    PRINCIPAL_NAME VARCHAR(100),
    CONSTRAINT SPRING_SESSION_PK PRIMARY KEY (PRIMARY_ID)
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC;

CREATE UNIQUE INDEX SPRING_SESSION_IX1 ON SPRING_SESSION (SESSION_ID);
CREATE INDEX SPRING_SESSION_IX2 ON SPRING_SESSION (EXPIRY_TIME);
CREATE INDEX SPRING_SESSION_IX3 ON SPRING_SESSION (PRINCIPAL_NAME);

CREATE TABLE SPRING_SESSION_ATTRIBUTES (
    SESSION_PRIMARY_ID CHAR(36) NOT NULL,
    ATTRIBUTE_NAME VARCHAR(200) NOT NULL,
    ATTRIBUTE_BYTES BLOB NOT NULL,
    CONSTRAINT SPRING_SESSION_ATTRIBUTES_PK PRIMARY KEY (SESSION_PRIMARY_ID, ATTRIBUTE_NAME),
    CONSTRAINT SPRING_SESSION_ATTRIBUTES_FK FOREIGN KEY (SESSION_PRIMARY_ID) REFERENCES SPRING_SESSION(PRIMARY_ID) ON DELETE CASCADE
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC;

-- End of file.

