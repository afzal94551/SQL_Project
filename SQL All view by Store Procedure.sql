
Create Procedure  ABC_All
As 
	Begin 
		WITH UniqueOrders AS (
    SELECT 
        S.Order_ID, 
        S.Order_Date, 
        S.Ship_Date, 
        SM.Ship_Mode, 
        P.Prices, 
        S.Quantity, 
        S.Price AS Sales_Price, 
        S.Total_Price AS Sales_Total_Price, 
        S.Discount, 
        S.Sales_Amount,
        C.Customer_ID, 
        C.Customer_Name, 
        C.Address, 
        Ci.City, 
        Co.Country,
        CS.Segment, 
        H.Employees_ID, 
        H.Name, 
        H.TL_Name, 
        H.Manager_Name,
        ROW_NUMBER() OVER (PARTITION BY S.Order_ID ORDER BY P.Prices) AS rn
    FROM 
        Sales S
    LEFT JOIN 
        Purchase P ON S.Product_ID = P.Product_ID
    LEFT JOIN 
        Customer C ON S.Customer_ID = C.Customer_ID 
    LEFT JOIN 
        Head_Count H ON H.Employees_ID = C.Agent_ID
    LEFT JOIN 
        City Ci ON Ci.ID = C.City_ID
    LEFT JOIN 
        Country Co ON Co.Sr_No = C.Country_ID
    LEFT JOIN 
        Customer_Segment CS ON CS.ID = C.Segment_ID
    LEFT JOIN 
        Sales_Rating SR ON S.Order_ID = SR.Order_ID
    LEFT JOIN 
        Ship_Mode SM ON SM.ID = S.Ship_Mode_ID
    LEFT JOIN 
        Product Pr ON S.Product_ID = Pr.Product_ID
)
SELECT 
    Order_ID, 
    Order_Date, 
    Ship_Date, 
    Ship_Mode, 
    Prices, 
    Quantity, 
    Sales_Price, 
    Sales_Total_Price, 
    Discount, 
    Sales_Amount,
    Customer_ID, 
    Customer_Name, 
    Address, 
    City, 
    Country,
    Segment, 
    Employees_ID, 
    Name, 
    TL_Name, 
    Manager_Name
FROM 
    UniqueOrders
WHERE 
    rn = 1;
End; 



Exec ABC_All  -- for run Store Procedure 