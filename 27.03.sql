USE relational_db;

CREATE TABLE relational_user(
	id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE relational_account(
	id INT PRIMARY KEY,
    balance FLOAT,
    user_id VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES relational_user(id)
 	);
    
INSERT INTO relational_user (id, name) VALUES
('a', 'user A'),
('b', 'user B');

INSERT INTO relational_account (id, balance, user_id) VALUES
(857452, 140000, 'a'),
(255566, 5200000, 'b');

SELECT * FROM relational_account;

USE relational_db;

CREATE TABLE relational_supplier (
	id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) UNIQUE
);

INSERT INTO relational_supplier (id, name) VALUES
('c', 'Fornecedor C'),
('d', 'Fornecedor D');

CREATE TABLE relational_product (
	id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    price FLOAT,
    supplier_id VARCHAR(255),
    FOREIGN KEY (supplier_id) REFERENCES relational_suppliers(id)
);

INSERT INTO relational_product (id, name, price, supplier_id) VALUES
('okm', 'cenoura', 10.00, 'c'),
('uhb', 'abacate', 11.50, 'c'),
('ygv', 'cebola', 12.00, 'c'),
('ijn', 'camarão', 21.50, 'd'),
('tfc', 'lula', 22.00, 'd');

SELECT * FROM relational_product;

CREATE TABLE relational_sale (
	user_id VARCHAR(255),
    product_id VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES relational_user(id),
    FOREIGN KEY (product_id) REFERENCES relational_product(id)
);

INSERT INTO relational_sale VALUES
('b', 'okm'), ('b','uhb'), ('a','ygv'), 
('uhb', 'abacate', 11.50, 'c'),
('ygv', 'cebola', 12.00, 'c'),
('ijn', 'camarão', 21.50, 'd'),
('tfc', 'lula', 22.00, 'd');

SELECT * FROM relational_product;