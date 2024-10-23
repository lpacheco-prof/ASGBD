-- DROP SCHEMA IF EXISTS asgbd_2024 CASCADE;
DROP DATABASE IF EXISTS asgbd_2024;

-- CREATE SCHEMA asgbd_2024 AUTHORIZATION lpacheco;
CREATE DATABASE asgbd_2024;

-- GRANT ALL ON SCHEMA asgbd_2024 TO root;
GRANT ALL ON asgbd_2024.* TO 'lpacheco'@'localhost';

-- SET search_path TO asgbd_2024;
USE asgbd_2024;

BEGIN WORK;

-- SET TRANSACTION READ WRITE;

SET datestyle = DMY;

CREATE TABLE MUSICIAN (
	id_musician SMALLINT,
	name VARCHAR(255) NOT NULL,
	birth DATE NOT NULL,
	death DATE,
	gender VARCHAR(255) NOT NULL,
	nationality VARCHAR(255) NOT NULL,
	num_awards SMALLINT NOT NULL DEFAULT 0 CHECK (num_awards >= 0),
	CONSTRAINT PK_MUSICIAN PRIMARY KEY(id_musician),
	CONSTRAINT GENDER CHECK (gender IN ('M','F','NB')),
    CONSTRAINT CHECK_DEATH CHECK (death IS NULL OR birth < death));

CREATE TABLE BAND (
	id_band SMALLINT,
	name VARCHAR(255) NOT NULL,
	year_formed SMALLINT NOT NULL,
	year_dissolution SMALLINT,
	style VARCHAR(255) NOT NULL,
	origin VARCHAR(255) NOT NULL,
	CONSTRAINT PK_BAND PRIMARY KEY(id_band),
	CONSTRAINT CHECK_DISSOLUTION CHECK (year_dissolution IS NULL OR year_dissolution > year_formed),
	CONSTRAINT STYLE_VALID CHECK (style IN ('Blues', 'Country', 'Heavy', 'Jazz', 'Pop', 'Punk', 'Reggae', 'Rock', 'Soul', 'Thrash', 'Techno')));

CREATE TABLE ALBUM (
	id_album SMALLINT,
	title VARCHAR(255) NOT NULL,
	id_band SMALLINT NOT NULL,
	year SMALLINT NOT NULL CHECK (year >= 1900),
	CONSTRAINT PK_ALBUM PRIMARY KEY(id_album),
	CONSTRAINT FK_BAND_ALBUM FOREIGN KEY (id_band) REFERENCES BAND(id_band) ON UPDATE CASCADE);

CREATE TABLE MEMBER (
	id_musician SMALLINT, 
	id_band SMALLINT, 
	instrument VARCHAR(255),
	CONSTRAINT PK_MEMBER PRIMARY KEY(id_musician, id_band, instrument),
	CONSTRAINT FK_BAND_MEMBER FOREIGN KEY (id_band) REFERENCES BAND(id_band) ON UPDATE CASCADE,
	CONSTRAINT FK_MUSICIAN_MEMBER FOREIGN KEY (id_musician) REFERENCES MUSICIAN(id_musician) ON UPDATE CASCADE,
	CONSTRAINT CHECK_INSTRUMENT CHECK (instrument IN ('Trumpet', 'Clarinet', 'Oboe', 'Flute', 'Vocals', 'Bass', 'Drums', 'Guitar', 'Keyboard')));

CREATE TABLE SONG(
	id_song SMALLINT,
	title VARCHAR(255) NOT NULL,
	duration TIME NOT NULL,
	id_album SMALLINT NOT NULL,
	awards SMALLINT NOT NULL DEFAULT 0 CHECK (awards >= 0),
	CONSTRAINT PK_SONG PRIMARY KEY(id_song),
	CONSTRAINT FK_SONG_ALBUM FOREIGN KEY (id_album) REFERENCES ALBUM(id_album));

CREATE TABLE COMPOSER(
	id_musician SMALLINT,
	id_song SMALLINT,
	CONSTRAINT PK_COMPOSER PRIMARY KEY(id_musician, id_song),
	CONSTRAINT FK_SONG_COMPOSER FOREIGN KEY (id_song) REFERENCES SONG(id_song),
	CONSTRAINT FK_MUSICIAN_COMPOSER FOREIGN KEY (id_musician) REFERENCES MUSICIAN(id_musician) ON DELETE CASCADE);

CREATE TABLE REPORT_MUSICIAN (
	id_musician INTEGER NOT NULL,
	num_bands INTEGER NOT NULL DEFAULT 0 CHECK (num_bands >= 0),
	num_instruments INTEGER NOT NULL DEFAULT 0 CHECK (num_instruments >= 0),
	num_styles INTEGER NOT NULL DEFAULT 0 CHECK (num_styles >= 0),
	num_origins INTEGER NOT NULL DEFAULT 0 CHECK (num_origins >= 0),
	num_no_composer INTEGER NOT NULL DEFAULT 0 CHECK (num_no_composer >= 0),
	CONSTRAINT PK_REPORT_MUSICIAN PRIMARY KEY(id_musician));

-- CREATE TYPE REPORT_MUSICIAN_TYPE AS (
-- 	t_id_musician INTEGER,
-- 	t_num_bands INTEGER,
-- 	t_num_instruments INTEGER,
-- 	t_num_styles INTEGER,
-- 	t_num_origins INTEGER,
-- 	t_num_no_composer INTEGER
-- );

COMMIT;
