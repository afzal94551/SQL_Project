
--- Using Self Join to get Employees Salary greate then own Supervisor Salary

SELECT 
    hc1.Employees_ID, 
    hc1.Name, 
    hc1.TL_Name, 
    hc1.TL_Employee_ID, 
    hc1.Salary
FROM 
    Head_Count AS hc1
JOIN 
    Head_Count AS hc2
ON 
    hc1.TL_Employee_ID = hc2.Employees_ID
WHERE 
    hc1.Salary > hc2.Salary;
