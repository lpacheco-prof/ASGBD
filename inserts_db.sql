-- SET search_path TO asgbd_2024;

BEGIN WORK;

-- SET TRANSACTION READ WRITE;

-- SET datestyle = DMY;

/* MUSICIAN */
INSERT INTO MUSICIAN VALUES(1,'James Hetfield','03-08-1949',NULL,'M','American');
INSERT INTO MUSICIAN VALUES(2,'Paul Rodgers','17-12-1949',NULL,'M','English');
INSERT INTO MUSICIAN VALUES(3,'Kirk Hammet','18-11-1962',NULL,'M','American');
INSERT INTO MUSICIAN VALUES(4,'Mick Jagger','26-07-1944',NULL,'M','English');
INSERT INTO MUSICIAN VALUES(5,'Joey Ramone','19-05-1951','15-04-2001','M','American');
INSERT INTO MUSICIAN VALUES(6,'Lars Ulrich','26-12-1963',NULL,'M','Danish');
INSERT INTO MUSICIAN VALUES(7,'Cliff Burton','10-02-1962','27-09-1986','M','American');
INSERT INTO MUSICIAN VALUES(8,'Simon Kirke','28-07-1950',NULL,'M','English');
INSERT INTO MUSICIAN VALUES(9,'Keith Richards','18-12-1943',NULL,'M','English');
INSERT INTO MUSICIAN VALUES(11,'Carles Sabater','21-09-1962','13-02-1999','M','Catalan');
INSERT INTO MUSICIAN VALUES(12,'Pep Sala','17-07-1960',NULL,'M','Catalan');
INSERT INTO MUSICIAN VALUES(13,'Lluís Gavaldà','15-04-1963',NULL,'M','Catalan');
INSERT INTO MUSICIAN VALUES(14,'Joan Reig','16-03-1963',NULL,'M','Catalan');
INSERT INTO MUSICIAN VALUES(15,'Falin Cáceres','27-07-1963',NULL,'M','Catalan');
INSERT INTO MUSICIAN VALUES(16,'Ana Torroja','28-12-1958',NULL,'F','Spanish');
INSERT INTO MUSICIAN VALUES(17,'Nacho Cano','26-02-1963',NULL,'M','Spanish');
INSERT INTO MUSICIAN VALUES(18,'José María Cano','21-02-1959',NULL,'M','Spanish');
INSERT INTO MUSICIAN VALUES(19,'David Muñoz','10-01-1976',NULL,'M','Catalan');
INSERT INTO MUSICIAN VALUES(20,'José Manuel Muñoz','13-11-1978',NULL,'M','Catalan');
INSERT INTO MUSICIAN VALUES(21,'Dani Martín','19-02-1977',NULL,'M','Spanish');
INSERT INTO MUSICIAN VALUES(22,'David Otero','17-04-1980',NULL,'M','Spanish');
INSERT INTO MUSICIAN VALUES(24,'Johnny Ramone','8-10-1948','15-09-2004','M','American');
INSERT INTO MUSICIAN VALUES(25,'Dee Dee Ramone','18-09-1952','05-06-2002','M','American');
INSERT INTO MUSICIAN VALUES(26,'Tommy Ramone','29-01-1949','12-07-2014','M','American');
INSERT INTO MUSICIAN VALUES(27,'José Luis Perales','18-01-1945',NULL,'M','Spanish');
INSERT INTO MUSICIAN VALUES(28,'Victoria Beckham','17-04-1974',NULL,'F','English');
INSERT INTO MUSICIAN VALUES(29,'Melanie Chisholm','12-01-1974',NULL,'F','English');
INSERT INTO MUSICIAN VALUES(30,'Melanie Brown','12-01-1974',NULL,'F','English');
INSERT INTO MUSICIAN VALUES(31,'Emma Bunton','21-01-1976',NULL,'F','English');
INSERT INTO MUSICIAN VALUES(32,'Geraldine Estelle Halliwell','06-08-1972',NULL,'F','English');
INSERT INTO MUSICIAN VALUES(33,'Bonnie Pointer','11-07-1950','08-06-2020','F','English');
INSERT INTO MUSICIAN VALUES(34,'June Pointer','30-11-1953','11-04-2006','F','English');
INSERT INTO MUSICIAN VALUES(35,'Anita Pointer','23-01-1948',NULL,'F','English');
INSERT INTO MUSICIAN VALUES(36,'Ruth Pointer','19-03-1946',NULL,'F','English');
INSERT INTO MUSICIAN VALUES(37,'Bonnie Pointer','11-07-1950','08-06-2020','F','English');
INSERT INTO MUSICIAN VALUES(38,'Leire Martínez','22-06-1979',NULL,'F','Spanish');
INSERT INTO MUSICIAN VALUES(39,'Anton Álvarez','16-07-1990',NULL,'M','Spanish');

