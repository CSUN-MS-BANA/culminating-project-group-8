USE project;
SELECT * FROM Cleaned_Global_Indicators_New LIMIT 10;
SELECT Country_ID, 
       (Year_2022 - Year_2021) / Year_2021 * 100 AS Growth_2022, 
       (Year_2023 - Year_2022) / Year_2022 * 100 AS Growth_2023
FROM Cleaned_Global_Indicators_New
WHERE Year_2021 IS NOT NULL AND Year_2022 IS NOT NULL AND Year_2023 IS NOT NULL;
SELECT COUNT(*) AS Total_Records FROM Cleaned_Global_Indicators_New;
SELECT DISTINCT Country_ID FROM Cleaned_Global_Indicators_New;
SELECT 
    MIN(Year_2021) AS Min_2021, 
    MAX(Year_2021) AS Max_2021, 
    AVG(Year_2021) AS Avg_2021, 
    STDDEV(Year_2021) AS Std_Dev_2021
FROM Cleaned_Global_Indicators_New;
SELECT Country_ID, Year_2021 
FROM Cleaned_Global_Indicators_New 
ORDER BY Year_2021 DESC 
LIMIT 10;

SELECT Country_ID, 
       (Year_2022 - Year_2021) / Year_2021 * 100 AS Growth_2022, 
       (Year_2023 - Year_2022) / Year_2022 * 100 AS Growth_2023
FROM Cleaned_Global_Indicators_New
WHERE Year_2021 IS NOT NULL AND Year_2022 IS NOT NULL AND Year_2023 IS NOT NULL
ORDER BY Growth_2022 DESC
LIMIT 10;
SELECT Country_ID, Year_2021_Social 
FROM Cleaned_Global_Indicators_New 
ORDER BY Year_2021_Social DESC 
LIMIT 10;
SELECT Country_ID, Year_2021_Env 
FROM Cleaned_Global_Indicators_New 
ORDER BY Year_2021_Env DESC 
LIMIT 10;
SELECT Country_ID, (Year_2023 - Year_2021) AS Inflation_Change 
FROM Cleaned_Global_Indicators_New
ORDER BY Inflation_Change DESC
LIMIT 10;