CREATE TABLE Students(id int,firstname varchar(20),lastname varchar(20),email_id varchar(20),age int,address char(25),city varchar(20),marks int,Totalmarks int,Result char(1));
SELECT * FROM Students;
INSERT INTO Students VALUES(1,           'vaishnavi','Bardapure','bardapurevaishnavi',22,'Vidyanagar','Bidar',93,100,'p');
INSERT INTO Students VALUES(2,'sneha','kamble','snehakamble_123',21,'Ashoknagar','Bhalki',92,100,'p');
INSERT INTO Students VALUES(3,'Bhagya','    Suryan','suryanbhagya11',23,'RRnagar','Bengaluru',76,100,'p');
INSERT INTO Students VALUES(4,   'Dhiraj','Bhure','bhuredhiraj231',21,'BTM','Bengaluru',90,100,'p');
INSERT INTO Students VALUES(5,'   sidharth','     shinde','sidharthshinde56',23,'Jayanagar','Bidar',45,100,'F');
INSERT INTO Students VALUES(6,      'Rohit','kaddi','rohitkaddi43',21,'basavanagar','Bidar',65,100,'p');
INSERT INTO Students VALUES(	7,'     Ashwini','swamy','ashwiniswamy123',22,'banshankari','Bengaluru',35,100,'F');
INSERT INTO Students VALUES(8,'Ritish','      Reddy','ritishredyy435',23,'JPnagar','Bengaluru',85,100,'p');
INSERT INTO Students VALUES(9,      'swati',      'patne','swatipatne22',21,'Rajajinagar',     'Bengaluru',54,100,'F');
INSERT INTO Students VALUES(10,        'kavya','      shetty','kavyashetty23',24,'whitefield','Bijapur',68,100,'p');
INSERT INTO Students VALUES(11,'Ritik','         Malge','malgeritik34',21,'marthalli','Bengaluru',21,100,'F');
INSERT INTO Students VALUES(12,'     Abhishek','Swamy',   'abishekswamy345',23,'shivnagar','Bidar',56,100,'F');
INSERT INTO Students VALUES(13,'Suchit',     'Gulshette','suchitg215',22,'gandhinagar','Bhalki',97,100,'p');
INSERT INTO Students VALUES(14,'    Sakshi','Pensilwar','psakshi111',21,'Slikboard','Bengaluru',39,100,'F');
INSERT INTO Students VALUES(15,'priyanka',    'patil','patilpriyanka76',23,'nehurunagar','Basavakalyan',78,100,'p');
INSERT INTO Students VALUES(16,'     Sandhya','   Gumme','sandhyagumme4',25,     'kormangal','khanapur',24,100,'F');
INSERT INTO Students VALUES(17,'Akash','Auradhkar','akashaurdhakar04',20,'Kbcolony','Bidar',74,100,'p');
INSERT INTO Students VALUES(18,'Akshata',    'Bardapure','akshatabardapure121',24,'maheshnagar','humnabad',80,100,'p');
INSERT INTO Students VALUES(19,'prajwal','Sirse','psirse346',23,'chikkpete','Bengaluru',29,100,'F');
INSERT INTO Students VALUES(20,'Saikiran','Gadge','saikirang011',    24,'shivajinagar','Bagalkot',69,100,'p');
COMMIT;
SELECT UPPER(firstname) from Students;
SELECT LOWER(firstname) from Students;
SELECT * FROM Students;
SELECT CONCAT(id ,firstname,lastname) from Students;
SELECT LENGTH(firstname) from Students order by firstname;
SELECT INSTR(firstname,'r') from Students;
SELECT INSTR(lastname,'a')from Students;
SELECT SUBSTR(firstname,2,3) from Students;
SELECT LTRIM(firstname) from Students;
SELECT LTRIM(lastname)lastname from Students;
SELECT RTRIM(firstname)from Students;
SELECT LTRIM('     vaishnavi') remove;


Agreegate functions:used to perform the calculations on column.(used only for numeric data)
1.count:used to calculate the no of data in a TABLE
SELECT COUNT(*)FROM TABLE_NAME;
SELECT COUNT(colmn_name) table_name;

SELECT COUNT(*) from Students;

2.sum:
SELECT SUM(column_name) as sum or total from table_name;

3.max:used to find maximum value.
SELECT MAX(column_name) from table_name;

4.min:find the minimum value.
SELECT MIN(column_name) from table_name;

5.averge(AVG):sum of all data/no of data.
SELECT AVG(column_name) from table_name;

/*if data is present in the table we cannot change the datatype ,it will not allow to modify
we can change int to varchar
ALTER tabe_name modify column column_name int;(cannot possible)
ALTER Table_name modify column column_name varchar(20)(possible);*/

SELECT * FROM Students;
SELECT COUNT(marks) from Students;
SELECT SUM(marks) from students;
SELECT SUM(marks) as SUM from Students;
SELECT MAX(marks) from Students;
SELECT MIN(marks) from Students;
SELECT AVG(marks) from Students;

SELECT COUNT(age) from Students;
SELECT SUM(age) from Students;
SELECT MAX(age) from Students;
SELECT MIN(age) from Students;
SELECT AVG(age) from Students;

DISTINCT:used to avoide the duplicate data or values  from the column.
used for both vachar and numeric values.
SELECT DISTINCT(column_name) from table_name;

 SELECT DISTINCT(marks) from Students;


