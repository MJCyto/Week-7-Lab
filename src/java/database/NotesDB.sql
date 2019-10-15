DROP DATABASE if exists InventoryDB;
CREATE DATABASE InventoryDB;

USE InventoryDB;

DROP TABLE if exists user_table;

CREATE TABLE if not exists user_table (
    active BOOLEAN NOT NULL DEFAULT TRUE,
    email VARCHAR(40) NOT NULL UNIQUE,
    fname VARCHAR(20) NOT NULL,
    lname VARCHAR(20) NOT NULL,
    password ENUM('password') NOT NULL,
    CONSTRAINT user_email_pk PRIMARY KEY (email)
);

INSERT INTO user_table (active, email, fname, lname, password)
    VALUES (TRUE, 'admin@admin.com', 'First', 'Last', 'password');

INSERT INTO user_table (active, email, fname, lname, password)
    VALUES (TRUE, 'arran.woodruff@sait.edu.ca', 'Arran', 'Woodruff', 'password');

INSERT INTO user_table (active, email, fname, lname, password)
    VALUES (TRUE, 'david.ward@sait.edu.ca', 'David', 'Ward', 'password');

INSERT INTO user_table (active, email, fname, lname, password)
    VALUES (TRUE, 'steven.wong01@sait.edu.ca', 'Steven', 'Wong', 'password');

INSERT INTO user_table (active, email, fname, lname, password)
    VALUES(FALSE, 'alex@gmail.com', 'Alex', 'Carvajal', 'password');

SELECT * FROM user_table;