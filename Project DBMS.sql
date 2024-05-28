Drop table Soldier;
Drop table Squad;
Drop table LOCATIONS;
Drop table visited;
Drop table War;
Drop table swork;
Drop table posting;
Drop table SoldierStatus ;
Drop table MEDAL;
Drop table WEAPONS;
Drop table assign ;
Drop table inventory ;


CREATE TABLE Soldier
(
id INTEGER NOT NULL,
name VARCHAR(100) NOT NULL,
rank VARCHAR(30) NOT NULL,
doj DATE NOT NULL,
dob DATE NOT NULL,
dor DATE NOT NULL,
b_name VARCHAR(100) NOT NULL,
birthplacepincode  VARCHAR(6) NOT NULL,
sex INTEGER  NOT NULL CHECK (SEX = 1 OR SEX = 0),
height INTEGER CHECK (Height > 152),
weight INTEGER CHECK (Weight > 50),
chest  INTEGER CHECK (Chest > 35),
UNIQUE (id),
PRIMARY KEY (id, b_name, birthplacepincode)
);


CREATE TABLE Squad
(
B_name VARCHAR(100),
Captain_id  INTEGER NOT NULL,
yea INTEGER NOT NULL,
totalCapacity INTEGER NOT NULL CHECK (totalCapacity > 0),
PRIMARY KEY(B_name, yea)
);

CREATE TABLE LOCATIONS
(
pincode VARCHAR(6) PRIMARY KEY CHECK (length(pincode) = 6),
district VARCHAR(100) NOT NULL,
state  VARCHAR(100) NOT NULL,
country  VARCHAR(100) NOT NULL
);

CREATE TABLE visited
(
sold_id INTEGER NOT NULL,
pincode VARCHAR(6) NOT NULL,
datee DATE NOT NULL,
Reason  VARCHAR(100) NOT NULL,
PRIMARY KEY (sold_id, pincode, datee)
 );

CREATE TABLE War
(
pincode VARCHAR(6) NOT NULL ,
status INTEGER NOT NULL CHECK (Status = 0 OR Status = 1 OR Status = 2),
datee  DATE NOT NULL,
UNIQUE(datee),
PRIMARY KEY (pincode, datee)
);

CREATE TABLE swork
(
type VARCHAR(100) PRIMARY KEY,
salary INTEGER NOT NULL
);

CREATE TABLE posting
(
sold_id INTEGER NOT NULL ,
pincode VARCHAR(6) NOT NULL ,
datee DATE NOT NULL,
PRIMARY KEY (sold_id, pincode, datee)
);

CREATE TABLE SoldierStatus 
(
sold_id INTEGER NOT NULL ,
alive INTEGER NOT NULL ,
wardate DATE NOT NULL,
pincode Number NOT NULL,
PRIMARY KEY (sold_id, wardate, pincode)
);

CREATE TABLE MEDAL
(
name VARCHAR(100) PRIMARY KEY
);

CREATE TABLE WEAPONS
(
weapon_id INTEGER PRIMARY KEY,
name   VARCHAR(100) 
);

CREATE TABLE assign 
(
sold_id   INTEGER NOT NULL,
type VARCHAR(100) NOT NULL 
);


