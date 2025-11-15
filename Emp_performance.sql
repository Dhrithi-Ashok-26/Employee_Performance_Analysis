USE employee_performance_project;

-- Verify the row count. This must return 100,000 now.
SELECT 
    COUNT(*) 
FROM 
    full_employee_data;
    
SELECT
    Department,
    COUNT(Employee_ID) AS Total_Employees,
    
    -- Performance Metrics
    AVG(Performance_Score) AS Avg_Performance_Score,
    STDDEV(Performance_Score) AS Performance_Inconsistency, 
    
    -- Productivity & Efficiency Metrics
    AVG(Projects_Handled) AS Avg_Projects_Handled,
    AVG(Monthly_Salary / NULLIF(Projects_Handled, 0)) AS Avg_Salary_Per_Project, 
    
    -- Engagement & Development Metrics
    AVG(Employee_Satisfaction_Score) AS Avg_Satisfaction,
    SUM(Promotions) AS Total_Promotions,
    AVG(Training_Hours) AS Avg_Training_Hours,
    
    -- ATTRITION & WORKLOAD METRICS (CORRECTED)
    (SUM(CASE WHEN Resigned = 'True' THEN 1 ELSE 0 END) / COUNT(Employee_ID)) * 100 AS Attrition_Rate_Pct, 
    AVG(Overtime_Hours) AS Avg_Overtime_Hours

FROM
    full_employee_data
GROUP BY
    Department
ORDER BY
    Avg_Performance_Score DESC;


SELECT
    Employee_ID,
    Department,
    Performance_Score,
    -- Calculate the average performance score for the employee's entire department
    AVG(Performance_Score) OVER (PARTITION BY Department) AS Dept_Avg_Score,
    -- Calculate the difference (delta)
    Performance_Score - AVG(Performance_Score) OVER (PARTITION BY Department) AS Performance_Delta
FROM
    full_employee_data;