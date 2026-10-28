CREATE DATABASE ai_job_market_analytics;
use ai_job_market_analytics;

CREATE TABLE jobs (
    Job_ID VARCHAR(20),
    Job_Title VARCHAR(100),
    Company VARCHAR(100),
    Industry VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Experience_Required VARCHAR(20),
    Salary_Min_LPA INT,
    Salary_Max_LPA INT,
    Employment_Type VARCHAR(20),
    Skills TEXT,
    Education VARCHAR(50),
    Posted_Date DATE,
    Remote VARCHAR(10),
    Job_Level VARCHAR(20),
    Job_Status VARCHAR(20),
    Openings INT,
    Recruiter_Type VARCHAR(50),
    Company_Size VARCHAR(20),
    Job_Source VARCHAR(50)
);
show tables;
select count(*) from jobs; 
select * from jobs;
select count(*) from jobs;
drop table jobs;
select count(*) from jojobs;
select * from jojobs;

SELECT COUNT(*) AS Total_Jobs from jojobs;

SELECT DISTINCT Job_Title FROM jojobs;

SELECT Company,
       COUNT(*) AS Total_Hirings FROM jojobs GROUP BY Company ORDER BY Total_Hirings DESC;
       
SELECT City,
       COUNT(*) AS Total_Jobs
FROM jojobs

SELECT Remote, COUNT(*) AS Total FROM jojobs GROUP BY Remote;

SELECT Experience_Required,
       COUNT(*) AS Total_Jobs
FROM jojobs
GROUP BY Experience_Required
ORDER BY Total_Jobs DESC;

SELECT Industry,
       COUNT(*) AS Total_Jobs
FROM jojobs
GROUP BY Industry
ORDER BY Total_Jobs DESC;

SELECT Company,
       COUNT(*) AS Fresher_Jobs
FROM jojobs
WHERE Job_Level = 'Fresher'
GROUP BY Company
ORDER BY Fresher_Jobs DESC;

SELECT Job_Title,
       Company,
       City,
       Salary_Max_LPA
FROM jojobs
ORDER BY Salary_Max_LPA DESC
LIMIT 10;


