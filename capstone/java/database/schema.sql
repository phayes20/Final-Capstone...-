
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
	CONSTRAINT PK_location PRIMARY KEY (location_id)
);

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category) 
values ('test', 'test description', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.Facebook.com', 'food');

COMMIT TRANSACTION;








