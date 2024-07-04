
-- Get Employee salary whos salary is greater then Avg Salary of own deparment, 

-- use common table expression (CTE)

with AvgSalary as (
Select  Avg(Salary) as Avg_Salary, Job_Department 
From Head_Count group by Job_Department)

Select h.Employees_ID, H.Job_Department, H.Salary , Ag.Avg_Salary
from Head_Count H
Join AvgSalary Ag on h.Job_Department = Ag.Job_Department
Where Salary > Avg_Salary