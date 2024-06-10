
 

Queries.sql 

-- 1. Select the offer id, product id, and inventory id for quota offers having more than 30% percent increase to transaction sales.  

select o_id, prod_id, inv_id from Contain where increase_percent > 0.3; 

 

--  2. Display all the transaction ids, transaction dates, and amounts for a particular employee name.  

select trans_id, t_date, amount from Transactions t, Employees e where t.ssn=e.ssn and e.name='John Smith'; 

 

-- 3. Find the transaction ids and the number of products these transactions contain ?? 

select trans_id, quantity from Txns_Prods; 

 

-- 4. Find the transaction id and the employee ssn having the maximum sale amount.  

select trans_id, ssn from Transactions where amount = (select max(amount) FROM Transactions); 

 

-- 5. Display the transaction id, transaction date, and amount for all the transactions resulting in a particular achievement id.  

SELECT t.trans_id, t.t_date, t.amount  

FROM Transactions t  

JOIN Emp_Sales s ON t.account_id = s.account_id AND t.Year = s.Year  

JOIN Emp_Month_Year m ON s.account_id = m.account_id AND s.Year = m.Year  

WHERE m.achievement_id = 3000; 

 

-- 6. Find the number of achievements available in the database 

select count(achievement_id) from Emp_Month_Year; 

 

-- 7. Find the employee with the maximum number of successful calls (call status is successful) 

select  

    Calls.SSN,   

    Employees.Name,  

    count (*) AS Successful_Calls  

from  

    Calls  

JOIN  

    Employees ON Calls.SSN = Employees.SSN  

WHERE  

    Calls.C_status = 'Successful' 

GROUP BY   

    Calls.SSN, Employees.Name  

ORDER BY   

    Successful_Calls DESC  

FETCH FIRST 1 ROW ONLY; 

 

-- 8. Find the award grant history of a particular employee name. You should display the award ID, award description, employee name,award center id, and the achievement id 

select Awards.Award_ID, Employees.Name AS Employee_Name, Award_Centers.Center_ID AS Award_Center_ID, Emp_Month_Year.Achievement_ID  

FROM Awards  

JOIN Granted ON Granted.Award_ID = Awards.Award_ID  

JOIN  

    Employees ON Granted.SSN = Employees.SSN  

JOIN  

    Award_Centers ON Granted.Center_ID = Award_Centers.Center_ID  

JOIN  

    Emp_Month_Year ON Granted.Achievement_ID = Emp_Month_Year.Achievement_ID  

WHERE  

    Employees.Name = 'Jane Smith'; 

 

-- 9. Display the ssn of the employees having more than 1 phone number.  

select e.ssn  

from Employees e, Phones p 

where e.ssn = p.ssn 

group by e.ssn  

having COUNT(p.phone_num) > 1; 

 

-- 10. Display the sale amount of the employees living in Fairfax 

select distinct(s.total_sales) from Emp_Sales s, Employees e, Addresses a 

where s.ssn=e.ssn and e.ssn = a.ssn 

and a.city='Fairfax'; 

 

-- 11. Display the employee name with the maximum number of achievements. 

 

SELECT e.name, COUNT(t.trans_id) AS Number_of_Transactions 

FROM Employees e 

JOIN Transactions t ON e.ssn = t.ssn 

GROUP BY e.name 

ORDER BY Number_of_Transactions DESC 

FETCH FIRST 1 ROW ONLY; 

 

--12.Find the employee ssn with the maximum number of achievements. 

 

SELECT  

    Emp_Sales.SSN AS Employee_SSN, 

    COUNT(Emp_Month_Year.Achievement_ID) AS Total_Achievements 

FROM  Emp_Sales JOIN Emp_Month_Year ON Emp_Month_Year.Account_ID = Emp_Sales.Account_ID 

GROUP BY  

    Emp_Sales.SSN 

ORDER BY  

    Total_Achievements DESC 

FETCH FIRST 1 ROW ONLY; 

 

 

--13) Find the number of awards granted to a particular employee ssn. 

SELECT  

    Emp_Sales.SSN AS Employee_SSN, 

    COUNT(Granted.Award_ID) AS Total_Awards_Granted 

FROM  

    Granted 

JOIN  

    Emp_Sales ON Granted.SSN = Emp_Sales.SSN 

WHERE  

    Emp_Sales.SSN = '135-79-6802' 

GROUP BY  

    Emp_Sales.SSN; 

 

--14) Find the number of employees who got awards from a particular center id. 

 

SELECT COUNT(DISTINCT g.ssn) AS Number_of_Employees 

FROM GRANTED g 

WHERE g.center_id = '4000'; 

 

--15) Find the total number of awards in the database. 

 

SELECT COUNT(*) AS Total_Number_of_Awards 

FROM Awards; 

 

--16) Display a list of employee names living in Fairfax and whose number of dependents is 5.  

SELECT e.name 

FROM Employees e 

JOIN Addresses a ON e.ssn = a.ssn 

WHERE a.city = 'Fairfax' AND e.dependent# = 5; 

 

--17) Find the list of products not included in any transaction. 

 

SELECT p.prod_id, p.prod_name 

FROM Products p 

LEFT JOIN Txns_Prods tp ON p.prod_id = tp.prod_id 

WHERE tp.trans_id IS NULL; 

 

--18) Find the product sold the most by employees. No ties are assumed. 

 

SELECT p.prod_id, p.prod_name, SUM(tp.quantity) AS total_quantity_sold 

FROM Products p 

JOIN Txns_Prods tp ON p.prod_id = tp.prod_id 

GROUP BY p.prod_id, p.prod_name 

ORDER BY total_quantity_sold DESC 

FETCH FIRST 1 ROW ONLY; 

 

 