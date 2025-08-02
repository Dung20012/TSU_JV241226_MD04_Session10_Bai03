create database session_10;
use session_10;

CREATE TABLE customers (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20) UNIQUE,
    status BOOLEAN DEFAULT TRUE,
    role ENUM('ADMIN', 'USER') DEFAULT 'ADMIN'
);

INSERT INTO customers (username, password, email, phone, status, role) VALUES
('admin01', 'admin123', 'admin01@example.com', '0912345678', TRUE, 'ADMIN'),
('user01', 'user1234', 'user01@example.com', '0934567890', TRUE, 'USER'),
('user02', 'user5678', 'user02@example.com', '0856789123', TRUE, 'USER'),
('user03', 'user9999', 'user03@example.com', '0701234567', FALSE, 'USER'),
('manager', 'manager1', 'manager@example.com', '0387654321', TRUE, 'ADMIN');

