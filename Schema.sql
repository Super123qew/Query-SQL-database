-- create Conferences table
create table Conferences (
  conference_id int primary key,
  conference_name varchar(50)
);

-- insert data into Conferences
insert into Conferences (conference_id, conference_name) values 
(1, 'Western'), 
(2, 'Eastern');

-- create Divisions table
create table Divisions (
  division_id int primary key,
  division_name varchar(50),
  conference_id int,
  foreign key (conference_id) references Conferences(conference_id)
);

-- insert data into Divisions
insert into Divisions (division_id, division_name, conference_id) values 
(1, 'Pacific', 1), 
(2, 'Atlantic', 2),
(3, 'Central', 2),
(4, 'Southeast', 2),
(5, 'Northwest', 1),
(6, 'Southwest', 1);

-- create Teams table
create table Teams (
  team_id int primary key,
  team_name varchar(50),
  city varchar(50),
  division_id int,
  conference_id int,
  foreign key (division_id) references Divisions(division_id),
  foreign key (conference_id) references Conferences(conference_id)
);

-- insert data into Teams
insert into Teams (team_id, team_name, city, division_id, conference_id) values 
(1, 'Lakers', 'Los Angeles', 1, 1), 
(2, 'Celtics', 'Boston', 2, 2),
(3, 'Bulls', 'Chicago', 3, 2),
(4, 'Warriors', 'Golden State', 1, 1);

-- create Players table
create table Players (
  player_id int primary key,
  player_name varchar(50),
  team_id int,
  position varchar(50),
  height int,
  weight int, 
  birthdate date,
  foreign key (team_id) references Teams(team_id)
);

-- insert data into Players
insert into Players (player_id, player_name, team_id, position, height, weight, birthdate) values 
(1, 'LeBron James', 1, 'SF', 206, 250, '1984-12-30'), 
(2, 'Anthony Davis', 1, 'PF', 208, 253, '1993-03-11'), 
(3, 'Jayson Tatum', 2, 'SF', 203, 210, '1998-03-03'),
(4, 'Jaylen Brown', 2, 'SG', 198, 223, '1996-10-24'),
(5, 'Nikola Vucevic', 3, 'C', 210, 260, '1990-10-24'),
(6, 'DeMar DeRozan', 3, 'SG', 198, 220, '1989-08-07'),
(7, 'Stephen Curry', 4, 'PG', 187, 185, '1988-03-14'),
(8, 'Klay Thompson', 4, 'SG', 198, 215, '1990-02-08');

-- create Statistics table
create table Statistics (
  game_id int, 
  player_id int,
  points int,
  rebounds int,
  assists int,
  blocks int,
  steals int,
  primary key (game_id, player_id),
  foreign key (player_id) references Players(player_id)
);

-- insert data into Statistics
insert into Statistics (game_id, player_id, points, rebounds, assists, blocks, steals) values 
(1, 1, 28, 12, 8, 1, 2), 
(1, 2, 32, 10, 5, 3, 1), 
(2, 4, 30, 7, 6, 1, 2),
(2, 5, 25, 9, 4, 2, 1), 
(3, 7, 35, 6, 7, 1, 3), 
(3, 8, 22, 14, 3, 2, 1);

-- create Games table
create table Games (
  game_id int primary key,
  home_team_id int, 
  away_team_id int,
  game_date date,
  venue varchar(50),
  result varchar(50),
  foreign key (home_team_id) references Teams(team_id),
  foreign key (away_team_id) references Teams(team_id)
);

-- insert data into Games
insert into Games (game_id, home_team_id, away_team_id, game_date, venue, result) values 
(1, 1, 2, '2024-05-20', 'Staples Center', 'Lakers Win'), 
(2, 3, 4, '2024-05-20', 'United Center', 'Bulls Win'),
(3, 2, 1, '2024-05-21', 'TD Garden', 'Celtics Win'),
(4, 4, 3, '2024-05-21', 'Chase Center', 'Warriors Win');

-- create Coaches table
create table Coaches ( 
  coach_id int primary key,
  coach_name varchar(50),
  team_id int, 
  start_date date,
  end_date date,
  foreign key (team_id) references Teams(team_id)
);

-- insert data into Coaches
insert into Coaches (coach_id, coach_name, team_id, start_date, end_date) values 
(1, 'Darvin Ham', 1, '2023-01-01', '2024-01-01'), 
(2, 'Joe Mazzulla', 2, '2023-01-01', NULL),
(3, 'Billy Donovan', 3, '2020-01-01', NULL),
(4, 'Steve Kerr', 4, '2015-01-01', NULL);

-- create Arenas table
create table Arenas (
  arena_id int primary key,
  arena_name varchar(50),
  city varchar(50),
  capacity int,
  team_id int,
  foreign key (team_id) references Teams(team_id)
);

-- insert data into Arenas
insert into Arenas (arena_id, arena_name, city, capacity, team_id) values 
(1, 'Staples Center', 'Los Angeles', 19068, 1),
(2, 'TD Garden', 'Boston', 19580, 2),
(3, 'United Center', 'Chicago', 20917, 3),
(4, 'Chase Center', 'San Francisco', 18064, 4);

-- create Referees table
create table Referees (
  referee_id int primary key,
  referee_name varchar(50),
  game_id int,
  foreign key (game_id) references Games(game_id)
);

-- insert data into Referees
insert into Referees (referee_id, referee_name, game_id) values 
(1, 'Scott Foster', 1),
(2, 'Tony Brothers', 1),
(3, 'Zach Zarba', 2),
(4, 'James Capers', 2),
(5, 'Marc Davis', 3),
(6, 'Eric Lewis', 3),
(7, 'Ed Malloy', 4),
(8, 'Bill Kennedy', 4);


