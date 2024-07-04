
-- TL Wise Sales ( We used View Table)

-- Time taken in my System  00:01:22

Select TL_Name, Sum( Quantity) as QTY , Sum(Sales_Amount) as Sales
from ABCall
Group by TL_Name;

-- TL wise Sales (we used original Tables
-- Time Taken in my System 00:00:01

Select  TL_Name, SUM( Quantity ) as QTY, Sum( Sales_Amount) as Sales 
from  Sales S Join Customer C on S.Customer_ID = C.Customer_ID join Head_Count H on C.Agent_ID = h.Employees_ID
group by TL_Name


-- Over All taking data from orginal table take less time then View Table