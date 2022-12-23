CREATE TABLE districts(d_id int primary key,d_name varchar(40) unique,no_of_taluks int default null);
CREATE TABLE taluks(t_id int not null,t_name varchar(40) unique not null,d_head_quarter varchar(40),foreign key(t_id) references districts(d_id));
SELECT * FROM districts;
INSERT INTO districts(d_id,d_name,no_of_taluks) values(1,'bagalkot',9);
INSERT INTO districts(d_id,d_name,no_of_taluks) values(2,'ballari',5);
INSERT INTO districts(d_id,d_name,no_of_taluks) values(3,'chikkmagaluru',9);
INSERT INTO districts(d_id,d_name,no_of_taluks) values(4,'davangere',6);
INSERT INTO districts(d_id,d_name,no_of_taluks) values(5,'dharwad',8);
INSERT INTO districts(d_id,d_name,no_of_taluks) values(6,'gadag',7);
INSERT INTO districts(d_id,d_name,no_of_taluks) values(7,'haasan',8);
INSERT INTO districts(d_id,d_name,no_of_taluks) values(8,'kalburgi',11);
INSERT INTO districts(d_id,d_name,no_of_taluks) values(9,'kolar',6);
INSERT INTO districts(d_id,d_name,no_of_taluks) values(10,'bidar',8);

SELECT * FROM taluks;
INSERT INTO taluks(t_id,t_name,d_head_quarter) values(1,'mudhole','bagalkot');
INSERT INTO taluks(t_id,t_name,d_head_quarter) values(2,'hosakote','bangalore');
INSERT INTO taluks(t_id,t_name,d_head_quarter) values(3,'khanapur','belgum');
INSERT INTO taluks(t_id,t_name,d_head_quarter) values(4,'bellari','bellary');
INSERT INTO taluks(t_id,t_name,d_head_quarter) values(5,'kadur','chikmagaluru');
INSERT INTO taluks(t_id,t_name,d_head_quarter) values(6,'puttur','mangalore');
INSERT INTO taluks(t_id,t_name,d_head_quarter) values(7,'nargund','gadag');
INSERT INTO taluks(t_id,t_name,d_head_quarter) values(8,'alur','haasan');
INSERT INTO taluks(t_id,t_name,d_head_quarter) values(9,'bangarpet','kolar');
INSERT INTO taluks(t_id,t_name,d_head_quarter) values(10,'basavakalyan','bidar');











