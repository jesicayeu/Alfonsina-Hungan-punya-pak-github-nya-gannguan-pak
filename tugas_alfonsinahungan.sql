--1
CREATE TABLE products(
    id_products INT PRIMARY KEY,
    kategori_products VARCHAR(50) NOT NULL,
    nama_products VARCHAR(50) NOT NULL,
    harga_products VARCHAR(50) NOT NULL,
    stok_products INT
);

--2
INSERT INTO products(id_products, kategori_products, nama_products, harga_products, stok_products)
VALUES('11','mainan','boneka','25000',30),
('12','mainan','kelereng','30000',50),
('13','mainan','balon','40000',70),
('14','minuman','aqua','90000',10),
('15','minuman','teh_kotak','22000',22),
('16','minuman','coca_cola','10000',33),
('17','elektronik','setrika','30000',77),
('18','elektronik','jam','55000',40),
('19','elektronik','lampu','21000',60);

--3
INSERT INTO products(id_products, kategori_products, nama_products, harga_products, stok_products)
VALUES('11','mainan','boneka','25000',30),
('12','mainan','kelereng','30000',50),
('13','mainan','balon','40000',70),
('14','minuman','aqua','90000',10),
('15','minuman','teh_kotak','22000',22),
('16','minuman','coca_cola','10000',33),
('17','elektronik','setrika','30000',77),
('19','elektronik','lampu','21000',60);
SELECT*FROM products ;
SELECT AVG (harga_products)  FROM products ;
SELECT*FROM products where harga_products 35888.88888888889 ;

--4
UPDATE products
SET stok_products = '75'
WHERE id_products = '13';

--5
SELECT SUM(stok_products) AS stok_products FROM products;

--6
SELECT * FROM products WHERE stok_products > 20 AND harga_products < 40000;

--7
SELECT * FROM products ORDER BY harga_products ASC;

--8
SELECT * FROM products WHERE stok_products <40;

--9
SELECT (harga_products*stok_products) AS stok_products FROM products;

--10
ALTER TABLE products
ADD COLUMN discount DECIMAL(5,2);