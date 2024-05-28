create table Teams (
  team_id int,
  team_name varchar,
  city varchar,
  division_id int,
  conference_id int
  );
  -- Teams
INSERT INTO Teams VALUES 
(1, 'Lakers', 'Los Angeles', 1, 1), 
(2, 'Celtics', 'Boston', 2, 2),
(3, 'Bulls', 'Chicago', 3, 2),
(4, 'Warriors', 'Golden State', 4, 1);
  
 
create table Divisions (
   division_id int,
   division_name varchar,
   conference_id int
   );
   -- Divisions
INSERT INTO Divisions VALUES 
(1, 'Pacific', 1), 
(2, 'Atlantic', 2),
(3, 'Central', 2),
(4, 'Southeast', 2),
(5, 'Northwest', 1),
(6, 'Southwest', 1);

   
   
 create table Conferences (
    conference_id int, 
    conference_name varchar
    );
     -- Conferences
INSERT INTO Conferences VALUES 
(1, 'Western'), 
(2, 'Eastern');

    
     
 create table Players (
    player_id int,
    player_name varchar,
    team_id int,
    positions varchar,
    height int,
    weight int, 
    birthdate date
    );
    -- Players
INSERT INTO Players VALUES 
(1, 'LeBron James', 1, 'SF', 206, 250, '1984-12-30'), 
(2, 'Anthony Davis', 1, 'PF', 208, 253, '1993-03-11'), 
(3, 'Jayson Tatum', 2, 'SF', 203, 210, '1998-03-03'),
(4, 'Jaylen Brown', 2, 'SG', 198, 223, '1996-10-24'),
(5, 'Nikola Vucevic', 3, 'C', 210, 260, '1990-10-24'),
(6, 'DeMar DeRozan', 3, 'SG', 198, 220, '1989-08-07'),
(7, 'Stephan Curry', 4, 'PG', 187, 185, '1988-03-14'),
(8, 'Klay Thompson', 4, 'SG', 198, 215, '1990-02-08');

    
    
  create table Statistics (
    game_id int, 
    player_id int,
    points int,
    rebounds int,
    assists int,
    blocks int,
    steals int
    );
    -- Statistics
INSERT INTO Statistics VALUES 
(1, 1, 28, 12, 8, 1, 2), 
(1, 2, 32, 10, 5, 3, 1), 
(2, 4, 30, 7, 6, 1, 2),
(2, 5, 25, 9, 4, 2, 1), 
(3, 7, 35, 6, 7, 1, 3), 
(3, 8, 22, 14, 3, 2, 1),
(4, 11, 18, 13, 4, 2, 1), 
(4, 12, 20, 5, 6, 0, 2);


  
    
  create table Games (
     game_id int,
     home_team_id int, 
     away_team_id int,
     game_date date,
     venue varchar,
     result varchar
      );
      -- Games
INSERT INTO Games VALUES 
(1, 1, 2, '2024-05-20', 'Staples Center', 'Lakers Win'), 
(2, 3, 4, '2024-05-20', 'United Center', 'Bulls Win'),
(3, 2, 1, '2024-05-21', 'TD Garden', 'Celtics Win'),
(4, 4, 3, '2024-05-21', 'Chase Center', 'Warriors Win');


  
  
  create table Coaches ( 
    coach_id int,
    coach_name varchar,
    team_id int, 
    start_date date,
    end_date date
    );
    -- Coaches
INSERT INTO Coaches VALUES 
(1, 'Darvin Ham', 1, '2023', 2024), 
(2, 'Joe Mazzulla', 2, '2023', NULL),
(3, 'Billy Donovan', 3, '2020', NULL),
(4, 'Steve Kerr', 4, '2015', NULL);




  create table Arenas (
    arena_id int,
    arena_name varchar,
    city varchar,
    capacity int,
    Team_id int
    );
    -- Arenas
INSERT INTO Arenas VALUES 
(1, 'Staples Center', 'Los Angeles', 19068, 1),
(2, 'TD Garden', 'Boston', 19580, 2),
(3, 'United Center', 'Chicago', 20917, 3),
(4, 'Chase Center', 'San Francisco', 18064, 4);



  create table Referees (
    referee_id int,
    referee_name varchar,
    game_id int
    );
    -- Referees
INSERT INTO Referees VALUES 
(1, 'Scott Foster', 1),
(2, 'Tony Brothers', 1),
(3, 'Zach Zarba', 2),
(4, 'James Capers', 2),
(5, 'Marc Davis', 3),
(6, 'Eric Lewis', 3),
(7, 'Ed Malloy', 4),
(8, 'Bill Kennedy', 4);