CREATE TABLE inventory 
(
b_name    INTEGER NOT NULL,

sold_id     INTEGER NOT NULL,

PRIMARY KEY (b_name, sold_id)
);


  INSERT INTO Soldier VALUES(19339,'Arjun Pratap','Soldier','15-APR-2012','23-MAY-1987','20-AUG-2059','Sikh Regiment',382436,1,176,70,53);
  INSERT INTO soldier VALUES(33998,'Karan Jagtap','Soldier','16-MAY-2008','23-MAY-1982','21-APR-2049','Sikh Regiment',382427,1,179,76,59);
  INSERT INTO soldier VALUES (49159,'Vijay Kumar Ahirwar','Major General','15-MAY-2011','27-APR-1983','21-MAR-2020','Sikh Regiment',382427,1,176,70,40);
  INSERT INTO soldier VALUES (29603,'Rohan Dhoot','Soldier','21-JUN-2005','24-AUG-1987','17-MAY-2012','Sikh Soldier',382429,1,182,76,37);
  INSERT INTO soldier VALUES (21474,'Brijmohan Singh','Field Marshal','21-DEC-2010','24-DEC-1990','17-MAY-2050','Sikh Regiment',382422,1,172,80,41);
  INSERT INTO soldier VALUES(12498,'Rajat Talesra','Soldier','4-DEC-2004','13-JAN-1995','10-DEC-2048','Sikh Regiment',382425,1,177,79,43);
  INSERT INTO soldier VALUES(14298,'Niranjan Arya','Lieutenant General','14-MAY-2014','17-NOV-1996','01-FEB-2054','Sikh Regiment',382421,1,158,82,43);
  INSERT INTO soldier VALUES (10923,'Disha Singh','Major General','25-MAY-2001','2-OCT-1990','21-FEB-2041','Jat Regiment',382424,1,171,52,42);
  INSERT INTO soldier Values(12398,'Saurabh Pandit','Soldier','15-APR-2011','29-MAR-1996','11-DEC-2051','Jat Regiment',382423,1,185,74,42);
  INSERT INTO soldier VALUES(12245,'Dheeru','Soldier','11-SEP-2010','23-FEB-1990','16-JUN-2040', 'Jat Regiment',382425,1,172,78,43);
  INSERT INTO soldier VALUES (10305,'Vikul Kumar','Captain','11-OCT-2014','24-JAN-1994','16-JUL-2050','Jat Regiment',382426,1,176,75,41);
  INSERT INTO soldier VALUES (12051,'Mayank','Soldier','21-SEP-2011','24-FEB-1991','26-JUN-2045','Jat Regiment',382427,1,174,75,42);
  INSERT INTO soldier VALUES (12300,'Piyush', 'Soldier', '21-SEP-2005','24-JAN-1992','16-JUN-2040','Madras Regiment', 382428, 1,162,68,41);
  INSERT INTO soldier VALUES (12105,'Yogendra','Major','11-JUN-2009','14-FEB-1989','26-JUL-2042','Jat Regiment',382429,1,162,68,41);
  INSERT INTO soldier VALUES (14345,'Shubham verma','Soldier','11-MAR-2004','24-FEB-1990','26-MAY-2040','Jat Regiment',282429,1,172,78,42);
  INSERT INTO soldier VALUES (11145,'Ankur Ranjan','Brigadier','11-OCT-2013','14-JAN-1990','16-JUL-2050','Sikh Regiment',382430,1,170,76,43);
  INSERT INTO soldier VALUES (12115,'Anil Kumvat','Soldier','11-OCT-2008','14-JUN-1988','16-JUL-2045','Madras Regiment',382431,1,171,80,42);
  INSERT INTO soldier VALUES (12045,'Himanshu Kumar','Soldier','11-AUG-2011','16-MAR-1990','16-JUL-2052','Madras Regiment',382432,1,172,80,41);
  INSERT INTO soldier VALUES(10345,'Vikram Meena','Lieutenant','18-JUN-2013','28-AUG-1992','16-SEP-2055','Rajputana Rifles',382433,1,176,88,40);
  INSERT INTO soldier VALUES (10045,'Shubhandra Vikram','Soldier','19-OCT-2007','11-MAR-1987','26-AUG-2045','Rajputana Rifles', 382434, 1, 173,74,42);
  INSERT INTO soldier VALUES (12005,'Vikas Singh','Colonel','21-OCT-2015','14-JUL-1994','26-APR-2056','Rajput Regiment',382436,1,174,81,40);
  INSERT INTO soldier VALUES (11305,'Rohit Singh','Havildar','21-JAN-2011','14-SEP-1989','16-JUN-2056','Rajput Regiment',382437,1,173,86,41);
  INSERT INTO soldier VALUES (11045,'Shivam Singh','Soldier','29-AUG-2013','14-AUG-1990','26-AUG-2050','Rajputana Riffles',382422,1,177,78,42);
  INSERT INTO soldier VALUES (21045,'Shubham Singh','Soldier','29-NOV-2000','24-JAN-1980','26-JAN-2045','Sikh Regiment',382424,1,178,88,41);
  INSERT INTO soldier VALUES (21040,'Sunny Prakash','Soldier','29-JAN-2013','14-MAY-1991','16-APR-2047','Jat Regiment',382425,1,169,74,45);
  INSERT INTO soldier VALUES (22045,'Virat Kohli','Major','21-OCT-2011','11-JUN-1992','26-JAN-2048','Madras Regiment',382426,1,175,68,43);
  INSERT INTO soldier VALUES (13045,'Ayush Mudgal','Havildar','19-SEP-2010','24-JAN-1989','20-JAN-2045','Madras Regiment',382426,1,172,80,42);
  INSERT INTO soldier VALUES (11046,'Kilan Ravani','Soldier','30-AUG-2011','18-MAR-1990','16-APR-2044','Sikh Regiment',382427,1,175,78,43);
  INSERT INTO soldier VALUES(44668,'KamalAwasthi','Soldier','12-FEB-2013','21-APR-1993','23-FEB-2043','MadrasRegiment',382421,1,162,65,40);
  INSERT INTO soldier VALUES(17694,'Harminder Kaur','FieldMarshal','09-AUG-2005','25-MAY-1985','11-OCT-2042','MadrasRegiment',382428,1,160,55,40);
  INSERT INTO soldier VALUES(26548,'BijendraVerma','Soldier','09-AUG-2006','12-AUG-1981','10-MAY-2045','MadrasRegiment',382423,1,167,59,50);
 INSERT INTO soldier VALUES(28613,'Hamid AhmedQureshi','Soldier','24-FEB-2008','10-JUN-1988','02-APR-2036','MadraRegiment',382422,1,164,54,38);
 INSERT INTO soldier VALUES(27989,'RakshitJain','Major','06-AUG-2013','13-FEB-1990','12-JUN-2040','MadrasRegiment',382424,1,169,59,42);
 INSERT INTO soldier VALUES(14256,'SubhamSingh','Captain','04-MAY-2010','13-JUN-1988','12-FEB-2050','RajputanaRifles',382430,1,168,54,40);
 INSERT INTO soldier VALUES(33728,'SandeepSingh','Brigadier','18-AUG-2009','21-MAY-1983','18-MAY-2051','RajputanaRifles',382424,1,168,58,44);

