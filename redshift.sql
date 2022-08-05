-- ------------ Write DROP-OTHER-stage scripts -----------

DROP PROCEDURE dms_sample_dbo.generate_tickets(par_event_id IN bigint);

DROP PROCEDURE dms_sample_dbo.generateseats();

DROP PROCEDURE dms_sample_dbo.generateticketactivity(par_max_transactions IN INTEGER);

DROP PROCEDURE dms_sample_dbo.generatetransferactivity(par_max_transactions IN INTEGER);

DROP PROCEDURE dms_sample_dbo.loadmlbplayers();

DROP PROCEDURE dms_sample_dbo.loadmlbteams();

DROP PROCEDURE dms_sample_dbo.loadnflplayers();

DROP PROCEDURE dms_sample_dbo.loadnflteams();

DROP PROCEDURE dms_sample_dbo.selltickets(par_person_id IN INTEGER, par_event_id IN bigint, par_quantity IN INTEGER);

DROP PROCEDURE dms_sample_dbo.sp_alterdiagram(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, par_version IN INTEGER, par_definition IN VARCHAR(10000), RetCode INOUT INTEGER);

DROP PROCEDURE dms_sample_dbo.sp_creatediagram(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, par_version IN INTEGER, par_definition IN VARCHAR(10000), Cur INOUT refcursor);

DROP PROCEDURE dms_sample_dbo.sp_dropdiagram(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, RetCode INOUT INTEGER);

DROP PROCEDURE dms_sample_dbo.sp_helpdiagramdefinition(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, RetCode INOUT INTEGER, Cur INOUT refcursor);

DROP PROCEDURE dms_sample_dbo.sp_helpdiagrams(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, Cur INOUT refcursor);

DROP PROCEDURE dms_sample_dbo.sp_renamediagram(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, par_new_diagramname IN VARCHAR(768), RetCode INOUT INTEGER);

DROP PROCEDURE dms_sample_dbo.sp_upgraddiagrams(RetCode INOUT INTEGER);

DROP PROCEDURE dms_sample_dbo.transferticket(par_ticket_id IN bigint, par_new_ticketholder_id IN bigint, par_transfer_all IN boolean, par_price IN NUMERIC(10,4));

-- ------------ Write DROP-VIEW-stage scripts -----------

DROP VIEW IF EXISTS dms_sample_dbo.getnewid;

DROP VIEW IF EXISTS dms_sample_dbo.sporting_event_computed;

DROP VIEW IF EXISTS dms_sample_dbo.sporting_event_info;

DROP VIEW IF EXISTS dms_sample_dbo.sporting_event_ticket_info;

-- ------------ Write DROP-FOREIGN-KEY-CONSTRAINT-stage scripts -----------

ALTER TABLE dms_sample_dbo.player DROP CONSTRAINT sport_team_fk;

ALTER TABLE dms_sample_dbo.seat DROP CONSTRAINT s_sport_location_fk;

ALTER TABLE dms_sample_dbo.seat DROP CONSTRAINT seat_type_fk;

ALTER TABLE dms_sample_dbo.sport_division DROP CONSTRAINT sd_sport_league_fk;

ALTER TABLE dms_sample_dbo.sport_division DROP CONSTRAINT sd_sport_type_fk;

ALTER TABLE dms_sample_dbo.sport_league DROP CONSTRAINT sl_sport_type_fk;

ALTER TABLE dms_sample_dbo.sport_team DROP CONSTRAINT home_field_fk;

ALTER TABLE dms_sample_dbo.sport_team DROP CONSTRAINT st_sport_type_fk;

ALTER TABLE dms_sample_dbo.sporting_event DROP CONSTRAINT se_away_team_id_fk;

ALTER TABLE dms_sample_dbo.sporting_event DROP CONSTRAINT se_home_team_id_fk;

ALTER TABLE dms_sample_dbo.sporting_event DROP CONSTRAINT se_location_id_fk;

ALTER TABLE dms_sample_dbo.sporting_event DROP CONSTRAINT se_sport_type_fk;

ALTER TABLE dms_sample_dbo.sporting_event_ticket DROP CONSTRAINT set_person_id;

ALTER TABLE dms_sample_dbo.sporting_event_ticket DROP CONSTRAINT set_seat_fk;

ALTER TABLE dms_sample_dbo.sporting_event_ticket DROP CONSTRAINT set_sporting_event_fk;

ALTER TABLE dms_sample_dbo.ticket_purchase_hist DROP CONSTRAINT tph_sport_event_tic_id;

ALTER TABLE dms_sample_dbo.ticket_purchase_hist DROP CONSTRAINT tph_ticketholder_id;

ALTER TABLE dms_sample_dbo.ticket_purchase_hist DROP CONSTRAINT tph_transfer_from_id;

-- ------------ Write DROP-CONSTRAINT-stage scripts -----------

ALTER TABLE dms_sample_dbo.name_data DROP CONSTRAINT name_data_pk;

ALTER TABLE dms_sample_dbo.person DROP CONSTRAINT person_pk;

ALTER TABLE dms_sample_dbo.player DROP CONSTRAINT player_pk;

ALTER TABLE dms_sample_dbo.seat DROP CONSTRAINT seat_pk;

ALTER TABLE dms_sample_dbo.seat_type DROP CONSTRAINT st_seat_type_pk;

ALTER TABLE dms_sample_dbo.sport_division DROP CONSTRAINT sport_division_pk;

ALTER TABLE dms_sample_dbo.sport_league DROP CONSTRAINT sport_league_pk;

ALTER TABLE dms_sample_dbo.sport_location DROP CONSTRAINT sport_location_pk;

ALTER TABLE dms_sample_dbo.sport_team DROP CONSTRAINT sport_team_pk;

ALTER TABLE dms_sample_dbo.sport_type DROP CONSTRAINT sport_type_pk;

ALTER TABLE dms_sample_dbo.sporting_event DROP CONSTRAINT sporting_event_pk;

ALTER TABLE dms_sample_dbo.sporting_event_ticket DROP CONSTRAINT sporting_event_ticket_pk;

ALTER TABLE dms_sample_dbo.sysdiagrams DROP CONSTRAINT pk__sysdiagr__c2b05b6123f98625;

ALTER TABLE dms_sample_dbo.sysdiagrams DROP CONSTRAINT uk_principal_name;

ALTER TABLE dms_sample_dbo.ticket_purchase_hist DROP CONSTRAINT ticket_purchase_hist_pk;

-- ------------ Write DROP-TABLE-stage scripts -----------

DROP TABLE IF EXISTS dms_sample_dbo.mlb_data;

DROP TABLE IF EXISTS dms_sample_dbo.name_data;

DROP TABLE IF EXISTS dms_sample_dbo.nfl_data;

DROP TABLE IF EXISTS dms_sample_dbo.nfl_stadium_data;

DROP TABLE IF EXISTS dms_sample_dbo.person;

DROP TABLE IF EXISTS dms_sample_dbo.player;

DROP TABLE IF EXISTS dms_sample_dbo.seat;

DROP TABLE IF EXISTS dms_sample_dbo.seat_type;

DROP TABLE IF EXISTS dms_sample_dbo.sport_division;

DROP TABLE IF EXISTS dms_sample_dbo.sport_league;

