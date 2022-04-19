
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
	description varchar(1000) NOT NULL,
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
values ('Cleveland Museum of Art', 'CMA was founded in 1913 and opened to the public on June 6, 1916, welcoming 191,547 visitors during its Inaugural Exhibition. The museum was founded by Hinman B. Hurlbut, John Huntington, and Horace Kelley. Jeptha H. Wade II donated land which the museum sits on today. The museum collection houses almost 45,000 objects. The museum offers many programs for children and adults.', '10:00:00', '17:00:00', '00:00:00', '00:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '21:00:00','10:00:00', '17:00:00', 'www.clevelandart.org', 'arts',  '41.5090', '-81.6121');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Cleveland Cultural Gardens', 'The Cleveland Cultural Gardens located along East Boulevard and Martin Luther King Jr. Drive, is a collection of 33 distinct public gardens. Part of the 254 acre Rockefeller Park, it is one of the citys oldest and most tranquil centers. The land was donated by  philanthropist John D. Rockefeller in 1896. In 1916 the cultural gardens began with the establishment of the Shakespeare Garden and have been sponsored and developed by the ethnic communities for which they are named.
','00:00:00', '00:00:00', '00:00:00', '00:00:00','00:00:00', '00:00:00','00:00:00', '00:00:00','00:00:00', '00:00:00','00:00:00', '00:00:00','00:00:00', '00:00:00', 'www.culturalgardens.org', 'arts',  '41.5190', '-81.6182');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Rocket Mortgage Fieldhouse', 'Rocket Mortgage FieldHouse is home to the Cleveland Cavaliers, Cleveland Monsters and is a secondary arena for the Cleveland State Vikings. It was opened in October 1994. The seating capacity is 19,432 for its basketball configuration and for ice hockey seats up to 18,926. 
','09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.rocketmortgagefieldhouse.com', 'sports',  '41.4965', '-81.6881');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Progressive Field', 'Home to the Cleveland Guardians baseball team, it is part of the Gateway Sports and Entertainment Complex. Originally opened as Jacobs Field in 1994 the name was changed in 2008 to Progressive Field. The original seating capacity when it opened in 1995 was 42,865, but as of 2021 after multiple renovations the seating capacity is 34,830. 

', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www..mlb.com/guardians/ballpark', 'sports',  '41.4962', '-81.6852');
 
INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('First Energy Stadium', 'Home to the Cleveland Browns. It is a multipurpose stadium that opened in 1999 with a seating capacity of 67,431.  The eastern section is designated as the Dawg Pound. The playing surface consists of Kentucky Bluegrass over an extensive heating system designed to prevent freezing and to extend the surface to maximize usage.

', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.firstenergystadium', 'sports',  '41.5061', '-81.6995');
 
INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Severance Hall', 'Severance Hall is a concert hall located in the University Circle section of Cleveland, Ohio. Opened in 1931, Severance Hall was named after patrons John L. Severance and his wife, Elisabeth Huntingdon DeWitt Severance, and serves as the home of The Cleveland Orchestra.

', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.clevelandorchestra.com', 'theater',  '41.5060', '-81.6095');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Playhouse Square', 'Playhouse Square is Cleveland’s Theatrical Center. It is the largest performing arts center in the country outside of New York. It is home to the Cleveland Playhouse, State Theater, Ohio Theater, Allen Theater and the Hanna Theater, as well as Kennedy’s Cabaret. Playhouse Square opened in 1921 and was a successful vaudeville and silent movie venue. Post-depression era, the theaters fell into decline and disrepair. The theaters were saved by the community with the forming of the Playhouse Square Association which was founded in 1970. Restoration began in July of 1982 to save all the theaters, adding the Hanna Building in 1999. 

', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.playhousesquare.org', 'theater',  '41.4998', '-81.6804');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Market Garden Brewery', 'American gastropub with a patio, house beers, a distillery & a menu of creative sandwiches & tacos.

', '11:00:00', '22:00:00', '00:00:00', '00:00:00','00:00:00', '00:00:00','16:00:00', '22:00:00','16:00:00', '22:00:00','11:00:00', '01:00:00','11:00:00', '01:00:00', 'www.marketgardenbrewery.com', 'food',  '41.4851', '-81.7034');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Little Italy', 'In Little Italy, the main strip on Mayfield Road is full of old-school Italian cafes, bakeries and pizzerias, as well as elegant trattorias where singers perform opera arias. Indie art galleries and Italian food and wine shops are also dotted around the area. Colorful murals depict the stories of Italian immigrants.
', '09:00:00', '17:00:00', '09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00','09:00:00', '17:00:00', 'www.littleitalycle.com', 'food',  '41.5090', '-81.5987');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Edgewater', 'Edgewater park was purchased by the City of Cleveland in 1894 along the scenic shores of Lake Erie. The park spans over 130 acres of land and 9000 feet of the Lake Erie shoreline. The park features dog and swim beaches, a fishing pier and a yacht club and multiple programs and events. It provides access to boating, biking and cycling, trail access and picnicing pavillions .

