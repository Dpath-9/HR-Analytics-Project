
---Database Setup & Table Check

CREATE DATABASE HR_Analytics;
GO

USE HR_Analytics;

SELECT * FROM INFORMATION_SCHEMA.TABLES;

SELECT TOP 10 * FROM HRDataset_Cleaned;

-----------------------------------------------------------------------------------------------------------

---Basic Check on Attrition

SELECT COLUMN_NAME 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'HRDataset_Cleaned';

SELECT DISTINCT Attrition FROM HRDataset_Cleaned;

-----------------------------------------------------------------------------------------------------------

---Department-wise Attrition

SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CAST(Attrition AS INT)) AS Attrition_Count,
    CONCAT(
        ROUND(
            100.0 * CAST(SUM(CAST(Attrition AS INT)) AS FLOAT) / COUNT(*), 
        2),
        '%'
    ) AS Attrition_Rate
FROM HRDataset_Cleaned
GROUP BY Department;

-----------------------------------------------------------------------------------------------

---Average Tenure by Department

SELECT 
    Department,
    ROUND(AVG(Tenure), 2) AS Avg_Tenure
FROM 
    HRDataset_Cleaned
GROUP BY 
    Department;

-----------------------------------------------------------------------------------------------

---Age Group Distribution

SELECT 
  CASE 
    WHEN AGE < 30 THEN '<30'
    WHEN AGE BETWEEN 30 AND 39 THEN '30-39'
    WHEN AGE BETWEEN 40 AND 49 THEN '40-49'
    ELSE '50+'
  END AS Age_Group,
  COUNT(*) AS Count
FROM HRDataset_Cleaned
GROUP BY 
  CASE 
    WHEN AGE < 30 THEN '<30'
    WHEN AGE BETWEEN 30 AND 39 THEN '30-39'
    WHEN AGE BETWEEN 40 AND 49 THEN '40-49'
    ELSE '50+'
  END;

  -----------------------------------------------------------------------------------------------
 
 ---Gender Diversity by Department

  SELECT Department, 
       Sex, 
       COUNT(*) AS Count
FROM HRDataset_Cleaned
GROUP BY Department, Sex;

  -----------------------------------------------------------------------------------------------

 ---Attrition Rate by Recruitment Source

 SELECT 
    RecruitmentSource,
    COUNT(*) AS Total_Hires,
    SUM(CAST(Attrition AS INT)) AS Attrition_Count,
    CONCAT(
        ROUND(100.0 * CAST(SUM(CAST(Attrition AS INT)) AS FLOAT) / COUNT(*), 2),
        '%'
    ) AS Attrition_Rate
FROM HRDataset_Cleaned
GROUP BY RecruitmentSource
ORDER BY Attrition_Rate DESC;