DROP TABLE IF EXISTS dms_sample_dbo.sport_location;

DROP TABLE IF EXISTS dms_sample_dbo.sport_team;

DROP TABLE IF EXISTS dms_sample_dbo.sport_type;

DROP TABLE IF EXISTS dms_sample_dbo.sporting_event;

DROP TABLE IF EXISTS dms_sample_dbo.sporting_event_ticket;

DROP TABLE IF EXISTS dms_sample_dbo.sysdiagrams;

DROP TABLE IF EXISTS dms_sample_dbo.ticket_purchase_hist;

-- ------------ Write CREATE-DATABASE-stage scripts -----------

CREATE SCHEMA IF NOT EXISTS dms_sample_dbo;

-- ------------ Write CREATE-TABLE-stage scripts -----------

CREATE TABLE IF NOT EXISTS dms_sample_dbo.mlb_data(
mlb_id INTEGER ENCODE ZSTD,
mlb_name VARCHAR(90) ENCODE ZSTD,
mlb_pos VARCHAR(90) ENCODE ZSTD,
mlb_team VARCHAR(90) ENCODE ZSTD,
mlb_team_long VARCHAR(90) ENCODE ZSTD,
bats VARCHAR(90) ENCODE ZSTD,
throws VARCHAR(90) ENCODE ZSTD,
birth_year VARCHAR(90) ENCODE ZSTD,
bp_id INTEGER ENCODE ZSTD,
bref_id VARCHAR(90) ENCODE ZSTD,
bref_name VARCHAR(90) ENCODE ZSTD,
cbs_id VARCHAR(90) ENCODE ZSTD,
cbs_name VARCHAR(90) ENCODE ZSTD,
cbs_pos VARCHAR(90) ENCODE ZSTD,
espn_id INTEGER ENCODE ZSTD,
espn_name VARCHAR(90) ENCODE ZSTD,
espn_pos VARCHAR(90) ENCODE ZSTD,
fg_id VARCHAR(90) ENCODE ZSTD,
fg_name VARCHAR(90) ENCODE ZSTD,
lahman_id VARCHAR(90) ENCODE ZSTD,
nfbc_id INTEGER ENCODE ZSTD,
nfbc_name VARCHAR(90) ENCODE ZSTD,
nfbc_pos VARCHAR(90) ENCODE ZSTD,
retro_id VARCHAR(90) ENCODE ZSTD,
retro_name VARCHAR(90) ENCODE ZSTD,
debut VARCHAR(90) ENCODE ZSTD,
yahoo_id INTEGER ENCODE ZSTD,
yahoo_name VARCHAR(90) ENCODE ZSTD,
yahoo_pos VARCHAR(90) ENCODE ZSTD,
mlb_depth VARCHAR(90) ENCODE ZSTD
)
DISTSTYLE EVEN;