', '06:00:00', '23:00:00', '06:00:00', '23:00:00','06:00:00', '23:00:00','06:00:00', '23:00:00','06:00:00', '23:00:00','06:00:00', '23:00:00','06:00:00', '23:00:00', 'www.https://clevelandmetroparks.com/parks/visit/parks/lakefront-reservation/edgewater-park', 'parks',  '41.4903', '-81.7355');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Rockefeller Park', 'Rockefeller Park is home to the Cleveland Cultural Gardens. Named after John D. Rockefeller who donated the land in 1896. The city’s eastside park spans 200 acres of land from Gordon Park to Shaker Heights. It was designed by landscape architect Ernest W. Bowditch. The park also offers many amenities including tennis courts, picnic and playground areas and the Rockefeller Park Greenhouse. 
 

', '10:00:00', '16:00:00', '10:00:00', '16:00:00','10:00:00', '16:00:00','10:00:00', '16:00:00','10:00:00', '16:00:00','10:00:00', '16:00:00','10:00:00', '16:00:00', 'www.culturalgardens.org', 'parks',  '41.5241', '-81.6238');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('Lakeview Cemetery', 'Lakeview Cemetery was founded in 1869. It is one of the largest garden cemeteries in the United States. This historic scenic setting is the home to many historic buildings and monuments including the Garfield Monument and Wade Memorial Chapel as well as numerous species of trees, flowers and greenery. Lake View Cemetery offers group and school tours as well as events throughout the year.
', '07:30:00', '17:30:00', '07:30:00', '17:30:00','07:30:00', '17:30:00','07:30:00', '17:30:00','07:30:00', '17:30:00','07:30:00', '17:30:00','07:30:00', '17:30:00', 'www.lakeviewcemetery.com', 'historical',  '41.5140', '-81.5983');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('West Side Market', 'The West Side Market opened in 1840 and was added to the National Register of Historical Places on December 18, 1973. It is one of the largest indoor/outdoor markets in the City of Cleveland. The center of the Ohio City Community, the market provides fresh meats, seafood and produce as well as multiple culturally diverse vendors. The Neo-Classical/Byzantine building houses nearly 100 stalls of vendors and features a large clock tower, as well as an outdoor open air arcade that surrounds the north and west side of the building.
', '00:00:00', '00:00:00', '08:00:00', '17:00:00','00:00:00', '00:00:00','08:00:00', '17:00:00','00:00:00', '00:00:00','08:00:00', '17:00:00','07:00:00', '17:00:00', 'www.ohiocity.org', 'historical',  '41.4847', '-81.7028');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('The Arcade', 'Built in 1890, the Arcade was one of the earliest buildings to be added to the National Register of Historic Places. The Arcade is one of the oldest shopping centers in America and includes an impressive list of restaurants, shops and a hotel. The Arcade was designed by John M. Eisenmann and George H. Smith.

', '07:00:00', '19:00:00', '07:00:00', '19:00:00','07:00:00', '19:00:00','07:00:00', '19:00:00','07:00:00', '19:00:00','07:00:00', '19:00:00','07:00:00', '19:00:00', 'www.theclevelandarcade.com', 'historical',  '41.49998', '-81.69045');

INSERT INTO locations (name, description, sunday_hour_open, sunday_hour_closed, monday_hour_open, monday_hour_closed, tuesday_hour_open, tuesday_hour_closed,
wednesday_hour_open, wednesday_hour_closed, thursday_hour_open, thursday_hour_closed, friday_hour_open, friday_hour_closed, saturday_hour_open, saturday_hour_closed,social_media, category, latitude, longitude) 
values ('A Christmas Story House', 'The Christmas Story House is a year-round attraction to Tremonts west side area. The house became famous during the filming of A Christmas Story which used the interior and exterior shots for the film. The home was purchased by Brian Jones, a private developer in 2004 who restored and renovated the home to a near-replica of the home in the film. The attraction now includes a home across the street which has been converted into a Christmas Story House Museum that features props and behind the scene photos and memorabilia. ', '10:00:00', '17:00:00', '10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00','10:00:00', '17:00:00', 'www.achristmasstoryhouse.com', 'historical',  '41.4687', '-81.6874');

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

