/* BAND */
INSERT INTO BAND VALUES(1,'Metallica',1981,NULL,'Heavy','US');
INSERT INTO BAND VALUES(2,'The Rolling Stones',1962,NULL,'Rock','England');
INSERT INTO BAND VALUES(3,'Free',1968,1973,'Jazz','US');
INSERT INTO BAND VALUES(4,'Bad Company',1973,NULL,'Rock','England');
INSERT INTO BAND VALUES(5,'Ramones',1974,1996,'Punk','US');
INSERT INTO BAND VALUES(6,'Sau',1987,1999,'Rock','Catalonia');
INSERT INTO BAND VALUES(7,'Els Pets',1985,NULL,'Rock','Catalonia');
INSERT INTO BAND VALUES(8,'Mecano',1981,1992,'Pop','Spain');
INSERT INTO BAND VALUES(9,'Estopa',1999,NULL,'Rock','Catalonia');
INSERT INTO BAND VALUES(10,'El canto del loco',1994,2010,'Pop','Spain');
INSERT INTO BAND VALUES(11,'The Spice Girls',1993,2001,'Pop','England');
INSERT INTO BAND VALUES(12,'The Pointer Sisters',1971,NULL,'Soul','US');

/* MEMBER */
INSERT INTO MEMBER VALUES(1,1,'Vocals');
INSERT INTO MEMBER VALUES(2,3,'Vocals');
INSERT INTO MEMBER VALUES(2,4,'Vocals');
INSERT INTO MEMBER VALUES(2,2,'Drums');
INSERT INTO MEMBER VALUES(3,1,'Guitar');
INSERT INTO MEMBER VALUES(4,2,'Vocals');
INSERT INTO MEMBER VALUES(5,5,'Vocals');
INSERT INTO MEMBER VALUES(6,1,'Drums');
INSERT INTO MEMBER VALUES(7,1,'Bass');
INSERT INTO MEMBER VALUES(8,3,'Drums');
INSERT INTO MEMBER VALUES(9,2,'Guitar');
INSERT INTO MEMBER VALUES(2,4,'Guitar');
INSERT INTO MEMBER VALUES(1,1,'Guitar');
INSERT INTO MEMBER VALUES(11,6,'Vocals');
INSERT INTO MEMBER VALUES(11,6,'Guitar');
INSERT INTO MEMBER VALUES(12,6,'Keyboard');
INSERT INTO MEMBER VALUES(13,7,'Vocals');
INSERT INTO MEMBER VALUES(13,7,'Guitar');
INSERT INTO MEMBER VALUES(14,7,'Vocals');
INSERT INTO MEMBER VALUES(14,7,'Drums');
INSERT INTO MEMBER VALUES(15,7,'Bass');
INSERT INTO MEMBER VALUES(16,8,'Vocals');
INSERT INTO MEMBER VALUES(17,8,'Keyboard');
INSERT INTO MEMBER VALUES(18,8,'Vocals');
INSERT INTO MEMBER VALUES(18,8,'Guitar');
INSERT INTO MEMBER VALUES(19,9,'Vocals');
INSERT INTO MEMBER VALUES(20,9,'Guitar');
INSERT INTO MEMBER VALUES(21,10,'Vocals');
INSERT INTO MEMBER VALUES(22,10,'Guitar');
INSERT INTO MEMBER VALUES(24,5,'Guitar');
INSERT INTO MEMBER VALUES(25,5,'Bass');
INSERT INTO MEMBER VALUES(26,5,'Drums');
INSERT INTO MEMBER VALUES(29,11,'Vocals');
INSERT INTO MEMBER VALUES(30,11,'Vocals');
INSERT INTO MEMBER VALUES(31,11,'Vocals');
INSERT INTO MEMBER VALUES(32,11,'Vocals');
INSERT INTO MEMBER VALUES(33,12,'Vocals');
INSERT INTO MEMBER VALUES(34,12,'Vocals');
INSERT INTO MEMBER VALUES(35,12,'Vocals');
INSERT INTO MEMBER VALUES(36,12,'Vocals');

/* ALBUM */
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(1,'Master of Puppets',1986,1);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(2,'Fire and Water',1970,3);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(3,'Aftermath',1966,2);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(4,'Ride the lightning',1984,1);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(5,'Free',1969,3);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(6,'Tattoo You',1981,2);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(7,'Bad Company',1974,4);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(8,'Quina nit',1990,6);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(9,'Entre el cielo y el suelo',1986,8);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(10,'Ramones',1976,5);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(11,'Animal Boy',1986,5);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(12,'Zapatillas',2005,10);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(13,'Spice',1996,11);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(14,'Spiceworld',1997,11);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(15,'The Pointer Sisters',1973,12);
INSERT INTO ALBUM (id_album,title, year,id_band) VALUES(16,'So excited',1974,12);

