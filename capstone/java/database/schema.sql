
BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP SEQUENCE IF EXISTS seq_user_id;

CREATE SEQUENCE seq_user_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;


CREATE TABLE users (
	user_id int DEFAULT nextval('seq_user_id'::regclass) NOT NULL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');


COMMIT TRANSACTION;




BEGIN TRANSACTION;

DROP TABLE IF EXISTS locations;
DROP SEQUENCE IF EXISTS seq_location_id;

CREATE SEQUENCE seq_location_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;


CREATE TABLE locations (
	location_id int DEFAULT nextval('seq_location_id'::regclass) NOT NULL,
	name varchar(50) NOT NULL UNIQUE,
	description varchar(200) NOT NULL,
	sunday_hour_open time NOT NULL,
	sunday_hour_closed time NOT NULL,
	monday_hour_open time NOT NULL,
	monday_hour_closed time NOT NULL,
	tuesday_hour_open time NOT NULL,
	tuesday_hour_closed time NOT NULL,
	wednesday_hour_open time NOT NULL,
	wednesday_hour_closed time NOT NULL,
	thursday_hour_open time NOT NULL,
	thursday_hour_closed time NOT NULL,
	friday_hour_open time NOT NULL,
	friday_hour_closed time NOT NULL,
	saturday_hour_open time NOT NULL,
	saturday_hour_closed time NOT NULL,
	social_media varchar(100),
	category varchar(50) NOT NULL,
	latitude numeric(20, 10) NOT NULL,
	longitude numeric(20, 10) NOT NULL,
	CONSTRAINT PK_location PRIMARY KEY (location_id)
);

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Cleveland Museum of Art', 'test description', '10:00:00', '17:00:00', '00:00:00', '00:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '21:00:00','10:00:00', '17:00:00', 'www.clevelandart.org', 'arts',  '41.5090', '-81.6121');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Cleveland Cultural Gardens', 'test description', '00:00:00', '00:00:00', '00:00:00', '00:00:00','00:00:00', '00:00:00','00:00:00', '00:00:00','00:00:00', '00:00:00','00:00:00', '00:00:00','00:00:00', '00:00:00', 'www.culturalgardens.org', 'arts',  '41.5190', '-81.6182');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Rocket Mortgage Fieldhouse', 'test description', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.rocketmortgagefieldhouse.com', 'sports',  '41.4965', '-81.6881');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Progressive Field', 'test description', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www..mlb.com/guardians/ballpark', 'sports',  '41.4962', '-81.6852');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('First Energy Stadium', 'test description', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.firstenergystadium', 'sports',  '41.5061', '-81.6995');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Severance Hall', 'test description', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.clevelandorchestra.com', 'theater',  '41.5060', '-81.6095');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Playhouse Square', 'test description', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.playhousesquare.org', 'theater',  '41.4998', '-81.6804');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Market Garden Brewery', 'test description', '11:00:00', '22:00:00', '00:00:00', '00:00:00','00:00:00', '00:00:00','16:00:00', '22:00:00','16:00:00', '22:00:00','11:00:00', '01:00:00','11:00:00', '01:00:00', 'www.marketgardenbrewery.com', 'food',  '41.4851', '-81.7034');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Little Italy', 'test description', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.littleitalycle.com', 'food',  '41.5090', '-81.5987');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Edgewater', 'test description', '06:00:00', '23:00:00', '06:00:00', '23:00:00','06:00:00', '23:00:00','06:00:00', '23:00:00','06:00:00', '23:00:00','06:00:00', '23:00:00','06:00:00', '23:00:00', 'www.https://clevelandmetroparks.com/parks/visit/parks/lakefront-reservation/edgewater-park', 'parks',  '41.4903', '-81.7355');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Rockefeller Park', 'test description', '10:00:00', '16:00:00', '10:00:00', '16:00:00','10:00:00', '16:00:00','10:00:00', '16:00:00','10:00:00', '16:00:00','10:00:00', '16:00:00','10:00:00', '16:00:00', 'www.culturalgardens.org', 'parks',  '41.5241', '-81.6238');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Lakeview Cemetery', 'test description', '07:30:00', '17:30:00', '07:30:00', '17:30:00','07:30:00', '17:30:00','07:30:00', '17:30:00','07:30:00', '17:30:00','07:30:00', '17:30:00','07:30:00', '17:30:00', 'www.lakeviewcemetery.com', 'historical',  '41.5140', '-81.5983');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('West Side Market', 'test description', '00:00:00', '00:00:00', '08:00:00', '17:00:00','00:00:00', '00:00:00','08:00:00', '17:00:00','00:00:00', '00:00:00','08:00:00', '17:00:00','07:00:00', '17:00:00', 'www.ohiocity.org', 'historical',  '41.4847', '-81.7028');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('The Arcade', 'test description', '07:00:00', '19:00:00', '07:00:00', '19:00:00','07:00:00', '19:00:00','07:00:00', '19:00:00','07:00:00', '19:00:00','07:00:00', '19:00:00','07:00:00', '19:00:00', 'www.theclevelandarcade.com', 'historical',  '41.49998', '-81.69045');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('A Christmas Story House', 'test description', '10:00:00', '17:00:00', '10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00', 'www.achristmasstoryhouse.com', 'historical',  '41.4687', '-81.6874');

COMMIT TRANSACTION;


BEGIN TRANSACTION;
DROP TABLE IF EXISTS user_location;


CREATE TABLE user_location (
   	user_id int NOT NULL,
    location_id int NOT NULL,
	time_stamp timestamp NOT NULL,
	CONSTRAINT PK_user_location PRIMARY KEY(user_id, location_id),
    CONSTRAINT FK_user_location_user FOREIGN KEY(user_id) REFERENCES users(user_id),
    CONSTRAINT FK_user_location_location FOREIGN KEY(location_id) REFERENCES locations(location_id)
);

COMMIT TRANSACTION;

















