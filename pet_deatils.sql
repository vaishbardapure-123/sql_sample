CREATE TABLE pet_details(name varchar(20),species varchar(20),sex char(1));
DESC pet_details;
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

UPDATE pet_details SET name = 'fluffy' where sex='f';
COMMIT;
SELECT * FROM pet_details;
ROLLBACK;

UPDATE pet_details SET sex='m' where name ='buffy';
COMMIT;
ROLLBACK;
 
SELECT *FROM pet_details where name='buffy' AND sex ='m';
UPDATE pet_details SET sex='f' WHERE name='buffy' AND sex='m';

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


 
 
 