INSERT INTO Squad VALUES('Madras Regiment', 13011, 1992,20);
INSERT INTO Squad VALUES('Madras Regiment',27989,2013,25);
INSERT INTO Squad VALUES('Rajputana Rifles' ,14255,1996,18);
INSERT INTO Squad VALUES('Rajputana Rifles' ,14256,2010,22);
INSERT INTO Squad VALUES('Sikh Regiment',12402,1980,15);
INSERT INTO Squad VALUES('Sikh Regiment',11046,2011,19);
INSERT INTO Squad VALUES('Jat Regiment',11238,1994,18);
INSERT INTO Squad VALUES('Jat Regiment',10305,2014,24);
INSERT INTO Squad VALUES('Rajput Regiment',12356,1982,15);
INSERT INTO Squad VALUES('Rajput Regiment',49158,2011,18);

INSERT INTO LOCATIONS VALUES(382421,'Gandhinagar','Gujarat','India');
INSERT INTO LOCATIONS VALUES(382422,'Allahabad','Uttar Pradesh','India');
INSERT INTO LOCATIONS VALUES(382423,'Bakora Steel City', 'Jharkhand', 'India');
INSERT INTO LOCATIONS VALUES(382424,'patna','Bihar','India');
INSERT INTO LOCATIONS VALUES(382425,'jabalpur','Madhya Pradesh','India');
INSERT INTO LOCATIONS VALUES(382426,'Imphal','Manipur','India');
INSERT INTO LOCATIONS VALUES(382427,'Pune','Mumbai','India');
INSERT INTO LOCATIONS VALUES(382428,'Delhi','Delhi','India');
INSERT INTO LOCATIONS VALUES(382429,'Kargil','J and K','India');
INSERT INTO LOCATIONS VALUES(382430,'Danapur','Bihar','India');
INSERT INTO LOCATIONS VALUES(382431,'Gangtok','Sikkim','India');
INSERT INTO LOCATIONS VALUES(382432,'Ganganagar','Rajasthan','India');
INSERT INTO LOCATIONS VALUES(382433,'Kohima','Nagaland','India');
INSERT INTO LOCATIONS VALUES(382434,'Roorkee','Uttarakhand','India');
INSERT INTO LOCATIONS VALUES(382436,'Durgapur','Westbangal','India');
INSERT INTO LOCATIONS VALUES(382437,'Chiniot','Panjab','India');

INSERT INTO MEDAL VALUES('Ashok Chakra Award ');
INSERT INTO MEDAL VALUES('Kirti Chakra ');
INSERT INTO MEDAL VALUES('Shaurya Chakra ');
INSERT INTO MEDAL VALUES('Sarvottam Yudh Seva Medal');
INSERT INTO MEDAL VALUES('Yudh Seva Medal');
INSERT INTO MEDAL VALUES('Ati Vishisht Seva Medal ');
INSERT INTO MEDAL VALUES('Vishisht Seva Medal');
INSERT INTO MEDAL VALUES('Bharat Award ');
INSERT INTO MEDAL VALUES('Sarvottam Jeevan Raksha Padak'); 
INSERT INTO MEDAL VALUES('Uttam Jeevan Raksha Padak'); 
INSERT INTO MEDAL VALUES('Jeevan Raksha Padak');

INSERT INTO WEAPONS  VALUES (1053, 'Glock-18');
INSERT INTO WEAPONS  VALUES (1054, 'Dual Berettas');
INSERT INTO WEAPONS VALUES (1055, 'P250');
INSERT INTO WEAPONS  VALUES (1056, 'Tec-9');
INSERT INTO WEAPONS  VALUES (1057, 'CZ75-Auto');
INSERT INTO WEAPONS  VALUES (1058, 'Desert Eagle');
INSERT INTO WEAPONS  VALUES (1059, 'R8 Revolver');
INSERT INTO WEAPONS  VALUES (1060, 'USP-S');
INSERT INTO WEAPONS  VALUES (1061, 'P2000');
INSERT INTO WEAPONS  VALUES (1062, 'Five-Seven');
INSERT INTO WEAPONS  VALUES (1063, 'Nova');
INSERT INTO WEAPONS  VALUES (1064, 'XM1014');
INSERT INTO WEAPONS  VALUES (1065, 'Sawed-Off');
INSERT INTO WEAPONS  VALUES (1066, 'M249');
INSERT INTO WEAPONS VALUES (1067, 'Negev');
INSERT INTO WEAPONS  VALUES (1068, 'MAG-7');
INSERT INTO WEAPONS  VALUES (1069, 'MAC-10');
INSERT INTO WEAPONS  VALUES (1070, 'MP7');
INSERT INTO WEAPONS  VALUES (1071, 'UMP-45');
INSERT INTO WEAPONS  VALUES (1072, 'P90');
INSERT INTO WEAPONS  VALUES (1073, 'PP-Bizon');
INSERT INTO WEAPONS  VALUES (1074, 'MP9');
INSERT INTO WEAPONS  VALUES (1075, 'Galil AR');
INSERT INTO WEAPONS  VALUES (1076,'AK-47');
INSERT INTO WEAPONS  VALUES (1077, 'SSG 08');
INSERT INTO WEAPONS  VALUES (1078, 'SG 553');
INSERT INTO WEAPONS  VALUES (1079, 'AWP');
INSERT INTO WEAPONS VALUES (1080, 'G3SG1');
INSERT INTO WEAPONS  VALUES (1081, 'FAMAS');
INSERT INTO WEAPONS  VALUES (1082, 'M4A4');
INSERT INTO WEAPONS  VALUES (1083, 'M4A1-S');
INSERT INTO WEAPONS  VALUES (1084, 'AUG');
INSERT INTO WEAPONS  VALUES (1085, 'SCAR-20');

