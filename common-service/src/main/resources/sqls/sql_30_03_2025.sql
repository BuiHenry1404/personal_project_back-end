USE `ROOM-MANAGEMENT-WEB`;

DROP TABLE IF EXISTS MAINTENANCE_FEE;
DROP TABLE IF EXISTS MAINTENANCE_REQUEST;
DROP TABLE IF EXISTS SERVICE;
DROP TABLE IF EXISTS ROOM;

CREATE TABLE MAINTENANCE_FEE (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    MAINTENANCE_REQUEST_ID INT NOT NULL,
    PRICE DECIMAL(10, 2) NOT NULL,
    SERVICE_ROOM_ID INT NOT NULL,
    CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE MAINTENANCE_REQUEST (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    USER_ID INT NOT NULL,
    STATUS VARCHAR(50) NOT NULL,
    REQUEST_DATE DATE NOT NULL,
    DECISION TEXT,
    TOTAL_FEE DECIMAL(10, 2),
    CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE SERVICE (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL,
    IS_ACTIVE TINYINT(1) DEFAULT 1,
    CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE ROOM (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NUMBER VARCHAR(50) NOT NULL,
    LENGTH DECIMAL(5, 2),
    WIDTH DECIMAL(5, 2),
    STATUS VARCHAR(50) NOT NULL,
    NOTE TEXT,
    CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
