create schema doggydaycare;
use doggydaycare;
CREATE TABLE owner (
    Owner_ID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    phone CHAR(10) NOT NULL,
    credit_card_nbr CHAR(16) NOT NULL
);
CREATE TABLE dog (
    K9_ID INT PRIMARY KEY AUTO_INCREMENT,
    Owner_ID INT NOT NULL,
    name VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    gender CHAR NOT NULL,
    reg_date DATE NOT NULL,
    breed VARCHAR(25),
    diet LONGTEXT,
    FOREIGN KEY (Owner_ID)
        REFERENCES owner (Owner_ID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (gender = 'M' OR gender = 'F')
);
CREATE TABLE room (
    number INT PRIMARY KEY,
    CHECK (number = 1 OR number = 2)
);
CREATE TABLE caretaker (
    Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    hire_date DATE NOT NULL
);
CREATE TABLE clock_in (
    clock_in DATETIME PRIMARY KEY,
    Employee_ID INT NOT NULL,
    Room_Number INT NOT NULL,
    clock_out DATETIME,
    FOREIGN KEY (Employee_ID)
        REFERENCES caretaker (Employee_ID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Room_Number)
        REFERENCES room (number)
        ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE check_in (
    Check_in_ID INT PRIMARY KEY AUTO_INCREMENT,
    K9_ID INT NOT NULL,
    Room_Number INT NOT NULL,
    play_time INT,
    drop_time DATETIME NOT NULL,
    pickup_time DATETIME,
    meal_time DATETIME,
    FOREIGN KEY (K9_ID)
        REFERENCES dog (K9_ID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Room_Number)
        REFERENCES room (number)
        ON DELETE CASCADE ON UPDATE CASCADE
);