INSERT INTO swork Values ('Soldier', 23000);
INSERT INTO swork Values ('Havildar', 12000);
INSERT INTO swork Values ('Lieutenant', 56100);
INSERT INTO swork Values ('Field Marshal',250000);
INSERT INTO swork Values (' General', 144200);
INSERT INTO swork Values ('Brigadier', 134400);
INSERT INTO swork Values ('Colonel',125700);
INSERT INTO swork Values ('Major', 69400);
INSERT INTO swork Values ('Captain',61300);

INSERT INTO visited VALUES(19339,'382422','10-JAN-2011','For a confidential meeting');
INSERT INTO visited VALUES (33998, '382426','05-OCT-2015','For meeting with a Chinese officer');
INSERT INTO visited VALUES (13423, '382425','26-MAY-2013','For meeting on movement of pakistan');
INSERT INTO visited VALUES (49159, '382429','28-DEC-2006','For a meeting of visit of Dalai Lama');
INSERT INTO visited VALUES (29603, '382436','12-JUL-2008','For reviewing a deal of weapons with Russia');
INSERT INTO visited VALUES (10923, '382429','21-MAR-2005','For awarding a medal');
INSERT INTO visited VALUES (12300, '382427','04-NOV-2003','For discussing border-security issues in Capital');
INSERT INTO visited VALUES (11305, '382430','05-JAN-2010','For a techincal meeting on radar technology with Taiwan');
INSERT INTO visited VALUES (10045, '382431','19-JAN-2013','For a surgical strike on Pakistan.');
INSERT INTO visited VALUES (12005, '382425','30-SEP-2016','For a meeting with the naval-chief');
INSERT INTO visited VALUES (11046, '382436','31-JAN-2017','For a meeting at Indo-Pak Border');
INSERT INTO visited VALUES (13045, '382437','17-JAN-2011','For a meeting with Air-chief');
INSERT INTO visited VALUES (21045, '382428','12-OCT-2001','For a confidential meeting');
INSERT INTO visited VALUES (14345, '382422','12-DEC-2016','For reviewing a deal of weapons with America');
INSERT INTO visited VALUES (12300, '382421','19-MAY-2009','For a meeting in New-Delhi');
INSERT INTO visited VALUES (14345, '382427','05-AUG-2008','For a meeting with Chinese officials');
INSERT INTO visited VALUES (12245, '382433','24-NOV-2001','For a meeting on purchasing new weapons');

insert into posting values (12045,'382425','07-JAN-2012');
insert into posting values (21040,'382425','15-APR-2014');
insert into posting values (22045,'382425','26-DEC-2011');
insert into posting values (19338,'382425','01-OCT-2012');
insert into posting values (33728,'382425','15-MAR-2010');
insert into posting values (12051,'382422','22-JAN-2012');
insert into posting values (11088,'382422','11-FEB-1995');
insert into posting values (12498,'382422','27-JAN-2009');
insert into posting values (22513,'382422','19-APR-2010');
insert into posting values (11145,'382423','05-DEC-2014');
insert into posting values (29603,'382423','14-OCT-2005');
INSERT INTO posting VALUES(12300,'382429','12-JUL-2006');
INSERT INTO posting VALUES(14256,'382429','10-SEP-2010');
INSERT INTO posting VALUES(13423,'382429','10-MAY-2011');
INSERT INTO posting VALUES(14345,'382429','12-JUL-2004');
INSERT INTO posting VALUES(21040,'382429','12-JUL-2013');
INSERT INTO posting VALUES(13045,'382430','15-JAN-2011');
INSERT INTO posting VALUES(29603,'382430','12-JAN-2015');
INSERT INTO posting VALUES(48563,'382430','10-MAY-2002');
INSERT INTO posting VALUES(10923,'382430','12-DEC-2011');
INSERT INTO posting VALUES(12051,'382430','11-JUL-2010');

