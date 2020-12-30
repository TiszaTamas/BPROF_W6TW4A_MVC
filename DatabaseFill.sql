  DROP TABLE MONSTER;
  DROP TABLE ADVENTURER;
  DROP TABLE JOB;
  DROP TABLE CLIENT;
  DROP TABLE PERSON;

  
  CREATE TABLE PERSON 
    (PERSONID						NUMERIC(10) NOT NULL,
	 CLIENTID						NUMERIC(10),
	 ADVENTURERID					NUMERIC(10),
	 FIRST_NAME						VARCHAR(20),
     LAST_NAME						VARCHAR(20),
	 GUILD_NAME						VARCHAR(20),
  CONSTRAINT PERSON_PRIMARY_KEY PRIMARY KEY (PERSONID));

  CREATE TABLE CLIENT
    (CLIENTID				NUMERIC(10) NOT NULL,
	 PERSONID				NUMERIC(10) NOT NULL,
     BALANCE				NUMERIC(10),
     ADDRESS				VARCHAR(20),
	 SIGNUP_DATE			DATETIME,
	 JOB_COUNT				NUMERIC(10),
CONSTRAINT CLIENTS_PRIMARY_KEY PRIMARY KEY (CLIENTID),
CONSTRAINT CLIENTS_FOREIGN_KEY FOREIGN KEY (PERSONID) REFERENCES PERSON (PERSONID));

CREATE TABLE JOB
    (JOBID           		NUMERIC(10) NOT NULL,
     CLIENTID              	NUMERIC(10) NOT NULL,
	 REGION					VARCHAR(30),
	 REWARD					NUMERIC(10),
     CHALLANGE_RATING		VARCHAR(2), 
	 START_DATE				DATETIME,
	 END_DATE				DATETIME,
  CONSTRAINT JOBS_PRIMARY_KEY PRIMARY KEY (JOBID),
  CONSTRAINT JOBS_FOREIGN_KEY FOREIGN KEY (CLIENTID) REFERENCES CLIENT (CLIENTID));

  CREATE TABLE ADVENTURER
    (ADVENTURERID			NUMERIC(10) NOT NULL,
	 PERSONID				NUMERIC(10) NOT NULL,
     JOBID					NUMERIC(10) NOT NULL,
     RATING					VARCHAR(2),
     SIGNUP_DATE            DATETIME,
     STATUS					VARCHAR(15),
  CONSTRAINT ADVENTURERS_PRIMARY_KEY PRIMARY KEY (ADVENTURERID),
  CONSTRAINT ADVENTURERS_FOREIGN_KEY FOREIGN KEY (JOBID) REFERENCES JOB (JOBID));

  CREATE TABLE MONSTER
    (MONSTERID						NUMERIC(10) NOT NULL,
	 JOBID							NUMERIC(10) NOT NULL,
	 CHALLANGE_RATING				VARCHAR(2),
	 NAME							VARCHAR(20),
     WEAKNESSES						VARCHAR(40),
	 RESISTANCES					VARCHAR(40),
  CONSTRAINT MONSTERS_PRIMARY_KEY PRIMARY KEY (MONSTERID),
  CONSTRAINT MONSTERS_FOREIGN_KEY FOREIGN KEY (JOBID) REFERENCES JOB (JOBID));

INSERT INTO PERSON VALUES(40,null,20,'Ranodan',null,null);
INSERT INTO PERSON VALUES(41,null,23,'Frideric','Manshner','Black Hawk');
INSERT INTO PERSON VALUES(42,12,23,'Claus','Hill','Caledonia knights');
INSERT INTO PERSON VALUES(43,null,24,'Black Mist',null,'Carved Moon');
INSERT INTO PERSON VALUES(44,14,null,'Henry','the blacksmith',null);

INSERT INTO CLIENT VALUES (10,44,239876,'Blackhat 12','05-APR-2330',2);
INSERT INTO CLIENT VALUES (11,43,65000,'Kingroad 44','05-APR-2330',4);
INSERT INTO CLIENT VALUES (12,41,65765,'Halfway Road 69','07-APR-2330',2);
INSERT INTO CLIENT VALUES (13,40,5660,'East Forest','10-APR-2330',2);
INSERT INTO CLIENT VALUES (14,42,787009,'Hemlett village','10-APR-2330',2);

INSERT INTO JOB VALUES(1,14,'Caledonia',500,'E','01-APR-2330','08-APR-2330');
INSERT INTO JOB VALUES(2,13,'East Shire',87000,'B','05-APR-2330','22-APR-2330');
INSERT INTO JOB VALUES(3,11,'Kalindre Desert',899900,'A','07-APR-2330',null);
INSERT INTO JOB VALUES(4,10,'Guard Forest',2050,'D','07-APR-2330','10-APR-2330');
INSERT INTO JOB VALUES(5,12,'Kinghill',15000,'C','08-APR-2330','17-APR-2330');

INSERT INTO ADVENTURER VALUES (20,42,5,'B','10-APR-2330','On adventure');
INSERT INTO ADVENTURER VALUES (21,46,5,'C','12-APR-2330','Free');
INSERT INTO ADVENTURER VALUES (22,41,1,'E','12-APR-2330','Free');
INSERT INTO ADVENTURER VALUES (23,40,5,'C','15-APR-2330','On adventure');
INSERT INTO ADVENTURER VALUES (24,40,2,'A','16-APR-2330','Wounded');
  
INSERT INTO MONSTER VALUES(30,1,'F','Goblin','fire,slashing',null);
INSERT INTO MONSTER VALUES(31,2,'B','Banshee','radiant','blunt,piercing,slashing');
INSERT INTO MONSTER VALUES(32,3,'B','Knight of the Rose',null,null);
INSERT INTO MONSTER VALUES(33,3,'B','Priest of the Rose',null,null);
INSERT INTO MONSTER VALUES(34,4,'D','Tiger','slashing,poison','blunt');