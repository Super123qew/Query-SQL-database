# Query-SQL-database, NBA theme (Justin, Kevin)

- other file contains Schema SQL, and Query SQL 
- NBA games are simulated fictionally for simplicity sake
  
## Concept Ideas

- __Teams: Contains information about NBA teams.__
    - Columns: team id, team name, city, division id, conference id
- __Divisions: Stores information about NBA divisions.__
    - Columns: division id, division name, conference id
- __Conferences: Stores information about NBA conferences.__
    - Columns: conference id, conference name
- __Players: Stores information about NBA players.__
    - Columns: player id, player name, team id, position, height, weight, birthdate
- __Statistics: Player stats for games.__
   - Columns: game id, player id, points, rebounds, assists, blocks, steals
- __Games: Records details about NBA games.__
   - Columns: game id, home team id, away team id, date, venue, result
- __Coaches: Stores information about NBA coaches.__
   - Columns: coach id, coach name, team id, start date, end date
- __Arenas: Contains information about NBA arenas.__
  - Columns: arena id, team id, arena name, city, capacity
- __Referees: Stores information about NBA referees.__
  - Columns: referee id, referee name, game id
 
- Actual tables are stored within the Schema and a seperate google doc for easier maintenance