INSERT INTO SoldierStatus  VALUES (19339,1,'17-MAR-2003','382429');
INSERT INTO SoldierStatus   VALUES(33998,1,'01-OCT-1995','382425');
INSERT INTO SoldierStatus   VALUES(49159,1,'25-JUL-1997','382427');
INSERT INTO SoldierStatus   VALUES(21474,1,'13-MAY-2000','382423');
INSERT INTO SoldierStatus   VALUES(12498,0,'29-SEP-2003','382423');
INSERT INTO SoldierStatus  VALUES(14298,1,'10-APR-2002','382426');
INSERT INTO SoldierStatus   VALUES(12398,01,'17-MAR-2003','382429');
INSERT INTO SoldierStatus   VALUES(13424,01,'01-OCT-1995','382425');
INSERT INTO SoldierStatus   VALUES(28613,01,'25-JUL-1997','382427');
INSERT INTO SoldierStatus  VALUES(13011,01,'13-MAY-2000','382423');
INSERT INTO SoldierStatus   VALUES(12300,01,'29-SEP-2003','382423');
INSERT INTO SoldierStatus VALUES(14256,0,'10-APR-2002','382426');
INSERT INTO SoldierStatus   VALUES(11088,0,'17-MAR-2003','382429');
INSERT INTO SoldierStatus   VALUES(13423,01,'01-OCT-1995','382425');
INSERT INTO SoldierStatus   VALUES(14345,0,'25-JUL-1997','382427');
INSERT INTO SoldierStatus    VALUES(21040,0,'29-SEP-2003','382423');
INSERT INTO SoldierStatus    VALUES(22045,01,'10-APR-2002','382426');
INSERT INTO SoldierStatus    VALUES(13045,01,'17-MAR-2003','382429');
INSERT INTO SoldierStatus  VALUES(29603,01,'01-OCT-1995','382425');
INSERT INTO SoldierStatus   VALUES(12245,01,'25-JUL-1997','382427');
INSERT INTO SoldierStatus    VALUES(10305,01,'13-MAY-2000','382423');
INSERT INTO SoldierStatus    VALUES(48563,01,'29-SEP-2003','382423');
INSERT INTO SoldierStatus    VALUES(10923,01,'10-APR-2002','382426');
INSERT INTO SoldierStatus    VALUES(12051,0,'17-MAR-2003','382429');
INSERT INTO SoldierStatus    VALUES(12105,01,'01-OCT-1995','382425');
INSERT INTO SoldierStatus    VALUES(11145,01,'25-JUL-1997','382427');
INSERT INTO SoldierStatus   VALUES(12115,01,'13-MAY-2000','382423');
INSERT INTO SoldierStatus   VALUES(12045,01,'29-SEP-2003','382423');
INSERT INTO SoldierStatus  VALUES(10345,01,'10-APR-2002','382426');
INSERT INTO SoldierStatus   VALUES(10045,01,'17-MAR-2003','382429');
INSERT INTO SoldierStatus    VALUES(36099,0,'01-OCT-1995','382425');
INSERT INTO SoldierStatus    VALUES(12345,01,'25-JUL-1997','382427');
INSERT INTO SoldierStatus    VALUES(33728,01,'13-MAY-2000','382423');
INSERT INTO SoldierStatus   VALUES(40386,1,'10-APR-2002','382426');
INSERT INTO SoldierStatus   VALUES(19338,01,'01-OCT-1995','382425');
INSERT INTO SoldierStatus   VALUES(33994,01,'25-JUL-1997','382427');
INSERT INTO SoldierStatus    VALUES(49158,01,'13-MAY-2000','382423');
INSERT INTO SoldierStatus   VALUES(22513,01,'29-SEP-2003','382423');
INSERT INTO SoldierStatus   VALUES(11053,0,'10-APR-2002','382426');
INSERT INTO SoldierStatus   VALUES(27989,01,'17-MAR-2003','382429');
INSERT INTO SoldierStatus   VALUES(11046,01,'01-OCT-1995','382425');
INSERT INTO SoldierStatus    VALUES(13043,01,'25-JUL-1997','382427');
INSERT INTO SoldierStatus    VALUES(11238,0,'13-MAY-2000','382423');
INSERT INTO SoldierStatus    VALUES(11002,01,'29-SEP-2003','382423');
INSERT INTO SoldierStatus    VALUES(12402,01,'10-APR-2002','382426');
INSERT INTO SoldierStatus   VALUES(13023,01,'17-MAR-2003','382429');
INSERT INTO SoldierStatus    VALUES(11045,01,'01-OCT-1995','382425');

INSERT INTO War VALUES(382429,1,'17-MAR-2003');
INSERT into War VALUES(382425,0,'01-OCT-1995');
INSERT into War VALUES(382427,1, '25-JUL-1997');
INSERT into War VALUES(382423,1,'13-MAY-2000');
INSERT into War VALUES(382423,0,'29-SEP-2003');
INSERT into War VALUES(382426,0,'10-APR-2002');

