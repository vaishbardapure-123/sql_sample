CREATE TABLE products(id int not null,product_name varchar(20)unique not null ,price bigint unique,check(price>=200));
DESC products;
SELECT * FROM products;
INSERT INTO products values(1,'remote_car','200');
INSERT INTO products values(null,'bike','450');
INSERT INTO products values(3,'remote_car','200');
INSERT INTO products values(4,'null','30');
INSERT INTO products values(5,'cell_phone','200');
INSERT INTO products values(6,'bike','4000');
INSERT INTO products values(7,'teddy','350');
INSERT INTO products values(null,'tractor','10');
INSERT INTO products values(null,'null','570');
INSERT INTO products values(10,'null','210');
COMMIT;



