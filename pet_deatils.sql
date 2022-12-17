/*syntax for creating the database
CREATE DATABASE database_name;*/
CREATE DATABASE XWORKZ_ODC;
use  XWORKZ_ODC;
/*syntax for creating the table
CREATE TABLE table_name(column_name datatype,column_name datatype);
varchar(30):it will accept alphanumeric;
int:it will accept only numeric values;
bigint:numeric values;
boolean:it will accept true and false;*/
CREATE TABLE bank_transaction(id int,cust_name varchar(20),acc_num bigint,balance bigint,location varchar(20));
DESC bank_transaction;
CREATE TABLE pet_details(name varchar(20),species varchar(20),sex char(1));
DESC pet_details;
CREATE TABLE products(product_name varchar(20),price bigint);
DESC products;
ROLLBACK;
SELECT:used to fetch or read the data from table.
/*sytanx for select 
SELECT * FROM TABLE_NAME;*/
SELECT * FROM bank_transaction;

ALTER:
Adding the column to exsting table
/*syntax 
ALTER TABE TABLE_NAME ADD COLUMN COLUMN_NAME DATATYPE;*/
ALTER TABLE bank_transaction ADD COLUMN location varchar(20);

 
CREATE TABLE pet_details(name varchar(20),species varchar(20),sex char(1)); 
ALTER TABLE pet_details DROP COLUMN birth;
DESC pet_details;
SELECT * FROM pet_details;
INSERT INTO pet_details VALUES('fluffy','cat','f');
 INSERT INTO pet_details VALUES('claws','cat','f');
 INSERT INTO pet_details VALUES('harold','dog','m');
 INSERT INTO pet_details VALUES('benny','dog','f');
 INSERT INTO pet_details VALUES('fang','cat','m');
 INSERT INTO pet_details VALUES('bowser','bird','f');
 INSERT INTO pet_details VALUES('chirpy','bird','m');
 INSERT INTO pet_details VALUES('whistler','cat','f');
 INSERT INTO pet_details VALUES('slim','snake','f');
 INSERT INTO pet_details VALUES('buffy','bird','f');
 INSERT INTO pet_details VALUES ('buffy' ,'snake', 'm');

 
 UPDATE:/*syntax
UPDATE table_name SET coulumn_name ='newdata' where condition;*/

DELETE:
/*DELETE FROM table_name where condition;*/ delete can rollback the data

TCL(trTablesansaction control language):
COMMIT
ROLLBACK
UPDATE pet_details SET location = 'BTM' where id=2;
COMMIT;
SELECT * FROM pet_details;
ROLLBACK;

UPDATE pet_details SET sex='m' where name ='buffy';
COMMIT;
ROLLBACK;
 
AND:
COND1 COND2   RESULT1
TRUE   FALSE   FALSE
FALSE   TRUE    FALSE
FALSE   FALSE   FALSE
TRUE    TRUE     TRUE
SELECT *FROM pet_details where name='buffy' AND sex ='m';
UPDATE pet_details SET sex='f' WHERE name='buffy' AND sex='m';

OR:
COND1  COND2  RESULT
TRUE   FALSE  TRUE
FALSE  FALSE  FALSE
FALSE  TRUE   TRUE
TRUE   TRUE   TRUE

SELECT * FROM pet_details ;
SELECT name FROM pet_details where name='buffy' or species='cat';

IN:
to avoid the use of multiple or condition.
SELECT * FROM pet_details where name in('fluffy','buffy','fang');
SELECT *FROM pet_details where species in('fluffy','buffy','fang');
UPDATE pet_details SET sex='f'where name in('buffy','fluffy');

NOT IN:(not used for delete and update)
SELECT * FROM pet_details where name not in('buffy','fluffy');
ROLLBACK;

BETWEEN:(used to fetch the data within the range not used in delete and update)
SELECT * FROM pet_details where name between 'fluffy' and 'buffy';

ORDER BY:(fetch the data in ascending or descending order)(DESC:DESCENDING)
SELECT * FROM pet_details order by name;
SELECT * FROM pet_details order by name DESC;

/*upper ,lower,instr,sunstr,ltrim,rtrim,lpad,rpad*/
UPPER:(to fetch all the data in upper case)
SELECT *FROM pet_details;
SELECT UPPER(NAME) as converted from pet_details;

LOWER:
SELECT LOWER(NAME) as converted from pet_details;

CONCAT:(used to merge two data or column by extending as merge)
SELECT CONCAT( 'XWORKZ','ODC') as merge;
SELECT CONCAT('name','SPECIES')  as combined from pet_details;

LENGTH:
SELECT LENGTH(NAME) from pet_details order by name;

INSTR:(IN STRING give the position of character from string)
SELECT INSTR('XWORKZ','R') AS position;
SELECT INSTR('xworkodc','o')AS position;
SELECT INSTR(name,'f') from pet_details;

 SUBSTR:(SUB STRING getting part of a original string)
 substr(originalstring,startposition,no_of_character_to_fetch)
 SELECT SUBSTR('Bengaluru',3,5) as substin;
 SELECT SUBSTR(name,2,3)from pet_details;
 
 
 SELECT * FROM bike_details;

 
 
 
 
 LTRIM:(used to remove the leading spaces from the data)left spaces remove
SELECT LTRIM('   JAVA') AS REMOVE;
SELECT LTRIM(b_name) from bike_details; 
SELECT LENGTH(b_name),b_name from bike_datils;
 
RTRIM:(it removes TRAILING SPACES ,RIGHT SPACE REMOVE)
SELECT RTRIM('Xworkz   ')as remove;
SELECT RTRIM(b_name) from bike_deatils;
SELECT RTRIM(LTRIM(b_name)) from bike_details;


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