INSERT INTO assign (sold_id, type) VALUES (19339, 'Soldier');
INSERT INTO assign  VALUES (33998, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (49159, 'Major General');
INSERT INTO assign (sold_id, type) VALUES (21474, 'Field Marshal');
INSERT INTO assign (sold_id, type) VALUES (12498, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (14298, 'Lieutenant General');
INSERT INTO assign (sold_id, type) VALUES (12398, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (13424, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (28613, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (13011, 'Captain');
INSERT INTO assign (sold_id, type) VALUES (12300, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (14256, 'Captain');
INSERT INTO assign (sold_id, type) VALUES (11088, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (13423, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (14345, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (21045, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (21040, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (22045, 'Major');
INSERT INTO assign (sold_id, type) VALUES (13045, 'Havildar');
INSERT INTO assign (sold_id, type) VALUES (29603, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (12245, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (10305, 'Captain');
INSERT INTO assign (sold_id, type) VALUES (48563, 'Colonel');
INSERT INTO assign (sold_id, type) VALUES (10923, 'Major General');
INSERT INTO assign (sold_id, type) VALUES (12051, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (12105, 'Major');
INSERT INTO assign (sold_id, type) VALUES (11145, 'Brigadier');
INSERT INTO assign (sold_id, type) VALUES (12115, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (12045, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (10345, 'Lieutenant');
INSERT INTO assign (sold_id, type) VALUES (10045, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (36099, 'Havildar');
INSERT INTO assign (sold_id, type) VALUES (12345, 'Lieutenant');
INSERT INTO assign (sold_id, type) VALUES (33728, 'Brigadier');
INSERT INTO assign (sold_id, type) VALUES (23432, 'Soldier');


INSERT INTO assign (sold_id, type) VALUES (22513, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (11053, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (27989, 'Captain');
INSERT INTO assign (sold_id, type) VALUES (11046, 'Captain');
INSERT INTO assign (sold_id, type) VALUES (13043, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (11238, 'Captain');
INSERT INTO assign (sold_id, type) VALUES (11002, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (12402, 'Captain');
INSERT INTO assign (sold_id, type) VALUES (13023, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (11045, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (14255, 'Captain');
INSERT INTO assign (sold_id, type) VALUES (14245, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (22192, 'Soldier');
INSERT INTO assign (sold_id, type) VALUES (12356, 'Captain');
INSERT INTO assign (sold_id, type) VALUES (11305, 'Havildar');
INSERT INTO assign (sold_id, type) VALUES (12005, 'Colonel');

INSERT INTO inventory VALUES (1053, 19339);
INSERT INTO inventory VALUES (1054, 36099);
INSERT INTO inventory VALUES (1055, 12345);
INSERT INTO inventory VALUES (1056, 28613);
INSERT INTO inventory VALUES (1057, 14256);
INSERT INTO inventory VALUES (1058, 48563);
INSERT INTO inventory VALUES (1059, 33728);
INSERT INTO inventory VALUES (1060, 23432);
INSERT INTO inventory VALUES (1061, 33998);
INSERT INTO inventory VALUES (1062, 40386);
INSERT INTO inventory VALUES (1063, 31931);
INSERT INTO inventory VALUES (1064, 49159);
INSERT INTO inventory VALUES (1065, 19338);
INSERT INTO inventory VALUES (1066, 21474);
INSERT INTO inventory VALUES (1067, 12498);
INSERT INTO inventory VALUES (1068, 14298);
INSERT INTO inventory VALUES (1069, 33994);
INSERT INTO inventory VALUES (1070, 12398);
INSERT INTO inventory VALUES (1071, 13424);
INSERT INTO inventory VALUES (1072, 49158);
INSERT INTO inventory VALUES (1073, 29603);
INSERT INTO inventory VALUES (1074, 22513);
INSERT INTO inventory VALUES (1075, 27989);
INSERT INTO inventory VALUES (1076, 12245);
INSERT INTO inventory VALUES (1077, 10305);
INSERT INTO inventory VALUES (1078, 12051);
INSERT INTO inventory VALUES (1079, 12300);
INSERT INTO inventory VALUES (1080, 10923);
INSERT INTO inventory VALUES (1081, 11053);
INSERT INTO inventory VALUES (1082, 13423);
INSERT INTO inventory VALUES (1083, 12105);
INSERT INTO inventory VALUES (1084, 14345);
INSERT INTO inventory VALUES (1065, 11145);
INSERT INTO inventory VALUES (1066, 12115);
INSERT INTO inventory VALUES (1067, 12045);
INSERT INTO inventory VALUES (1068, 10345);
INSERT INTO inventory  VALUES (1069, 10045);
INSERT INTO inventory  VALUES (1062, 12005);
INSERT INTO inventory  VALUES (1065, 11305);
INSERT INTO inventory VALUES (1064, 11045);


SELECT * FROM Soldier;
SELECT * FROM Squad;
SELECT * FROM LOCATIONS;
SELECT * FROM visited;
SELECT * FROM War;
SELECT * FROM swork;
SELECT * FROM posting;
SELECT * FROM SoldierStatus;
SELECT * FROM MEDAL;
SELECT * FROM WEAPONS;
SELECT * FROM assign;
SELECT * FROM inventory;


/*1. DISPLAY THE TOTAL SALARAY OF ALL SOLDIERS  */
SELECT SUM(SALARY)
FROM SWORK,SOLDIER
WHERE SOLDIER.RANK = SWORK.TYPE;

/*2. DISPLAY THE TOTAL NUMBER OF SOLDIERS WHO ARE ALIVE */
SELECT COUNT(*)
FROM SOLDIERSTATUS
WHERE SOLDIERSTATUS.ALIVE = 1;

/*3. DISPLAY THE TOTAL SALARY OF TYPR CAPTAIN */
SELECT SUM(SALARY)
FROM SWORK
WHERE TYPE IN (SELECT type
                FROM assign
                WHERE sold_id IN (SELECT id
                              FROM Soldier
                              WHERE RANK = 'Captain'));
                              
/*4. DISPLAY THE NAMES OF SOLDIERS WHO JOINED AFTER 01-01-2004 AND BORN AFTER 01-01-1985 */
SELECT NAME
FROM SOLDIER
WHERE DOJ > '01-01-2004' AND DOB > '01-01-1985';

DESC SOLDIER;
DESC weapons;
DESC INVENTORY;

/*5. DISPLAY THE NAMES OF SOLDIERS WHO CAN USE THE WEAPON */
SELECT NAME
FROM SOLDIER
WHERE ID IN(SELECT ID
            FROM INVENTORY
            WHERE B_NAME IN (SELECT WEAPON_ID
                             FROM WEAPONS
                             WHERE NAME = 'AUG'));

/*6. DISPLAY THE NAMES OF SOLDIERS WHOSE SALARY IS GREATER THAN 50000 */
SELECT NAME
FROM SOLDIER,ASSIGN,SWORK
WHERE SOLDIER.ID = ASSIGN.sold_id AND ASSIGN.TYPE = SWORK.TYPE AND SALARY>5000


--Q1 retrive the name and id of the soldier who are assigned as the soldier
select soldier.id,soldier.name
from soldier,assign
where assign.type='Soldier' and soldier.id=assign.sold_id;

--Q2 display all the soldier name and rank of all who all are alive
select soldier.name,soldier.rank
from soldier,soldierstatus
where soldierstatus.alive=1 and soldierstatus.sold_id=soldier.id;

--Q3 retrive the name of the soldier, and where he went for meeting and say the meeting reason 
select locations.district,visited.reason,soldier.name
from soldier,locations,visited
where visited.sold_id=soldier.id and locations.pincode=visited.pincode and visited.pincode=locations.pincode;

--Q4 display the soldier name and id and what gum he use
select Weapons.name,soldier.name,soldier.id
from weapons,soldier,inventory
where soldier.id=inventory.sold_id and inventory.b_name=weapons.weapon_id;

--Q5 display the district name and state where war going
select locations.district,locations.state
from  locations,war
where war.status=1 and war.pincode=locations.pincode;


/*1. Display all the people who visited regarding confidential meeting */

SELECT id,name,Reason
FROM Soldier,visited
WHERE visited.sold_id = Soldier.id
GROUP BY id,name,Reason
HAVING Reason = 'For a confidential meeting';


/*2 Display all the people who use Glock-18*/

SELECT id,Soldier.name,WEAPONS.name
FROM Soldier,inventory,WEAPONS
WHERE inventory.sold_id = Soldier.id  AND WEAPONS.weapon_id = inventory.b_name
GROUP BY id,Soldier.name,WEAPONS.name
HAVING WEAPONS.name = 'Glock-18';

/*3 Display all the people who are alive after war and war dates */

SELECT id,Soldier.name,SoldierStatus.wardate,SoldierStatus.alive
FROM Soldier,SoldierStatus
WHERE SoldierStatus.sold_id = Soldier.id
GROUP BY id,Soldier.name,SoldierStatus.wardate,SoldierStatus.alive
HAVING SoldierStatus.alive = 1;

/*4 Display the people who belong to J&K */

SELECT id,Soldier.name,LOCATIONS.district,LOCATIONS.state
FROM Soldier,LOCATIONS
WHERE LOCATIONS.pincode = Soldier.birthplacepincode
GROUP BY id,Soldier.name,LOCATIONS.district,LOCATIONS.state
HAVING LOCATIONS.state = 'J&k';

/*5 Display the places where all the Major Generals are posted */

SELECT id,Soldier.name,Soldier.rank,posting.pincode,posting.datee,LOCATIONS.district,LOCATIONS.state,Squad.B_name,Soldier.height
FROM Soldier,posting,LOCATIONS,Squad
WHERE posting.sold_id = Soldier.id AND LOCATIONS.pincode = posting.pincode AND Squad.B_name = Soldier.b_name
GROUP BY id,Soldier.name,Soldier.rank,posting.pincode,posting.datee,LOCATIONS.district,LOCATIONS.state,Squad.B_name,Soldier.height
HAVING Soldier.rank = 'Major General'
ORDER BY Soldier.height;


/Q1) Display the total capacity of Sikh Regiment and Rajput Regiment in the year 2011./
CREATE VIEW TCapacity AS
SELECT B_name, yea, totalCapacity
FROM Squad
WHERE yea=2011;
SELECT * FROM TCapacity;

/Q2) Why Major General Vijay Kumar Ahirwar visited Kargil?/
CREATE VIEW KargilVisit AS
SELECT Soldier.name, visited.Reason
FROM Soldier, visited
WHERE Soldier.id=49159
AND visited.sold_id=49159;
SELECT * FROM KargilVisit;

/Q3) Display the salary of Sandeep Singh./
CREATE VIEW Salary AS
SELECT Soldier.name, swork.salary
FROM Soldier, swork
WHERE Soldier.name='SandeepSingh'
AND swork.type='Brigadier';
SELECT * FROM Salary;

/Q4) List all the army personnel who are posted in Jabalpur and their date of posting./
CREATE VIEW JabalpurPost AS
SELECT Soldier.name, posting.datee AS POSTING_DATE
FROM Soldier, posting
WHERE posting.pincode=382425
AND Soldier.id=posting.sold_id;
SELECT * FROM JabalpurPost;

/*Q5) List all the war casualties and their place of death.*/
CREATE VIEW Casualties AS
SELECT Soldier.name, LOCATIONS.district AS Place
FROM Soldier,SoldierStatus, LOCATIONS
WHERE SoldierStatus.alive=0
AND Soldier.id=SoldierStatus.sold_id
AND SoldierStatus.pincode=LOCATIONS.pincode
ORDER BY Soldier.name;
SELECT * FROM Casualties;

/Q11) Display the name of soldier whose height is equal to 185cm./
SELECT name
FROM Soldier
WHERE id=
(
SELECT id
FROM Soldier
WHERE height=185
);

/Q12)Retrieve the soldier details whose weight is greater than 75 kg./
SELECT *
FROM Soldier
WHERE id IN
(
SELECT id
FROM Soldier
WHERE weight>75
)
ORDER BY weight;

/Q13) Display the name of army personnel whose salary is greater than 1 lakh./
SELECT name
FROM Soldier
WHERE id IN
(
SELECT sold_id
FROM assign
WHERE type IN
 (
 SELECT type
 FROM swork
 WHERE salary>100000
 )
);

/Q14)Display the name of army personnel who used the weapon AK-47./
SELECT name
FROM Soldier
WHERE id IN
(
SELECT sold_id
FROM inventory
WHERE b_name IN
(
SELECT weapon_id
FROM WEAPONS
WHERE name='AK-47'
)
);

/Q15) Display the name of soldiers whose chest is less than the average chest of all soldiers./
SELECT name
FROM Soldier s
WHERE chest <
(
SELECT AVG(chest)
FROM Soldier
WHERE id<=s.id
);


## 1 NESTED
/list of soldiers details who have joined after the latest war where war status=0/ 
 select *
 from soldier
 where id in (
            select id
            from soldier
            where doj >= (
                            select datee
                            from war
                            where status= 0 and datee = (
                                                        select max(datee) 
                                                        from war
                                                        )
                            )
            );
        
        
##2
/Display the soldiers details whohave born after the first war,according to dob./
select *
from soldier
where id in (
                select id
                from soldier
                where dob >=(
                                select datee
                                from war
                                where datee = (     
                                                select min(datee)
                                                from war
                                                )
                            )
        )
order by dob desc;
                            
##3
/Display the post where a soldier/soldiers has joined the post and belongs to same pincode.//
select pincode
from posting
where sold_id = (
                    select sold_id
                    from soldier,posting
                    where birthplacepincode=pincode and soldier.id=posting.sold_id
                );
                
##4
/Retrive the name of soldires who have visited for reason of confidential or visited place pincode is 382422/
 select name
 from soldier
 where id in
 (
 select sold_id 
 from visited 
 where reason like '%confidential%' or pincode=382422
 );
 
 
  ##5
  /Select the squad details where the total capacity is greater then average of the total capacity of all squad/
 select *
from squad
where totalcapacity >
(
select avg(totalcapacity)
from squad
);               
                
                
##6
/Display the soldiers name where soldiers having second heigst height/
select name
from soldier s
where(1)=(
           select count(distinct(s2.id))
           from soldier s2 
           where s2.height>s.height);
           
 ##7          
 /Display the soldiers name where soldiers having second lowest cheast size/          
select name
from soldier s
where(1)=(
           select count(distinct(s2.id))
           from soldier s2 
           where s2.chest<s.chest);  
 ##8          
  /Display the soldiers name where soldiers having second lowest weight/          
select name
from soldier s
where(1)=(
           select count(distinct(s2.id))
           from soldier s2 
           where s2.weight<s.weight);
           
##9
/Display the war data where war date is same same as of the dob of (Arajun Prathap)/
select wardate
from SoldierStatus
where wardate =(
                 select dob
                 from soldier
                 where name='Arjun Pratap');
                 
  ##10               
  /Display the war dataes where war data is greater or equal to the greatest of dob among all soldiers/          
select  distinct wardate
from SoldierStatus
where wardate >= all (
                 select dob
                 from soldier
                 );


ALTER TABLE Soldier 
DROP CONSTRAINT PRIMARY KEY(id);

UPDATE Soldier
SET weight=80
where height=165;