CREATE TABLE IF NOT EXISTS dms_sample_dbo.name_data(
name_type VARCHAR(45) NOT NULL,
name VARCHAR(135) ENCODE ZSTD NOT NULL
)
DISTSTYLE KEY
DISTKEY
(
name_type
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.nfl_data(
position VARCHAR(15) ENCODE ZSTD,
player_number INTEGER ENCODE ZSTD,
name VARCHAR(120) ENCODE ZSTD,
status VARCHAR(30) ENCODE ZSTD,
stat1 VARCHAR(30) ENCODE ZSTD,
stat1_val VARCHAR(30) ENCODE ZSTD,
stat2 VARCHAR(30) ENCODE ZSTD,
stat2_val VARCHAR(30) ENCODE ZSTD,
stat3 VARCHAR(30) ENCODE ZSTD,
stat3_val VARCHAR(30) ENCODE ZSTD,
stat4 VARCHAR(30) ENCODE ZSTD,
stat4_val VARCHAR(30) ENCODE ZSTD,
team VARCHAR(30) ENCODE ZSTD
)
DISTSTYLE EVEN;

CREATE TABLE IF NOT EXISTS dms_sample_dbo.nfl_stadium_data(
stadium VARCHAR(180) ENCODE ZSTD,
seating_capacity INTEGER ENCODE ZSTD,
location VARCHAR(120) ENCODE ZSTD,
surface VARCHAR(240) ENCODE ZSTD,
roof VARCHAR(90) ENCODE ZSTD,
team VARCHAR(120) ENCODE ZSTD,
opened VARCHAR(30) ENCODE ZSTD,
sport_location_id INTEGER ENCODE ZSTD
)
DISTSTYLE EVEN;

CREATE TABLE IF NOT EXISTS dms_sample_dbo.person(
id INTEGER IDENTITY(1, 1) NOT NULL,
full_name VARCHAR(180) ENCODE ZSTD NOT NULL,
last_name VARCHAR(90) ENCODE ZSTD,
first_name VARCHAR(90) ENCODE ZSTD
)
DISTSTYLE KEY
DISTKEY
(
id
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.player(
id INTEGER IDENTITY(1, 1) NOT NULL,
sport_team_id INTEGER ENCODE ZSTD NOT NULL,
last_name VARCHAR(90) ENCODE ZSTD,
first_name VARCHAR(90) ENCODE ZSTD,
full_name VARCHAR(90) ENCODE ZSTD
)
DISTSTYLE KEY
DISTKEY
(
id
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.seat(
sport_location_id INTEGER NOT NULL,
seat_level INTEGER ENCODE ZSTD NOT NULL,
seat_section VARCHAR(45) ENCODE ZSTD NOT NULL,
seat_row VARCHAR(30) ENCODE ZSTD NOT NULL,
seat VARCHAR(30) ENCODE ZSTD NOT NULL,
seat_type VARCHAR(45) ENCODE ZSTD
)
DISTSTYLE KEY
DISTKEY
(
sport_location_id
)
SORTKEY
(
sport_location_id
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.seat_type(
name VARCHAR(45) NOT NULL,
description VARCHAR(360) ENCODE ZSTD,
relative_quality INTEGER ENCODE ZSTD
)
DISTSTYLE KEY
DISTKEY
(
name
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.sport_division(
sport_type_name VARCHAR(45) NOT NULL,
sport_league_short_name VARCHAR(30) ENCODE ZSTD NOT NULL,
short_name VARCHAR(30) ENCODE ZSTD NOT NULL,
long_name VARCHAR(180) ENCODE ZSTD,
description VARCHAR(360) ENCODE ZSTD
)
DISTSTYLE KEY
DISTKEY
(
sport_type_name
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.sport_league(
sport_type_name VARCHAR(45) ENCODE ZSTD NOT NULL,
short_name VARCHAR(30) NOT NULL,
long_name VARCHAR(180) ENCODE ZSTD NOT NULL,
description VARCHAR(360) ENCODE ZSTD
)
DISTSTYLE KEY
DISTKEY
(
short_name
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.sport_location(
id INTEGER IDENTITY(1, 1) NOT NULL,
name VARCHAR(180) ENCODE ZSTD NOT NULL,
city VARCHAR(180) ENCODE ZSTD NOT NULL,
seating_capacity INTEGER ENCODE ZSTD,
levels INTEGER ENCODE ZSTD,
sections INTEGER ENCODE ZSTD
)
DISTSTYLE KEY
DISTKEY
(
id
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.sport_team(
id INTEGER IDENTITY(1, 1) NOT NULL,
name VARCHAR(90) ENCODE ZSTD NOT NULL,
abbreviated_name VARCHAR(30) ENCODE ZSTD,
home_field_id INTEGER ENCODE ZSTD,
sport_type_name VARCHAR(45) ENCODE ZSTD NOT NULL,
sport_league_short_name VARCHAR(30) ENCODE ZSTD NOT NULL,
sport_division_short_name VARCHAR(30) ENCODE ZSTD
)
DISTSTYLE KEY
DISTKEY
(
id
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.sport_type(
name VARCHAR(45) NOT NULL,
description VARCHAR(360) ENCODE ZSTD
)
DISTSTYLE KEY
DISTKEY
(
name
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.sporting_event(
id BIGINT IDENTITY(1, 1) NOT NULL,
sport_type_name VARCHAR(45) ENCODE ZSTD NOT NULL,
home_team_id INTEGER ENCODE ZSTD NOT NULL,
away_team_id INTEGER ENCODE ZSTD NOT NULL,
location_id INTEGER ENCODE ZSTD NOT NULL,
start_date_time TIMESTAMP ENCODE ZSTD NOT NULL,
sold_out INTEGER ENCODE ZSTD DEFAULT (0) NOT NULL
)
DISTSTYLE KEY
DISTKEY
(
id
)
SORTKEY
(
start_date
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.sporting_event_ticket(
id BIGINT IDENTITY(1, 1) NOT NULL,
sporting_event_id BIGINT NOT NULL,
sport_location_id INTEGER NOT NULL,
seat_level INTEGER NOT NULL,
seat_section VARCHAR(45) NOT NULL,
seat_row VARCHAR(30) NOT NULL,
seat VARCHAR(30) NOT NULL,
ticketholder_id INTEGER,
ticket_price NUMERIC(10,4) ENCODE ZSTD NOT NULL
)
DISTSTYLE KEY
DISTKEY
(
id
)
SORTKEY
(
sporting_event_id,
sport_location_id,
seat_level,
seat_section,
seat_row,
seat,
ticketholder_id
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.sysdiagrams(
name VARCHAR(384) ENCODE ZSTD NOT NULL,
principal_id INTEGER ENCODE ZSTD NOT NULL,
diagram_id INTEGER IDENTITY(1, 1) NOT NULL,
version INTEGER ENCODE ZSTD,
definition VARCHAR(1300) ENCODE ZSTD
)
DISTSTYLE KEY
DISTKEY
(
diagram_id
);

CREATE TABLE IF NOT EXISTS dms_sample_dbo.ticket_purchase_hist(
sporting_event_ticket_id BIGINT NOT NULL,
purchased_by_id INTEGER NOT NULL,
transaction_date_time TIMESTAMP ENCODE ZSTD NOT NULL,
transferred_from_id INTEGER,
purchase_price NUMERIC(10,4) ENCODE ZSTD NOT NULL
)
DISTSTYLE KEY
DISTKEY
(
sporting_event_ticket_id
)
SORTKEY
(
purchased_by_id,
transferred_from_id
);

-- ------------ Write CREATE-CONSTRAINT-stage scripts -----------

ALTER TABLE dms_sample_dbo.name_data
ADD CONSTRAINT name_data_pk PRIMARY KEY (name_type, name);

ALTER TABLE dms_sample_dbo.person
ADD CONSTRAINT person_pk PRIMARY KEY (id);

ALTER TABLE dms_sample_dbo.player
ADD CONSTRAINT player_pk PRIMARY KEY (id);

ALTER TABLE dms_sample_dbo.seat
ADD CONSTRAINT seat_pk PRIMARY KEY (sport_location_id, seat_level, seat_section, seat_row, seat);

ALTER TABLE dms_sample_dbo.seat_type
ADD CONSTRAINT st_seat_type_pk PRIMARY KEY (name);

ALTER TABLE dms_sample_dbo.sport_division
ADD CONSTRAINT sport_division_pk PRIMARY KEY (sport_type_name, sport_league_short_name, short_name);

ALTER TABLE dms_sample_dbo.sport_league
ADD CONSTRAINT sport_league_pk PRIMARY KEY (short_name);

ALTER TABLE dms_sample_dbo.sport_location
ADD CONSTRAINT sport_location_pk PRIMARY KEY (id);

ALTER TABLE dms_sample_dbo.sport_team
ADD CONSTRAINT sport_team_pk PRIMARY KEY (id);

ALTER TABLE dms_sample_dbo.sport_type
ADD CONSTRAINT sport_type_pk PRIMARY KEY (name);

ALTER TABLE dms_sample_dbo.sporting_event
ADD CONSTRAINT sporting_event_pk PRIMARY KEY (id);

ALTER TABLE dms_sample_dbo.sporting_event_ticket
ADD CONSTRAINT sporting_event_ticket_pk PRIMARY KEY (id);

ALTER TABLE dms_sample_dbo.sysdiagrams
ADD CONSTRAINT pk__sysdiagr__c2b05b6123f98625 PRIMARY KEY (diagram_id);

ALTER TABLE dms_sample_dbo.sysdiagrams
ADD CONSTRAINT uk_principal_name UNIQUE (principal_id, name);

ALTER TABLE dms_sample_dbo.ticket_purchase_hist
ADD CONSTRAINT ticket_purchase_hist_pk PRIMARY KEY (sporting_event_ticket_id, purchased_by_id, transaction_date_time);

-- ------------ Write CREATE-FOREIGN-KEY-CONSTRAINT-stage scripts -----------

ALTER TABLE dms_sample_dbo.player
ADD CONSTRAINT sport_team_fk FOREIGN KEY (sport_team_id) 
REFERENCES dms_sample_dbo.sport_team (id);

ALTER TABLE dms_sample_dbo.seat
ADD CONSTRAINT s_sport_location_fk FOREIGN KEY (sport_location_id) 
REFERENCES dms_sample_dbo.sport_location (id);

ALTER TABLE dms_sample_dbo.seat
ADD CONSTRAINT seat_type_fk FOREIGN KEY (seat_type) 
REFERENCES dms_sample_dbo.seat_type (name);

ALTER TABLE dms_sample_dbo.sport_division
ADD CONSTRAINT sd_sport_league_fk FOREIGN KEY (sport_league_short_name) 
REFERENCES dms_sample_dbo.sport_league (short_name);

ALTER TABLE dms_sample_dbo.sport_division
ADD CONSTRAINT sd_sport_type_fk FOREIGN KEY (sport_type_name) 
REFERENCES dms_sample_dbo.sport_type (name);

ALTER TABLE dms_sample_dbo.sport_league
ADD CONSTRAINT sl_sport_type_fk FOREIGN KEY (sport_type_name) 
REFERENCES dms_sample_dbo.sport_type (name);

ALTER TABLE dms_sample_dbo.sport_team
ADD CONSTRAINT home_field_fk FOREIGN KEY (home_field_id) 
REFERENCES dms_sample_dbo.sport_location (id);

ALTER TABLE dms_sample_dbo.sport_team
ADD CONSTRAINT st_sport_type_fk FOREIGN KEY (sport_type_name) 
REFERENCES dms_sample_dbo.sport_type (name);

ALTER TABLE dms_sample_dbo.sporting_event
ADD CONSTRAINT se_away_team_id_fk FOREIGN KEY (away_team_id) 
REFERENCES dms_sample_dbo.sport_team (id);

ALTER TABLE dms_sample_dbo.sporting_event
ADD CONSTRAINT se_home_team_id_fk FOREIGN KEY (home_team_id) 
REFERENCES dms_sample_dbo.sport_team (id);

ALTER TABLE dms_sample_dbo.sporting_event
ADD CONSTRAINT se_location_id_fk FOREIGN KEY (location_id) 
REFERENCES dms_sample_dbo.sport_location (id);

ALTER TABLE dms_sample_dbo.sporting_event
ADD CONSTRAINT se_sport_type_fk FOREIGN KEY (sport_type_name) 
REFERENCES dms_sample_dbo.sport_type (name);

ALTER TABLE dms_sample_dbo.sporting_event_ticket
ADD CONSTRAINT set_person_id FOREIGN KEY (ticketholder_id) 
REFERENCES dms_sample_dbo.person (id);

ALTER TABLE dms_sample_dbo.sporting_event_ticket
ADD CONSTRAINT set_seat_fk FOREIGN KEY (sport_location_id, seat_level, seat_section, seat_row, seat) 
REFERENCES dms_sample_dbo.seat (sport_location_id, seat_level, seat_section, seat_row, seat);

ALTER TABLE dms_sample_dbo.sporting_event_ticket
ADD CONSTRAINT set_sporting_event_fk FOREIGN KEY (sporting_event_id) 
REFERENCES dms_sample_dbo.sporting_event (id);

ALTER TABLE dms_sample_dbo.ticket_purchase_hist
ADD CONSTRAINT tph_sport_event_tic_id FOREIGN KEY (sporting_event_ticket_id) 
REFERENCES dms_sample_dbo.sporting_event_ticket (id);

ALTER TABLE dms_sample_dbo.ticket_purchase_hist
ADD CONSTRAINT tph_ticketholder_id FOREIGN KEY (purchased_by_id) 
REFERENCES dms_sample_dbo.person (id);

ALTER TABLE dms_sample_dbo.ticket_purchase_hist
ADD CONSTRAINT tph_transfer_from_id FOREIGN KEY (transferred_from_id) 
REFERENCES dms_sample_dbo.person (id);

-- ------------ Write CREATE-VIEW-stage scripts -----------

CREATE OR REPLACE VIEW dms_sample_dbo.getnewid (new_id) AS
SELECT
    aws_sqlserver_ext.NEWID() AS new_id;

CREATE OR REPLACE VIEW dms_sample_dbo.sporting_event_computed (id, sport_type_name, home_team_id, away_team_id, location_id, start_date_time, sold_out) AS
SELECT 
id,sport_type_name,home_team_id,away_team_id,location_id,start_date_time,CONVERT (
/* Transformer error occurred */, start_date_time) AS start_date,sold_out FROM dms_sample_dbo.sporting_event;

CREATE OR REPLACE VIEW dms_sample_dbo.sporting_event_info (event_id, sport, event_date_time, home_team, away_team, location, city) AS
SELECT
    e.id AS event_id, e.sport_type_name AS sport, e.start_date_time AS event_date_time, h.name AS home_team, a.name AS away_team, l.name AS location, l.city AS city
    FROM dms_sample_dbo.sporting_event AS e, dms_sample_dbo.sport_team AS h, dms_sample_dbo.sport_team AS a, dms_sample_dbo.sport_location AS l
    WHERE e.home_team_id = h.id AND e.away_team_id = a.id AND e.location_id = l.id;

CREATE OR REPLACE VIEW dms_sample_dbo.sporting_event_ticket_info (ticket_id, event_id, sport, event_date_time, home_team, away_team, location, city, seat_level, seat_section, seat_row, seat, ticket_price, ticketholder) AS
SELECT
    t.id AS ticket_id, e.event_id, e.sport, e.event_date_time, e.home_team, e.away_team, e.location, e.city, t.seat_level, t.seat_section, t.seat_row, t.seat, t.ticket_price, p.full_name AS ticketholder
    FROM dms_sample_dbo.sporting_event_ticket AS t
    JOIN dms_sample_dbo.sporting_event_info AS e
        ON t.sporting_event_id = e.event_id
    LEFT OUTER JOIN dms_sample_dbo.person AS p
        ON t.ticketholder_id = p.id;

-- ------------ Write CREATE-FUNCTION-stage scripts -----------

CREATE OR REPLACE FUNCTION dms_sample_dbo.fn_diagramobjects()
RETURNS INTEGER
STABLE
AS $$
id_upgraddiagrams = None
id_sysdiagrams = None
id_helpdiagrams = None
id_helpdiagramdefinition = None
id_creatediagram = None
id_renamediagram = None
id_alterdiagram = None
id_dropdiagram = None
installedobjects = None
#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#select @InstalledObjects = 0
#*/

#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
# select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
#			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
#			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
#			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
#			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
#			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
#			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'),
#			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')
#*/

#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#if @id_upgraddiagrams is not null
#			select @InstalledObjects = @InstalledObjects + 1
#*/

#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#if @id_sysdiagrams is not null
#			select @InstalledObjects = @InstalledObjects + 2
#*/

#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#if @id_helpdiagrams is not null
#			select @InstalledObjects = @InstalledObjects + 4
#*/

#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#if @id_helpdiagramdefinition is not null
#			select @InstalledObjects = @InstalledObjects + 8
#*/

#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#if @id_creatediagram is not null
#			select @InstalledObjects = @InstalledObjects + 16
#*/

#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#if @id_renamediagram is not null
#			select @InstalledObjects = @InstalledObjects + 32
#*/

#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#if @id_alterdiagram  is not null
#			select @InstalledObjects = @InstalledObjects + 64
#*/

#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#if @id_dropdiagram is not null
#			select @InstalledObjects = @InstalledObjects + 128
#*/

return installedobjects
$$
LANGUAGE plpythonu;

CREATE OR REPLACE FUNCTION dms_sample_dbo.rand_int(min INTEGER, max INTEGER)
RETURNS INTEGER
STABLE
AS $$
if min is None or max is None:
	return None
myid = None
#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#select @myid = new_id from getNewID
#*/

randint = None
#/*
#[18040 - Severity CRITICAL - Amazon Redshift supports only scalar non-SQL user-defined functions based on Python. Perform a manual conversion.]
#SELECT @randint = ABS(Checksum(@myid) % (@max - @min +1)) + @min;
#*/

return
# /* Transformer error occurred */
$$
LANGUAGE plpythonu;

-- ------------ Write CREATE-OTHER-stage scripts -----------

CREATE PROCEDURE dms_sample_dbo.generate_tickets(par_event_id IN bigint)
AS $$
/* drop procedure dbo.generate_tickets; */

/*
[18052 - Severity CRITICAL - Amazon Redshift does not support the CHECKSUM(<VARIABLE_ARGUMENTS>) function. Perform a manual conversion.]
DECLARE @e_id BIGINT
*/
BEGIN
    OPEN var_event_cur FOR
    SELECT
        id, location_id
        FROM dms_sample_dbo.sporting_event
        WHERE id = par_event_id;
    /* randomly generated standard price between 30 and 50 dollars */
    
    /* Transformer error occurred */
    ;

    WHILE FOUND LOOP
        INSERT INTO dms_sample_dbo.sporting_event_ticket (sporting_event_id, sport_location_id, seat_level, seat_section, seat_row, seat, ticket_price)
        SELECT
            sporting_event.id, seat.sport_location_id, seat.seat_level, seat.seat_section, seat.seat_row, seat.seat, (CASE
                WHEN seat.seat_type = 'luxury' THEN 3 * var_standard_price
                WHEN seat.seat_type = 'premium' THEN 2 * var_standard_price
                WHEN seat.seat_type = 'standard' THEN var_standard_price
                WHEN seat.seat_type = 'sub-standard' THEN 0.8 * var_standard_price
                WHEN seat.seat_type = 'obstructed' THEN 0.5 * var_standard_price
                WHEN seat.seat_type = 'standing' THEN 0.5 * var_standard_price
            END) AS ticket_price
            FROM dms_sample_dbo.sporting_event, dms_sample_dbo.seat
            WHERE sporting_event.location_id = seat.sport_location_id AND sporting_event.id = var_e_id;
        /* Transformer error occurred */;
    END LOOP;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.generateseats()
AS $$
DECLARE
    var_s_ref VARCHAR(90);
DECLARE
    var_min_rows_per_section INTEGER;
DECLARE
    var_max_rows_per_section INTEGER;
DECLARE
    var_seat_count INTEGER;
DECLARE
    var_seats INTEGER;
DECLARE
    var_rows INTEGER;
DECLARE
    var_tot_seats INTEGER;
DECLARE
    var_l INTEGER;
DECLARE
    var_k INTEGER;
DECLARE
    var_j INTEGER;
DECLARE
    var_i INTEGER;
DECLARE
    var_rowct INTEGER;
DECLARE
    var_seat_type VARCHAR(45);
DECLARE
    var_sections INTEGER;
DECLARE
    var_levels INTEGER;
DECLARE
    var_seating_capacity INTEGER;
DECLARE
    var_sport_location_id INTEGER;
DECLARE
    var_loc_cur refcursor;
/* Transformer error occurred */;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.generateticketactivity(par_max_transactions IN INTEGER)
AS $$
BEGIN
    DECLARE
        var_min_person_id INTEGER;
        var_max_person_id INTEGER;
        var_min_row INTEGER;
        var_max_row INTEGER;
        var_target_row INTEGER;
        var_event_id BIGINT;
        var_target_person_id INTEGER;
        var_person_id INTEGER;
        var_quantity INTEGER;
        var_current_txn INTEGER := 0;
        var_reset_events INTEGER := 1;
    BEGIN
        CREATE TEMPORARY TABLE open_events_generateticketactivity
        (rownum INTEGER NOT NULL PRIMARY KEY,
            id BIGINT);
        SELECT
            MIN(id), MAX(id)
            INTO var_min_person_id, var_max_person_id
            FROM dms_sample_dbo.person;

        WHILE var_current_txn < par_max_transactions LOOP
            IF var_reset_events = 1 THEN
                DELETE FROM open_events_generateticketactivity;
                INSERT INTO open_events_generateticketactivity
                SELECT
                    row_number() OVER (ORDER BY start_date NULLS FIRST), id
                    FROM dms_sample_dbo.sporting_event
                    WHERE sold_out <> 1
                    ORDER BY start_date NULLS FIRST;
                SELECT
                    MIN(rownum), MAX(rownum)
                    INTO var_min_row, var_max_row
                    FROM open_events_generateticketactivity;
                var_reset_events := 0;
            END IF;
            var_target_row := dms_sample_dbo.rand_int(var_min_row, var_max_row);
            SELECT
                id
                INTO var_event_id
                FROM open_events_generateticketactivity
                WHERE rownum = var_target_row;
            var_target_person_id := dms_sample_dbo.rand_int(var_min_person_id, var_max_person_id);
            SELECT
                MIN(id)
                INTO var_person_id
                FROM dms_sample_dbo.person
                WHERE id > var_target_person_id - 1;
            var_quantity := dms_sample_dbo.rand_int(1, 6)::INTEGER;

            BEGIN
                CALL dms_sample_dbo.selltickets (var_person_id, var_event_id, var_quantity);
                var_current_txn := (var_current_txn + 1)::INTEGER;
                /* WAITFOR DELAY '00:00:00.01'; /* we can add this in the future if needed. */ */
                RAISE NOTICE '%', ('event:' || var_event_id || ' person:' || var_person_id || ' quantity: ' || var_quantity);
                EXCEPTION
                    WHEN OTHERS THEN
                    /*
                    SET @reset_events = 1;
                    /* If we fail to sell tickets to this event, we reload the open events table as this one is sold out */
                    */
                    /* If we fail to sell tickets to this event, we reload the open events table as this one is sold out */
            END;
        END LOOP;
        EXCEPTION
            WHEN OTHERS THEN
            /* PRINT ('Error: Uable to generate tickets...'); */
    END;
    DROP TABLE IF EXISTS open_events_generateticketactivity;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.generatetransferactivity(par_max_transactions IN INTEGER)
AS $$
BEGIN
    DECLARE
        var_txn_count INTEGER := 0;
        var_min_tik_id BIGINT;
        var_max_tik_id BIGINT;
        var_tik_id BIGINT;
        var_max_p_id INTEGER;
        var_min_p_id INTEGER;
        var_person_id INTEGER;
        var_rand_p_max INTEGER;
        var_rand_max BIGINT;
        var_xfer_all BOOLEAN := 1;
        var_price NUMERIC(10, 4);
        var_price_multiplier BIGINT := 1;
        var_cur1 refcursor;
        var_cur2 refcursor;
    BEGIN
        /* get max and min ticket ids */
        SELECT
            MIN(sporting_event_ticket_id), MAX(sporting_event_ticket_id)
            INTO var_min_tik_id, var_max_tik_id
            FROM dms_sample_dbo.ticket_purchase_hist;
        /* get max and min person ids */
        SELECT
            MIN(id), MAX(id)
            INTO var_min_p_id, var_max_p_id
            FROM dms_sample_dbo.person;
        RAISE NOTICE '%', ('max t: ' || var_max_tik_id || ' min t: ' || var_min_tik_id || 'max p: ' || var_max_p_id || ' min p: ' || var_min_p_id);

        WHILE var_txn_count < par_max_transactions LOOP
            /* find a random upper bound for ticket and person ids */
            var_rand_max := dms_sample_dbo.rand_int(var_min_tik_id, var_max_tik_id);
            var_rand_p_max := dms_sample_dbo.rand_int(var_min_p_id, var_max_p_id);
            SELECT
                MAX(sporting_event_ticket_id)
                INTO var_tik_id
                FROM dms_sample_dbo.ticket_purchase_hist
                WHERE sporting_event_ticket_id <= var_rand_max;
            SELECT
                MAX(id)
                INTO var_person_id
                FROM dms_sample_dbo.person
                WHERE id <= var_rand_p_max;
        /* 80% of the time transfer all tickets, 20% of the time don't */
        END LOOP
        /* 30% of the time change the price by up to 20% in either direction */
        /* reset some variables */
        ;
        EXCEPTION
            WHEN OTHERS THEN
            /* PRINT ('Sorry, not tickets are available for transfer.'); */
    END;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.loadmlbplayers()
AS $$
/* Load MLB Data */
DECLARE
    var_team_name VARCHAR(180);
DECLARE
    var_full_name VARCHAR(90);
DECLARE
    var_first_name VARCHAR(90);
DECLARE
    var_last_name VARCHAR(90);
DECLARE
    var_sport_team_id INTEGER;
DECLARE
    var_mlb_players refcursor;
BEGIN
    OPEN var_mlb_players FOR
    SELECT DISTINCT
        CASE LTRIM(RTRIM(mlb_team_long))
            WHEN 'Anaheim Angels' THEN 'Los Angeles Angels'
            ELSE LTRIM(RTRIM(mlb_team_long))
        END AS mlb_team_long, LTRIM(RTRIM(mlb_name)) AS name, SUBSTRING(LTRIM(RTRIM(mlb_name)), 1, CHARINDEX(' ', mlb_name)) AS t_name, SUBSTRING(LTRIM(RTRIM(mlb_name)), CHARINDEX(' ', mlb_name), LENGTH(mlb_name)) AS f_name
        FROM dms_sample_dbo.mlb_data;

    BEGIN
        FETCH var_mlb_players INTO var_team_name, var_last_name, var_first_name, var_full_name;

        WHILE FOUND LOOP
            SELECT
                id
                INTO var_sport_team_id
                FROM dms_sample_dbo.sport_team
                WHERE sport_type_name = 'baseball' AND sport_league_short_name = 'MLB' AND name = var_team_name;
            INSERT INTO dms_sample_dbo.player (sport_team_id, last_name, first_name, full_name)
            VALUES (var_sport_team_id, var_last_name, var_first_name, var_full_name);
            FETCH var_mlb_players INTO var_team_name, var_last_name, var_first_name, var_full_name;
        END LOOP;
        CLOSE var_mlb_players;
    END;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.loadmlbteams()
AS $$
/* Load MLB Data */
DECLARE
    var_mlbteamscursor refcursor;
DECLARE
    var_a_name VARCHAR(90);
DECLARE
    var_l_name VARCHAR(90);
DECLARE
    var_v_div VARCHAR(30);
BEGIN
    OPEN var_mlbteamscursor FOR
    SELECT DISTINCT
        CASE LTRIM(RTRIM(mlb_team))
            WHEN 'AAA' THEN 'LAA'
            ELSE LTRIM(RTRIM(mlb_team))
        END AS mlb_team,
        CASE LTRIM(RTRIM(mlb_team_long))
            WHEN 'Anaheim Angels' THEN 'Los Angeles Angels'
            ELSE LTRIM(RTRIM(mlb_team_long))
        END AS mlb_team_long
        FROM dms_sample_dbo.mlb_data;

    BEGIN
        FETCH var_mlbteamscursor INTO var_a_name, var_l_name;

        WHILE FOUND LOOP
            var_v_div :=
            CASE
                WHEN var_a_name IN ('BAL', 'BOS', 'TOR', 'TB', 'NYY') THEN 'AL East'
                WHEN var_a_name IN ('CLE', 'DET', 'KC', 'CWS', 'MIN') THEN 'AL Central'
                WHEN var_a_name IN ('TEX', 'SEA', 'HOU', 'OAK', 'LAA') THEN 'AL West'
                WHEN var_a_name IN ('WSH', 'MIA', 'NYM', 'PHI', 'ATL') THEN 'NL East'
                WHEN var_a_name IN ('CHC', 'STL', 'PIT', 'MIL', 'CIN') THEN 'NL Central'
                WHEN var_a_name IN ('COL', 'SD', 'LAD', 'SF', 'ARI') THEN 'NL West'
            END;
            INSERT INTO dms_sample_dbo.sport_team (name, abbreviated_name, sport_type_name, sport_league_short_name, sport_division_short_name)
            VALUES (var_l_name, var_a_name, 'baseball', 'MLB', var_v_div);
            FETCH var_mlbteamscursor INTO var_a_name, var_l_name;
        END LOOP;
        CLOSE var_mlbteamscursor;
    END;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.loadnflplayers()
AS $$
DECLARE
    var_sport_team_id INTEGER;
DECLARE
    var_f_name VARCHAR(90);
DECLARE
    var_l_name VARCHAR(90);
DECLARE
    var_name VARCHAR(180);
DECLARE
    var_team VARCHAR(30);
DECLARE
    var_nfl_players refcursor;
BEGIN
    OPEN var_nfl_players FOR
    SELECT
        team, name, SUBSTRING(RTRIM(LTRIM(name)), 1, CHARINDEX(',', name) - 1) AS l_name, RTRIM(LTRIM(SUBSTRING(RTRIM(LTRIM(name)), CHARINDEX(',', name) + 1, LENGTH(name)))) AS f_name
        FROM dms_sample_dbo.nfl_data;

    BEGIN
        FETCH var_nfl_players INTO var_team, var_name, var_l_name, var_f_name;

        WHILE FOUND LOOP
            SELECT
                id
                INTO var_sport_team_id
                FROM dms_sample_dbo.sport_team
                WHERE sport_type_name = 'football' AND sport_league_short_name = 'NFL' AND abbreviated_name = var_team;
            INSERT INTO dms_sample_dbo.player (sport_team_id, last_name, first_name, full_name)
            VALUES (var_sport_team_id, var_l_name, var_f_name, var_name);
            FETCH var_nfl_players INTO var_team, var_name, var_l_name, var_f_name;
        END LOOP;
        CLOSE var_nfl_players;
    END;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.loadnflteams()
AS $$
/* Load NFL Data */
DECLARE
    var_v_division VARCHAR(30);
DECLARE
    var_v_league VARCHAR(30);
DECLARE
    var_v_sport_type VARCHAR(30);
/* Transformer error occurred */;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.selltickets(par_person_id IN INTEGER, par_event_id IN bigint, par_quantity IN INTEGER)
AS $$
BEGIN
    DECLARE
        var_seat_level INTEGER;
        var_seat_section VARCHAR(45);
        var_seat_row VARCHAR(30);
        var_seats_available INTEGER := 0;
        var_success INTEGER := 0;
        var_rows_updated INTEGER := 0;
        var1 VARCHAR(MAX);
        var_rowcount INTEGER;
    BEGIN
        CREATE TEMPORARY TABLE ticket_ids_selltickets
        (id BIGINT,
            price NUMERIC(10, 4));

        WHILE var_success <> 1 LOOP
            var_seats_available := 0;
        /* select a row with enough sid-by-side seats */
        END LOOP;
        EXCEPTION
            WHEN OTHERS THEN
            /* Use RAISERROR inside the CATCH block to return error */
            /* information about the original error that caused */
            /* execution to jump to the CATCH block. */
            
            /* DECLARE @ErrorMessage NVARCHAR (4000); */
            
            /* DECLARE @ErrorSeverity INT; */
            
            /* DECLARE @ErrorState INT; */
            
            /* SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE(); */
            
            /*
            
            /* Use RAISERROR inside the CATCH block to return error */
            */
            
            /*
            
            /* information about the original error that caused */
            */
            
            /*
            
            /* execution to jump to the CATCH block. */
            */
            
            /*
            RAISERROR (@ErrorMessage,
            /* Message text. */
            @ErrorSeverity,
            /* Severity. */
            @ErrorState
            /* State. */
            );
            */
            /* Message text. */
            /* Severity. */
            /* State. */
    END;
    DROP TABLE IF EXISTS ticket_ids_selltickets;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.sp_alterdiagram(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, par_version IN INTEGER, par_definition IN VARCHAR(10000), RetCode INOUT INTEGER)
AS $$
DECLARE
    var_theid INTEGER;
    var_retval INTEGER;
    var_isdbo INTEGER;
    var_uidfound INTEGER;
    var_diagid INTEGER;
    var_shouldchangeuid INTEGER;
    var1 VARCHAR(MAX);
    var1 VARCHAR(MAX);
BEGIN
    /*
    [18090 - Severity CRITICAL - Amazon Redshift doesn't support the SET NOCOUNT. If need try another way to send message back to the client application.]
    set nocount on
    */
    IF (par_diagramname IS NULL) THEN
        var1 := 'Invalid ARG';
        RAISE EXCEPTION 'Error message: %', var1;
        RETURN;
    END IF;
    /* Transformer error occurred */
    /* Transformer error occurred */;
    /*
    [18052 - Severity CRITICAL - Amazon Redshift does not support the DATABASE_PRINCIPAL_ID() function. Perform a manual conversion.]
    select @theId = DATABASE_PRINCIPAL_ID();
    */
    SELECT
        is_member('db_owner')
        INTO var_isdbo;

    IF (par_owner_id IS NULL) THEN
        SELECT
            var_theid
            INTO par_owner_id;
    END IF;
    /* Transformer error occurred */
    /* Transformer error occurred */;
    SELECT
        0
        INTO var_shouldchangeuid;
    SELECT
        diagram_id, principal_id
        INTO var_diagid, var_uidfound
        FROM dms_sample_dbo.sysdiagrams
        WHERE principal_id = par_owner_id AND name = par_diagramname;

    IF (var_diagid IS NULL OR (var_isdbo = 0 AND var_theid <> var_uidfound)) THEN
        var1 := 'Diagram does not exist or you do not have permission.';
        RAISE EXCEPTION 'Error message: %', var1;
        RETURN;
    END IF;

    IF (var_isdbo <> 0) THEN
        IF (var_uidfound IS NULL OR user_name(var_uidfound) IS NULL) THEN
            /* invalid principal_id */
            SELECT
                1
                INTO var_shouldchangeuid;
        END IF;
    END IF;
    /* update dds data */
    
    /*
    [18026 - Severity CRITICAL - Redshift doesn't support any DML operation on FILESTREAM columns. Try to rewrite modification logic using s3 service.]
    update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;
    */
    /* change owner */
    IF (var_shouldchangeuid = 1) THEN
        /* Transformer error occurred */
        /* Transformer error occurred */
    END IF;
    /* update dds version */

    IF (par_version IS NOT NULL) THEN
        /* Transformer error occurred */
        /* Transformer error occurred */
    END IF;
    RetCode := 0;
    RETURN;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.sp_creatediagram(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, par_version IN INTEGER, par_definition IN VARCHAR(10000), Cur INOUT refcursor)
AS $$

$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.sp_dropdiagram(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, RetCode INOUT INTEGER)
AS $$
DECLARE
    var_theid INTEGER;
    var_isdbo INTEGER;
    var_uidfound INTEGER;
    var_diagid INTEGER;
    var1 VARCHAR(MAX);
    var1 VARCHAR(MAX);
BEGIN
    /*
    [18090 - Severity CRITICAL - Amazon Redshift doesn't support the SET NOCOUNT. If need try another way to send message back to the client application.]
    set nocount on
    */
    IF (par_diagramname IS NULL) THEN
        var1 := 'Invalid value';
        RAISE EXCEPTION 'Error message: %', var1;
        RETURN;
    END IF;
    /* Transformer error occurred */
    /* Transformer error occurred */;
    /*
    [18052 - Severity CRITICAL - Amazon Redshift does not support the DATABASE_PRINCIPAL_ID() function. Perform a manual conversion.]
    select @theId = DATABASE_PRINCIPAL_ID();
    */
    SELECT
        is_member('db_owner')
        INTO var_isdbo;

    IF (par_owner_id IS NULL) THEN
        SELECT
            var_theid
            INTO par_owner_id;
    END IF;
    /* Transformer error occurred */
    /* Transformer error occurred */;
    SELECT
        diagram_id, principal_id
        INTO var_diagid, var_uidfound
        FROM dms_sample_dbo.sysdiagrams
        WHERE principal_id = par_owner_id AND name = par_diagramname;

    IF (var_diagid IS NULL OR (var_isdbo = 0 AND var_uidfound <> var_theid)) THEN
        var1 := 'Diagram does not exist or you do not have permission.';
        RAISE EXCEPTION 'Error message: %', var1;
        RETURN;
    END IF;
    DELETE FROM dms_sample_dbo.sysdiagrams
        WHERE diagram_id = var_diagid;
    RetCode := 0;
    RETURN;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.sp_helpdiagramdefinition(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, RetCode INOUT INTEGER, Cur INOUT refcursor)
AS $$
DECLARE
    var_theid INTEGER;
    var_isdbo INTEGER;
    var_diagid INTEGER;
    var_uidfound INTEGER;
    var1 VARCHAR(MAX);
    var1 VARCHAR(MAX);
BEGIN
    /*
    [18090 - Severity CRITICAL - Amazon Redshift doesn't support the SET NOCOUNT. If need try another way to send message back to the client application.]
    set nocount on
    */
    IF (par_diagramname IS NULL) THEN
        var1 := 'E_INVALIDARG';
        RAISE EXCEPTION 'Error message: %', var1;
        RETURN;
    END IF;
    /* Transformer error occurred */
    /* Transformer error occurred */;
    /*
    [18052 - Severity CRITICAL - Amazon Redshift does not support the DATABASE_PRINCIPAL_ID() function. Perform a manual conversion.]
    select @theId = DATABASE_PRINCIPAL_ID();
    */
    SELECT
        is_member('db_owner')
        INTO var_isdbo;

    IF (par_owner_id IS NULL) THEN
        SELECT
            var_theid
            INTO par_owner_id;
    END IF;
    /* Transformer error occurred */
    /* Transformer error occurred */;
    SELECT
        diagram_id, principal_id
        INTO var_diagid, var_uidfound
        FROM dms_sample_dbo.sysdiagrams
        WHERE principal_id = par_owner_id AND name = par_diagramname;

    IF (var_diagid IS NULL OR (var_isdbo = 0 AND var_uidfound <> var_theid)) THEN
        var1 := 'Diagram does not exist or you do not have permission.';
        RAISE EXCEPTION 'Error message: %', var1;
        RETURN;
    END IF;
    OPEN Cur FOR
    SELECT
        version, definition
        FROM dms_sample_dbo.sysdiagrams
        WHERE diagram_id = var_diagid;
    RetCode := 0;
    RETURN;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.sp_helpdiagrams(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, Cur INOUT refcursor)
AS $$
DECLARE
    var_user VARCHAR(768);
    var_dbologin BOOLEAN;
BEGIN
    /* Transformer error occurred */
    /* Transformer error occurred */;
    var_user := user_name();
    var_dbologin := CONVERT (BOOLEAN, is_member('db_owner'));
    /* Transformer error occurred */
    /* Transformer error occurred */;
    OPEN Cur FOR
    SELECT
        db_name() AS database, name AS name, diagram_id AS id, user_name(principal_id) AS owner, principal_id AS ownerid
        FROM dms_sample_dbo.sysdiagrams
        WHERE (var_dbologin::INTEGER = 1 OR user_name(principal_id) = var_user) AND (par_diagramname IS NULL OR name = par_diagramname) AND (par_owner_id IS NULL OR principal_id = par_owner_id)
        ORDER BY 4 NULLS FIRST, 5 NULLS FIRST, 1 NULLS FIRST;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.sp_renamediagram(par_diagramname IN VARCHAR(768), par_owner_id IN INTEGER, par_new_diagramname IN VARCHAR(768), RetCode INOUT INTEGER)
AS $$
DECLARE
    var_theid INTEGER;
    var_isdbo INTEGER;
    var_uidfound INTEGER;
    var_diagid INTEGER;
    var_diagidtarg INTEGER;
    var_u_name VARCHAR(768);
    var1 VARCHAR(MAX);
    var1 VARCHAR(MAX);
    var1 VARCHAR(MAX);
BEGIN
    /*
    [18090 - Severity CRITICAL - Amazon Redshift doesn't support the SET NOCOUNT. If need try another way to send message back to the client application.]
    set nocount on
    */
    IF ((par_diagramname IS NULL) OR (par_new_diagramname IS NULL)) THEN
        var1 := 'Invalid value';
        RAISE EXCEPTION 'Error message: %', var1;
        RETURN;
    END IF;
    /* Transformer error occurred */
    /* Transformer error occurred */;
    /*
    [18052 - Severity CRITICAL - Amazon Redshift does not support the DATABASE_PRINCIPAL_ID() function. Perform a manual conversion.]
    select @theId = DATABASE_PRINCIPAL_ID();
    */
    SELECT
        is_member('db_owner')
        INTO var_isdbo;

    IF (par_owner_id IS NULL) THEN
        SELECT
            var_theid
            INTO par_owner_id;
    END IF;
    /* Transformer error occurred */
    /* Transformer error occurred */;
    SELECT
        user_name(par_owner_id)
        INTO var_u_name;
    SELECT
        diagram_id, principal_id
        INTO var_diagid, var_uidfound
        FROM dms_sample_dbo.sysdiagrams
        WHERE principal_id = par_owner_id AND name = par_diagramname;

    IF (var_diagid IS NULL OR (var_isdbo = 0 AND var_uidfound <> var_theid)) THEN
        var1 := 'Diagram does not exist or you do not have permission.';
        RAISE EXCEPTION 'Error message: %', var1;
        RETURN;
    END IF;
    /* if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change */
    /* return 0; */

    IF (var_u_name IS NULL) THEN
        SELECT
            diagram_id
            INTO var_diagidtarg
            FROM dms_sample_dbo.sysdiagrams
            WHERE principal_id = var_theid AND name = par_new_diagramname;
    ELSE
        SELECT
            diagram_id
            INTO var_diagidtarg
            FROM dms_sample_dbo.sysdiagrams
            WHERE principal_id = par_owner_id AND name = par_new_diagramname;
    END IF;

    IF ((var_diagidtarg IS NOT NULL) AND var_diagid <> var_diagidtarg) THEN
        var1 := 'The name is already used.';
        RAISE EXCEPTION 'Error message: %', var1;
        RETURN;
    END IF;

    IF (var_u_name IS NULL) THEN
        /* Transformer error occurred */
        /* Transformer error occurred */
    ELSE
        UPDATE dms_sample_dbo.sysdiagrams
        SET name = par_new_diagramname
            WHERE diagram_id = var_diagid;
    END IF;
    RetCode := 0;
    RETURN;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.sp_upgraddiagrams(RetCode INOUT INTEGER)
AS $$
BEGIN
    RETURN;
    CREATE TABLE dms_sample_dbo.sysdiagrams
    (name VARCHAR(768) NOT NULL,
        principal_id INTEGER NOT NULL,
        /* we may change it to varbinary(85) */
        diagram_id INTEGER PRIMARY KEY IDENTITY,
        version INTEGER,
        definition VARCHAR(10000),
        CONSTRAINT UK_principal_name PRIMARY KEY (principal_id, name));
    /* Add this if we need to have some form of extended properties for diagrams */
    /*
    IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
    BEGIN
    	CREATE TABLE dbo.sysdiagram_properties
    	(
    		diagram_id int,
    		name sysname,
    		value varbinary(max) NOT NULL
    	)
    END
    */
    /* Transformer error occurred */
    /*
    [18052 - Severity CRITICAL - Amazon Redshift does not support the DATABASE_PRINCIPAL_ID(SYSNAME) function. Perform a manual conversion.]
    insert into dbo.sysdiagrams
    			(
    				[name],
    				[principal_id],
    				[version],
    				[definition]
    			)
    			select
    				convert(sysname, dgnm.[uvalue]),
    				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
    				0,							-- zero for old format, dgdef.[version],
    				dgdef.[lvalue]
    			from dbo.[dtproperties] dgnm
    				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]
    				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
    
    			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_'
    */;
    RetCode := 1;
    RETURN;
END;
$$
LANGUAGE plpgsql;

CREATE PROCEDURE dms_sample_dbo.transferticket(par_ticket_id IN bigint, par_new_ticketholder_id IN bigint, par_transfer_all IN boolean, par_price IN NUMERIC(10,4))
AS $$
BEGIN
    DECLARE
        var_last_txn_date TIMESTAMP;
        var_old_ticketholder_id INTEGER;
        var_sporting_event_ticket_id BIGINT;
        var_purchase_price NUMERIC(10, 4);
        var_xfer_cur refcursor;
    BEGIN
        /* get the latest record of purchase for this particular tickeholder for that event */
        /* note they could have purchsed, sold and repurchased the ticket */
        SELECT
            MAX(h.transaction_date_time), t.ticketholder_id
            INTO var_last_txn_date, var_old_ticketholder_id
            FROM dms_sample_dbo.ticket_purchase_hist AS h, dms_sample_dbo.sporting_event_ticket AS t
            WHERE t.id = par_ticket_id AND h.purchased_by_id = t.ticketholder_id AND ((h.sporting_event_ticket_id = par_ticket_id) OR (par_transfer_all::INTEGER = 1))
            GROUP BY t.ticketholder_id;
        /* get all tickets purchased at the same time for that event by that ticketholder */
        OPEN var_xfer_cur FOR
        SELECT
            sporting_event_ticket_id, purchase_price
            FROM dms_sample_dbo.ticket_purchase_hist
            WHERE purchased_by_id = var_old_ticketholder_id AND transaction_date_time = var_last_txn_date;
        /* Transformer error occurred */;

        WHILE FOUND LOOP
            /* update the sporting event ticket with the new owner */
            UPDATE dms_sample_dbo.sporting_event_ticket
            SET ticketholder_id = par_new_ticketholder_id
                WHERE id = var_sporting_event_ticket_id;
        /* record the transaction */
        END LOOP;
        CLOSE var_xfer_cur;
        COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
    END;
END;
$$
LANGUAGE plpgsql;