/* SONG */
INSERT INTO SONG VALUES(1,'Battery','00:5:12',1);
INSERT INTO SONG VALUES(2,'Master of Puppets','00:8:35',1, 2);
INSERT INTO SONG VALUES(3,'Mr. Big','00:5:55',2, 1);
INSERT INTO SONG VALUES(4,'All Right Now','00:5:32',2, 3);
INSERT INTO SONG VALUES(5,'Paint It Black','00:5:12',3, 2);
INSERT INTO SONG VALUES(6,'It''s Not Easy','00:5:12',3);
INSERT INTO SONG VALUES(7,'Disposable Heroes','00:8:16',1);
INSERT INTO SONG VALUES(8,'Orion','00:5:32',1, 1);
INSERT INTO SONG VALUES(9,'Fire and Water','00:4:02',2, 1);
INSERT INTO SONG VALUES(10,'Songs of Yesterday','00:3:33',5);
INSERT INTO SONG VALUES(11,'Free Me','00:5:24',5);
INSERT INTO SONG VALUES(12,'Broad Daylight','00:3:15',5);
INSERT INTO SONG VALUES(13,'Start Me Up','00:3:31',6);
INSERT INTO SONG VALUES(14,'Hang Fire','00:2:20',6);
INSERT INTO SONG VALUES(15,'Neighbours','00:3:31',6);
INSERT INTO SONG VALUES(16,'Rock Steady','00:3:47',7);
INSERT INTO SONG VALUES(17,'Ready for Love','00:5:03',7);
INSERT INTO SONG VALUES(18,'Boig per tu','00:4:18',8);
INSERT INTO SONG VALUES(19,'Tanca els ulls','00:1:33',8);
INSERT INTO SONG VALUES(20,'Hijo de la luna','00:4:00',9);
INSERT INTO SONG VALUES(21,'Chain Saw','00:1:56',10);
INSERT INTO SONG VALUES(22,'Loudmouth','00:2:14',10);
INSERT INTO SONG VALUES(23,'Havana Affair','00:1:56',10);
INSERT INTO SONG VALUES(24,'Animal Boy','00:1:50',11, 1);
INSERT INTO SONG VALUES(25,'Apeman Hop','00:2:02',11);
INSERT INTO SONG VALUES(26,'Mental Hell','00:2:38',11);
INSERT INTO SONG VALUES(27,'Me cuesta tanto olvidarte','00:2:54',9);
INSERT INTO SONG VALUES(28,'Wannabe','00:2:53',13);
INSERT INTO SONG VALUES(29,'Mama','00:5:04',13);
INSERT INTO SONG VALUES(30,'Spice up your life','00:2:54',13);
INSERT INTO SONG VALUES(31,'Saturday night divas','00:4:26',13);
INSERT INTO SONG VALUES(32,'I''m so excited','00:3:51',16);
INSERT INTO SONG VALUES(33,'Automàtic','00:4:46',16);
INSERT INTO SONG VALUES(34,'Ángel','00:4:36',9);

/* COMPOSER */
INSERT INTO COMPOSER VALUES(1,1);
INSERT INTO COMPOSER VALUES(1,2);
INSERT INTO COMPOSER VALUES(3,2);
INSERT INTO COMPOSER VALUES(2,3);
INSERT INTO COMPOSER VALUES(2,4);
INSERT INTO COMPOSER VALUES(2,5);
INSERT INTO COMPOSER VALUES(4,5);
INSERT INTO COMPOSER VALUES(4,6);
INSERT INTO COMPOSER VALUES(6,1);
INSERT INTO COMPOSER VALUES(6,2);
INSERT INTO COMPOSER VALUES(1,7);
INSERT INTO COMPOSER VALUES(1,8);
INSERT INTO COMPOSER VALUES(3,7);
INSERT INTO COMPOSER VALUES(6,7);
INSERT INTO COMPOSER VALUES(6,8);
INSERT INTO COMPOSER VALUES(7,8);
INSERT INTO COMPOSER VALUES(2,9);
INSERT INTO COMPOSER VALUES(8,3);
INSERT INTO COMPOSER VALUES(2,10);
INSERT INTO COMPOSER VALUES(2,12);
INSERT INTO COMPOSER VALUES(4,13);
INSERT INTO COMPOSER VALUES(4,14);
INSERT INTO COMPOSER VALUES(4,15);
INSERT INTO COMPOSER VALUES(9,13);
INSERT INTO COMPOSER VALUES(9,14);
INSERT INTO COMPOSER VALUES(9,15);
INSERT INTO COMPOSER VALUES(12,18);
INSERT INTO COMPOSER VALUES(12,19);
INSERT INTO COMPOSER VALUES(18,20);
INSERT INTO COMPOSER VALUES(5,21);
INSERT INTO COMPOSER VALUES(5,22);
INSERT INTO COMPOSER VALUES(5,23);
INSERT INTO COMPOSER VALUES(5,26);
INSERT INTO COMPOSER VALUES(18,27);

COMMIT;
