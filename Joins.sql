CREATE TABLE bank_information(id int not null,b_name varchar(30) unique not null,b_id int not null,no_of_customers int not null,
loan_status varchar(30) default 'active',location varchar(30) not null);

 CREATE TABLE cust_information(id int not null,c_name varchar(30)not null,balance bigint not null,
 c_id int not null,b_id int not null,c_location varchar(30));

CREATE TABLE loan_information(id int not null,loan_typr varchar(40),loan_amount bigint not null,
c_id int not null);

SELECT * FROM bank_information;
SELECT * FROM cust_information;
SELECT * from loan_information;

INSERT INTO bank_information values(1,'axis',501,10,'grace','BTMlayout');
INSERT INTO bank_information values(2,'icici',502,22,'Sanction','silkboard');
INSERT INTO bank_information values(3,'hdfc',503,15,'repayment','banshankari');
INSERT INTO bank_information values(4,'hdb',504,50,'forbearance','RRnagar');
INSERT INTO bank_information values(5,'sbi',505,70,'null','hsrlayout');
INSERT INTO bank_information values(6,'sbh',506,75,'grace','micolayout');
INSERT INTO bank_information values(7,'BankOfBaroda',507,83,'declined','jayanagar');
INSERT INTO bank_information values(8,'CBI',508,112,'sanction','jpnagar');
INSERT INTO bank_information values(9,'UnionBank',509,12,'forbearance','Marathalli');
INSERT INTO bank_information values(10,'AndraBank',510,54,'null','Whitefield');

INSERT INTO cust_information values(1,'akash',51000,701,503,'Bidar');
INSERT INTO cust_information values(2,'abhishek',5400,702,534,'Bengaluru');
INSERT INTO cust_information values(3,'avinash',23000,703,523,'hubbali');
INSERT INTO cust_information values(4,'ashwini',51432,704,507,'Bijapur');
INSERT INTO cust_information values(5,'sharat',76453,705,509,'gulbarga');
INSERT INTO cust_information values(6,'dhiraj',32100,706,514,'humnabad');
INSERT INTO cust_information values(7,'sneha',1000,707,556,'basavkalyan');
INSERT INTO cust_information values(8,'rohit',14560,708,533,'dharwad');
INSERT INTO cust_information values(9,'ester',23456,709,504,'Belagavi');
INSERT INTO cust_information values(10,'virat',27850,710,510,'Bhalki');

INSERT INTO loan_information values(1,'home_loan',74500,756);
INSERT INTO loan_information values(2,'pay_loan',45500,345);
INSERT INTO loan_information values(3,'term_loan',35000,704);
INSERT INTO loan_information values(4,'bussiness_loan',34500,710);
INSERT INTO loan_information values(5,'agriculture_loan',64570,503);
INSERT INTO loan_information values(6,'vacation_loan',55463,568);
INSERT INTO loan_information values(7,'construction_loan',10000,705);
INSERT INTO loan_information values(8,'vehicle_loan',21300,506);
INSERT INTO loan_information values(9,'gold_loan',67000,706);
INSERT INTO loan_information values(10,'auto_loan',85000,701);

SELECT * FROM bank_information b INNER JOIN cust_information c ON b.b_id=c.b_id;
SELECT * FROM cust_information c INNER JOIN loan_information l on c.c_id=l.c_id;
SELECT * FROM bank_information b INNER JOIN loan_information l on b.b_id=l.c_id;
SELECT * FROM bank_information b INNER JOIN cust_information c on b.b_id=c.b_id inner join loan_information l on  b.b_id=l.c_id; 

SELECT * FROM bank_information b left JOIN cust_information c on b.b_id=c.b_id;
SELECT * FROM bank_information b left JOIN loan_information l on b.b_id=l.c_id;
SELECT * FROM cust_information c left JOIN loan_information l on c.c_id=l.c_id;

SELECT * FROM bank_information b right JOIN cust_information c on b.b_id=c.b_id;
SELECT * FROM bank_information b right JOIN loan_information l on b.b_id=l.c_id;
SELECT * FROM cust_information c right JOIN loan_information l on c.c_id=l.c_id;

