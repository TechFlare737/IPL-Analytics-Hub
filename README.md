# IPL Data Analysis Project

_Created with [AIPRM Prompt "Readme Generator | Markdown Format | GitHub."](https://www.aiprm.com/prompts/softwareengineering/text-editor/1794387468406222848/)_

## 📌 Project Overview
This project focuses on **IPL data analysis** using **SQL**. It includes complex queries to extract insights about player and team performances across multiple seasons.

## 🛠️ Technologies Used
- **SQL (MySQL)**
- **GitHub** (Version Control)

## 📊 Key Features
- **Player & Team Analysis**  
  - Top batsmen & bowlers based on runs, wickets, and economy rates.
  - Ranking of players using **subqueries and GROUP BY**.
  - Identifying all-rounders through **JOIN operations**.

- **Performance Insights**  
  - Teams with the highest runs and wickets.
  - Players with the best batting strike rates and bowling economy.

- **Advanced SQL Operations**  
  - Usage of **JOINs** for multi-table analysis.
  - **Subqueries** to calculate rankings and aggregate statistics.
  - **GROUP BY** for summarizing key metrics.

## 📂 Project Structure
```
📂 IPL-Data-Analysis
│-- 📜 IPLALL.sql  # Contains all SQL queries
│-- 📜 README.md   # Project Documentation
```

## 🔍 Sample Queries
### 🎯 Find the Top Run Scorer in 2018
```sql
SELECT Player, Runs 
FROM 2018_Batsmen 
ORDER BY Runs DESC 
LIMIT 1;
```

### 🎯 Find the Team with Most Runs in 2019
```sql
SELECT Team, SUM(Runs) AS TotalRuns 
FROM 2019_Batsmen 
GROUP BY Team 
ORDER BY TotalRuns DESC 
LIMIT 1;
```

### 🎯 Identify All-Rounders in 2018
```sql
SELECT a.Player, a.Team 
FROM 2018_Bowlers a 
INNER JOIN 2018_Batsmen b 
ON a.Player = b.Player;
```

## 🚀 How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/TechFlare737/IPL-Analytics-Hub.git
   ```
2. Import the **IPL dataset** into MySQL.
3. Run the queries from `IPLALL.sql` to analyze IPL statistics.

## 🤝 Contribution
Contributions are welcome! Feel free to submit a pull request if you have improvements.

## 📜 License
This project is **open-source** under the **MIT License**.

---
🔥 **Explore IPL insights with SQL!** 🔥
