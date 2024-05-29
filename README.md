# SQL-database, NBA theme (Justin, Kevin)

- other file contains Schema SQL, and Query SQL 
- NBA games are simulated fictionally for simplicity sake
  
## Concept Table Ideas

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


## Query SQL operation examples

- __Filtering of Data__
     - Find who scored over X points in a game
     - Useful for finding top performing players who might be potential candidate for the all-star game
      
- __Sorting of Data__
     - Find what conference each team belongs to
     - Useful for sorting each team in their respective conference west/east finding who plays against who
   
- __Aggregation of Data__
     - Find the average points scored by a team in match
     - Useful for finding what team(s) are the best performers for rankings
         - __Grouping Data__
            -  Find average height and weight of players by position
            -  Useful for finding the typical physical characterisitcs in a given role
          
- __Joining Record From Different Tables__
     - Find players names along with their team, city, stadium, and who coaches them
     - Useful for finding team composition and who leads them
   
  
