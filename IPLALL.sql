-- Query: Bowler with most wickets in 2018
USE ipl ;
SELECT Player, Wkts 
FROM 2018_bowlers 
ORDER BY Wkts DESC 
LIMIT 1;

-- Query: Batsman with most runs in 2018 while maintaining SR >= 130
SELECT Player, Runs, SR
FROM 2018_Batsmen_new 
WHERE SR >= 130 
ORDER BY Runs DESC 
LIMIT 1;

-- Query: Bowlers with most wickets in 2018 while Econ < 7
SELECT Player, Wkts, Econ 
FROM 2018_Bowlers 
WHERE Econ < 7 
ORDER BY Wkts DESC 
LIMIT 1;

-- Query: Batsman with most runs across 2018 and 2019
SELECT Player, SUM(Runs) AS TotalRuns 
FROM (
    SELECT Player, Runs FROM 2018_Batsmen
    UNION ALL
    SELECT Player, Runs FROM 2019_Batsmen
) AS Combined 
GROUP BY Player 
ORDER BY TotalRuns DESC 
LIMIT 1;

-- Query: Batsman with most boundaries in 2018 (4s + 6s)
SELECT Player, (Fours + Sixes) AS TotalBoundaries 
FROM 2018_Batsmen 
ORDER BY TotalBoundaries DESC 
LIMIT 1;

-- Query: Bowlers with 4-wicket hauls in 2019
SELECT Player, Team, 4w 
FROM 2019_Bowlers_new 
WHERE 4w > 0;

-- Query: 5 bowlers who bowled the least overs in 2018
SELECT Player, Overs 
FROM 2018_Bowlers 
ORDER BY Overs ASC 
LIMIT 5;

-- Query: Team with most runs in 2019
SELECT Team, SUM(Runs) AS TotalRuns 
FROM 2019_Batsmen 
GROUP BY Team 
ORDER BY TotalRuns DESC 
LIMIT 1;

-- Query: Batsman with most half-centuries across both years
SELECT Player, SUM(`50s`) AS TotalHalfCenturies 
FROM (
    SELECT Player, `50s` FROM 2018_Batsmen
    UNION ALL
    SELECT Player, `50s` FROM 2019_Batsmen
) AS Combined 
GROUP BY Player 
ORDER BY TotalHalfCenturies DESC 
LIMIT 1;

-- Query: Distinct teams in 2018
SELECT DISTINCT Team 
FROM 2018_Batsmen;

-- Query: Total runs scored in 2018
SELECT SUM(Runs) AS TotalRuns 
FROM 2018_Batsmen;

-- Query: Chennai batsmen and matches played in 2018
SELECT Player, Mat 
FROM 2018_Batsmen 
WHERE Team = "Chennai Super Kings";

-- Query: Bowlers who gave least runs in 2018
SELECT Player, Runs 
FROM 2018_Bowlers 
ORDER BY Runs ASC;

-- Query: Top 2 bowlers who conceded the least runs in 2018
SELECT Player, Runs 
FROM 2018_Bowlers 
ORDER BY Runs ASC 
LIMIT 2;

-- Query: Top 2 bowlers with most wickets in 2018
SELECT Player, Wkts 
FROM 2018_Bowlers 
ORDER BY Wkts DESC 
LIMIT 2;

-- Query: All-rounders in 2018
SELECT a.Player, a.Team 
FROM 2018_Bowlers a 
INNER JOIN 2018_Batsmen b 
ON a.Player = b.Player;

-- Query: Batsmen who played in both 2018 and 2019
SELECT a.Player 
FROM 2018_Batsmen a 
INNER JOIN 2019_Batsmen b 
ON a.Player = b.Player;

-- Query: Number of batsmen in each team in 2018
SELECT Team, COUNT(Player) AS TotalCount 
FROM 2018_Batsmen 
GROUP BY Team;

-- Query: Sorted count of batsmen per team in 2018
SELECT Team, COUNT(Player) AS TotalCount 
FROM 2018_Batsmen 
GROUP BY Team 
ORDER BY TotalCount DESC;

-- Query: Teams with at least one 4-wicket haul bowler in 2018
SELECT Team, COUNT(Player) AS TotalCount 
FROM 2018_Bowlers 
WHERE _4w > 0 
GROUP BY Team;

-- Query: Top 2 teams with most bowlers in 2018
SELECT Team, COUNT(Player) AS TotalCount 
FROM 2018_Bowlers 
GROUP BY Team 
ORDER BY TotalCount DESC 
LIMIT 2;

-- Query: Bowler with most wickets in 2018
SELECT Player, Wkts 
FROM 2018_Bowlers 
ORDER BY Wkts DESC 
LIMIT 1;
