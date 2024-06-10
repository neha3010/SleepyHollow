// Insertions.sql 

-- insert values in Employees Table 

insert into Employees values ('John Smith', '123-56-8901', TO_DATE('1989-12-09','YYYY-MM-DD'), 'Married', 'M', 1); 

insert into Employees values ('Jane Smith', '987-54-2109', TO_DATE('1980-01-01','YYYY-MM-DD'), 'Single', 'F', 2); 

insert into Employees values ('Ally Boe', '135-79-6802', TO_DATE('1981-11-13','YYYY-MM-DD'), 'Single', 'M', 3); 

insert into Employees values ('Bailey Clak', '246-81-7903', TO_DATE('1982-10-19','YYYY-MM-DD'), 'Married', 'F', 4); 

insert into Employees values ('Cary Pol', '357-02-8140', TO_DATE('1983-09-20','YYYY-MM-DD'), 'Married', 'F', 5); 

insert into Employees values ('Drake Lan', '468-13-9245', TO_DATE('1984-08-21','YYYY-MM-DD'), 'Single', 'M', 6); 

insert into Employees values ('Evelyn Ju', '579-24-1358', TO_DATE('1985-07-22','YYYY-MM-DD'), 'Married', 'M', 7); 

insert into Employees values ('Fae Lino', '681-35-2466', TO_DATE('1986-06-23','YYYY-MM-DD'), 'Married', 'F', 8); 

insert into Employees values ('Gerald Loq', '792-46-3589', TO_DATE('1987-05-24','YYYY-MM-DD'), 'Married', 'M', 9); 

insert into Employees values ('Han Solo', '813-57-4680', TO_DATE('1988-04-25','YYYY-MM-DD'), 'Single', 'F', 1); 

insert into Employees values ('Ian Dean', '924-68-5791', TO_DATE('1990-03-26','YYYY-MM-DD'), 'Single', 'M', 2); 

insert into Employees values ('Kale Judy', '024-68-5792', TO_DATE('1988-02-27','YYYY-MM-DD'), 'Married', 'F', 3); 

insert into Employees values ('Lam Pin', '135-79-6814', TO_DATE('1999-01-28','YYYY-MM-DD'), 'Single', 'M', 4); 

insert into Employees values ('Mon Roe', '246-81-7925', TO_DATE('1990-11-29','YYYY-MM-DD'), 'Single', 'M', 5); 

insert into Employees values ('Neha Pal', '357-92-8136', TO_DATE('1983-10-30','YYYY-MM-DD'), 'Married', 'F', 6); 

insert into Employees values ('Orry Amhi', '813-57-4681', TO_DATE('1985-01-31','YYYY-MM-DD'), 'Married', 'M', 7); 

insert into Employees values ('Pushpa Jhuk', '792-46-3590', TO_DATE('1987-02-02','YYYY-MM-DD'), 'Single', 'F', 8); 

insert into Employees values ('Qas Platue', '924-68-5792', TO_DATE('1992-03-03','YYYY-MM-DD'), 'Married', 'M', 9); 

insert into Employees values ('Ryan Greg', '681-57-2469', TO_DATE('1991-01-04','YYYY-MM-DD'), 'Single', 'F', 1); 

insert into Employees values ('Sarah Sol', '678-99-6568', TO_DATE('1990-10-05','YYYY-MM-DD'), 'Single', 'M', 2); 


-- insert into Phones table 

insert into Phones values (5719979043, '123-56-8901'); 

insert into Phones values (5719979000, '123-56-8901'); 

insert into Phones values (8049979000, '987-54-2109'); 

insert into Phones values (8046109000, '987-54-2109'); 

insert into Phones values (7106009000, '135-79-6802'); 

insert into Phones values (7106001234, '135-79-6802'); 

insert into Phones values (7226221234, '246-81-7903'); 

insert into Phones values (7226221000, '246-81-7903'); 

insert into Phones values (7226221000, '357-02-8140'); 

insert into Phones values (9046221907, '357-02-8140'); 

insert into Phones values (7886221908, '468-13-9245'); 

insert into Phones values (7886211908, '579-24-1358'); 

insert into Phones values (9436001908, '792-46-3589'); 

insert into Phones values (9436331908, '681-35-2466'); 

insert into Phones values (8536441908, '924-68-5791'); 

insert into Phones values (8536551908, '024-68-5792'); 

insert into Phones values (5676661908, '135-79-6814'); 

insert into Phones values (5676221908, '357-92-8136'); 

insert into Phones values (8536201908, '813-57-4681'); 

insert into Phones values (8536221900, '792-46-3590'); 

insert into Phones values (9746201908, '924-68-5792'); 

insert into Phones values (9746291908, '681-57-2469'); 

insert into Phones values (9746891908, '678-99-6568'); 

insert into Phones values (4036321621, '813-57-4680'); 

insert into Phones values (4036321637, '246-81-7925'); 

 

-- insert into Addresses table 

INSERT INTO Addresses values (1, '123 Main St', 'Fairfax', 'VA', 22031, '123-56-8901'); 

INSERT INTO Addresses values (2, '123 Cary St', 'Fairfax', 'VA', 22031, '123-56-8901'); 

INSERT INTO Addresses values (3, '123 Main St', 'Richmond', 'VA', 23229, '678-99-6568'); 

INSERT INTO Addresses values (5, 'Bork St', 'Richmond', 'VA', 22031, '678-99-6568'); 

INSERT INTO Addresses values (4, 'Lui St', 'Annadale', 'VA', 55500, '924-68-5792'); 

INSERT INTO Addresses values (7, 'Lois St', 'Annadale', 'VA', 55500, '924-68-5792'); 

INSERT INTO Addresses values (8, 'Gary St', 'Chantilly', 'VA', 77744, '792-46-3590'); 

INSERT INTO Addresses values (9, 'Pol St', 'Chantilly', 'VA', 77744, '792-46-3590'); 

INSERT INTO Addresses values (10, 'East St', 'Roam', 'PA', 22569, '246-81-7925'); 

INSERT INTO Addresses values (11, 'West St', 'Tedrich', 'NY', 32567, '681-57-2469'); 

INSERT INTO Addresses values (12, 'North St', 'Chantilly', 'NY', 32567, '813-57-4681'); 

INSERT INTO Addresses values (13, 'West St', 'Annadale', 'PA', 12345, '357-92-8136'); 

INSERT INTO Addresses values (14, 'South St', 'Fairfax', 'PA', 32567, '135-79-6814'); 

INSERT INTO Addresses values (15, 'West St', 'Chandler', 'VA', 44444, '024-68-5792'); 

INSERT INTO Addresses values (16, 'East St', 'Smith', 'PA', 22222, '924-68-5791'); 

INSERT INTO Addresses values (17, 'North St', 'Bandra', 'NY', 78789, '813-57-4680'); 

INSERT INTO Addresses values (18, 'Glen St', 'Andheri', 'NY', 12123, '792-46-3589'); 

INSERT INTO Addresses values (19, 'Ally St', 'Dadar', 'PA', 78907, '681-35-2466'); 

INSERT INTO Addresses values (20, 'Bor St', 'Byculla', 'NY', 56281, '579-24-1358'); 

INSERT INTO Addresses values (21, 'Brook St', 'Howrah', 'PA', 32567, '468-13-9245'); 

INSERT INTO Addresses values (22, 'West St', 'Nagpur', 'NY', 32567, '357-02-8140'); 

INSERT INTO Addresses values (23, 'RR St', 'Nashik', 'PA', 90807, '246-81-7903'); 

INSERT INTO Addresses values (24, 'Gor St', 'Bali', 'PA', 67543, '135-79-6802'); 

INSERT INTO Addresses values (25, 'Gu St', 'Kali', 'NY', 32567, '987-54-2109'); 

 

 

 

-- insert into Login table 

insert into Login values ('John Smith','pwd000', '123-56-8901'); 

insert into Login values ('Jane Smith','pwd111', '987-54-2109'); 

insert into Login values ('Ally Boe','pwd112', '135-79-6802'); 

insert into Login values ('Bailey Clak','pwd113', '246-81-7903'); 

insert into Login values ('Cary Pol','pwd114', '357-02-8140'); 

insert into Login values ('Drake Lan','pwd115', '468-13-9245'); 

insert into Login values ('Evelyn Ju','pwd116', '579-24-1358'); 

insert into Login values ('Fae Lino','pwd117', '681-35-2466'); 

insert into Login values ('Gerald Loq','pwd118', '792-46-3589'); 

insert into Login values ('Han Solo','pwd119', '813-57-4680'); 

insert into Login values ('Ian Dean','pwd110', '924-68-5791'); 

insert into Login values ('Kale Judy','pwd121', '024-68-5792'); 

insert into Login values ('Lam Pin','pwd122', '135-79-6814'); 

insert into Login values ('Mon Roe','pwd23', '246-81-7925'); 

insert into Login values ('Neha Pal','pwd24', '357-92-8136'); 

insert into Login values ('Orry Amhi','pwd25', '813-57-4681'); 

insert into Login values ('Pushpa Jhuk','pwd26', '792-46-3590'); 

insert into Login values ('Qas Platue','pwd27', '924-68-5792'); 

insert into Login values ('Ryan Greg','pwd28', '681-57-2469'); 

insert into Login values ('Sarah Sol','pwd29', '678-99-6568'); 

 

-- insert into Emp_Sales table 

insert into Emp_Sales values (12345, 2022, 38000, 1000.00, 1000.00, 3000.00, 4000.00, 1000.00, 1000.00, 2000.00, 3000.00, 4000.00, 5000.00, 6000.00, 7000.00, '123-56-8901'); 

insert into Emp_Sales values (12346, 2022, 44000, 2000.00, 2000.00, 1000.00, 2000.00, 1000.00, 9000.00, 2000.00, 7000.00, 1000.00, 2000.00, 9000.00, 5000.00, '987-54-2109'); 

insert into Emp_Sales values (12347, 2022, 42000, 7000.00, 2000.00, 3000.00, 3000.00, 5000.00, 1000.00, 2000.00, 4000.00, 2000.00, 3000.00, 2000.00, 7000.00, '135-79-6802'); 

insert into Emp_Sales values (12348, 2022, 33000, 1000.00, 3000.00, 1000.00, 4000.00, 1000.00, 5000.00, 2000.00, 3000.00, 3000.00, 2000.00, 2000.00, 5000.00, '246-81-7903'); 

insert into Emp_Sales values (12349, 2022, 40000, 6000.00, 2000.00, 3000.00, 4000.00, 5000.00, 1000.00, 2000.00, 2000.00, 5000.00, 1000.00, 2000.00, 7000.00, '357-02-8140'); 

insert into Emp_Sales values (12350, 2022, 35000, 1000.00, 4000.00, 1000.00, 1000.00, 1000.00, 1000.00, 2000.00, 8000.00, 4000.00, 1000.00, 6000.00, 5000.00, '468-13-9245'); 

insert into Emp_Sales values (12351, 2022, 58000, 5000.00, 6000.00, 3000.00, 4000.00, 5000.00, 1000.00, 3000.00, 9000.00, 3000.00, 6000.00, 6000.00, 7000.00, '579-24-1358'); 

insert into Emp_Sales values (12352, 2022, 38000, 1000.00, 7000.00, 3000.00, 1000.00, 5000.00, 5000.00, 2000.00, 1000.00, 2000.00, 4000.00, 2000.00, 5000.00, '681-35-2466'); 

insert into Emp_Sales values (12353, 2022, 29000, 2000.00, 2000.00, 2000.00, 1000.00, 1000.00, 1000.00, 2000.00, 2000.00, 1000.00, 2000.00, 6000.00, 7000.00, '792-46-3589'); 

insert into Emp_Sales values (12354, 2022, 38000, 1000.00, 8000.00, 1000.00, 1000.00, 5000.00, 1000.00, 2000.00, 3000.00, 4000.00, 5000.00, 2000.00, 5000.00, '813-57-4680'); 

 

-- insert into Products Table 

insert into Products values (1000, 'Treadmill', 50.00); 

insert into Products values (2000, 'Bench', 200.00); 

insert into Products values (3000, 'Rowing Machine', 680.00); 

insert into Products values (4000, 'Elliptical', 280.00); 

insert into Products values (5000, 'Leg Press', 350.00); 

insert into Products values (6000, 'Barbell', 149.00); 

insert into Products values (7000, 'Dumbbells', 200.00); 

insert into Products values (8000, 'Sweat Bands', 220.00); 

insert into Products values (9000, 'Cycling Machine', 230.00); 

insert into Products values (1100, 'Yoga Mat', 120.00); 

 

 

-- insert into transaction tables 

insert into Transactions values (2001, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1000, 'Transaction Jan', '123-56-8901', 12345, 2022); 

insert into Transactions values (2002, TO_DATE('2022-02-01', 'YYYY-MM-DD'), 1000, 'Transaction Feb', '123-56-8901', 12345, 2022); 

insert into Transactions values (2003, TO_DATE('2022-03-13', 'YYYY-MM-DD'), 3000, 'Transaction Mar', '135-79-6802', 12347, 2022); 

 

insert into Transactions values (2004, TO_DATE('2022-04-07', 'YYYY-MM-DD'), 4000, 'Transaction Apr', '246-81-7903', 12348, 2022); 

insert into Transactions values (2005, TO_DATE('2022-05-01', 'YYYY-MM-DD'), 1000, 'Transaction May', '246-81-7903', 12348, 2022); 

insert into Transactions values (2006, TO_DATE('2022-06-01', 'YYYY-MM-DD'), 1000, 'Transaction Jun', '468-13-9245', 12350, 2022); 

 

insert into Transactions values (2007, TO_DATE('2022-07-01', 'YYYY-MM-DD'), 3000, 'Transaction Jul', '579-24-1358', 12351, 2022); 

insert into Transactions values (2008, TO_DATE('2022-08-01', 'YYYY-MM-DD'), 1000, 'Transaction Aug', '681-35-2466', 12352, 2022); 

insert into Transactions values (2009, TO_DATE('2022-09-01', 'YYYY-MM-DD'), 3000, 'Transaction Sept', '579-24-1358', 12351, 2022); 

insert into Transactions values (2000, TO_DATE('2022-10-01', 'YYYY-MM-DD'), 5000, 'Transaction Oct', '813-57-4680', 12354, 2022); 

 

-- insert into Txns_Prods table 

insert into Txns_Prods values (2001, 1000, 10); 

insert into Txns_Prods values (2001, 5000, 5); 

insert into Txns_Prods values (2002, 1000, 1); 

insert into Txns_Prods values (2002, 3000, 2); 

insert into Txns_Prods values (2005, 5000, 1); 

insert into Txns_Prods values (2006, 5000, 5); 

insert into Txns_Prods values (2007, 2000, 6); 

insert into Txns_Prods values (2007, 6000, 3); 

insert into Txns_Prods values (2009, 2000, 4); 

 

 

-- insert into Transfer table 

insert into Transfer values ('123-56-8901', '678-99-6568', TO_DATE('2022-10-01', 'YYYY-MM-DD'), 200); 

insert into Transfer values ('987-54-2109', '681-57-2469', TO_DATE('2022-11-19', 'YYYY-MM-DD'), 70); 

insert into Transfer values ('135-79-6802', '924-68-5792', TO_DATE('2022-06-20', 'YYYY-MM-DD'), 20); 

insert into Transfer values ('246-81-7903', '792-46-3590', TO_DATE('2022-07-15', 'YYYY-MM-DD'), 110); 

insert into Transfer values ('357-02-8140', '813-57-4681', TO_DATE('2022-01-12', 'YYYY-MM-DD'), 90); 

 

-- insert into inventories 

insert into Inventories values (1122334455, 'Warehouse 1', 'Treadmill'); 

insert into Inventories values (1112334455, 'Warehouse 1', 'Bench'); 

insert into Inventories values (1111334455, 'Warehouse 1', 'Barbell'); 

insert into Inventories values (1111134455, 'Warehouse 2', 'Dumbbells'); 

insert into Inventories values (1111114455, 'Warehouse 2', 'Elliptical'); 

 

 

-- insert into Quota Offers table 

insert into Quota_Offers values (2334455660, TO_DATE('2022-01-12', 'YYYY-MM-DD'), 'Offer 1'); 

insert into Quota_Offers values (2233445566, TO_DATE('2022-02-13', 'YYYY-MM-DD'), 'Offer 2'); 

insert into Quota_Offers values (2223445566, TO_DATE('2022-03-14', 'YYYY-MM-DD'), 'Offer 3'); 

insert into Quota_Offers values (2222445566, TO_DATE('2022-04-15', 'YYYY-MM-DD'), 'Offer 4'); 

insert into Quota_Offers values (2222245566, TO_DATE('2022-05-16', 'YYYY-MM-DD'), 'Offer 5'); 

insert into Quota_Offers values (2222225566, TO_DATE('2022-06-17', 'YYYY-MM-DD'), 'Offer 6'); 

insert into Quota_Offers values (2222222566, TO_DATE('2022-07-18', 'YYYY-MM-DD'), 'Offer 7'); 

 

-- insert into Contain table 

insert into Contain values (1000, 1122334455, 60, 0.15, 2334455660); 

insert into Contain values (1000, 1112334455, 10, 0.25, 2233445566); 

insert into Contain values (2000, 1111334455, 20, 0.35, 2334455660); 

insert into Contain values (2000, 1111134455, 30, 0.45, 2223445566); 

insert into Contain values (3000, 1111114455, 40, 0.55, 2222445566); 

insert into Contain values (4000, 1122334455, 50, 0.65, 2222245566); 

insert into Contain values (5000, 1112334455, 10, 0.75, 2222222566); 

 

-- insert into Emp_Month_Year table ?? 

INSERT INTO Emp_Month_Year VALUES (3000, 1000, 2022, 'Sales', 12345, 2022); 

INSERT INTO Emp_Month_Year VALUES (3001, 1000, 2022, 'Return', 12346, 2022); 

INSERT INTO Emp_Month_Year VALUES (3002, 2000, 2022, 'Growth', 12347, 2022); 

INSERT INTO Emp_Month_Year VALUES (3003, 3000, 2022, 'Sales', 12348, 2022); 

INSERT INTO Emp_Month_Year VALUES (3004, 4000, 2022, 'Return', 12349, 2022); 

INSERT INTO Emp_Month_Year VALUES (3005, 5000, 2022, 'Return', 12351, 2022); 

INSERT INTO Emp_Month_Year VALUES (3006, 6000, 2022, 'Growth', 12352, 2022); 

 

-- insert into Awards 

INSERT INTO Awards VALUES (5000, 60000, 5000, 'monthly'); 

INSERT INTO Awards VALUES (5001, 60000, 5000, 'yearly'); 

INSERT INTO Awards VALUES (5002, 60000, 5000, 'monthly'); 

INSERT INTO Awards VALUES (5003, 60000, 5000, 'yearly'); 

INSERT INTO Awards VALUES (5004, 60000, 5000, 'monthly'); 

INSERT INTO Awards VALUES (5005, 60000, 5000, 'monthly'); 

INSERT INTO Awards VALUES (5006, 60000, 5000, 'yearly'); 

INSERT INTO Awards VALUES (5007, 60000, 5000, 'monthly'); 

INSERT INTO Awards VALUES (5008, 60000, 5000, 'monthly'); 

INSERT INTO Awards VALUES (5009, 60000, 5000, 'yearly'); 

INSERT INTO Awards VALUES (5011, 60000, 5000, 'monthly'); 

 

 

-- insert into Award_Centers 

INSERT INTO Award_Centers VALUES (4000, 'West Coast Hall', 'Virginia'); 

INSERT INTO Award_Centers VALUES (4001, 'East Coast Hall', 'Virginia'); 

INSERT INTO Award_Centers VALUES (4002, 'North Coast Hall', 'Virginia'); 

INSERT INTO Award_Centers VALUES (4003, 'South Coast Hall', 'Virginia'); 

INSERT INTO Award_Centers VALUES (4004, 'Dish Coast Hall', 'Virginia'); 

 

-- insert into Granted table 

INSERT INTO GRANTED VALUES ('123-56-8901', 5000, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4000, 3000); 

INSERT INTO GRANTED VALUES ('123-56-8901', 5001, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4000, 3000); 

INSERT INTO GRANTED VALUES ('987-54-2109', 5002, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4001, 3001); 

INSERT INTO GRANTED VALUES ('987-54-2109', 5003, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4001, 3001); 

INSERT INTO GRANTED VALUES ('135-79-6802', 5004, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4002, 3002); 

INSERT INTO GRANTED VALUES ('135-79-6802', 5005, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4002, 3002); 

INSERT INTO GRANTED VALUES ('246-81-7903', 5006, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4003, 3003); 

INSERT INTO GRANTED VALUES ('468-13-9245', 5007, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4004, 3003); 

INSERT INTO GRANTED VALUES ('579-24-1358', 5008, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4002, 3004); 

INSERT INTO GRANTED VALUES ('924-68-5791', 5009, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4003, 3004); 

INSERT INTO GRANTED VALUES ('123-56-8901', 5011, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1, 4004, 3005); 

 

-- You may need to add sample data to some other tables not mentioned above to satisfy the foreign key integrity constraints. Feel free to include sample data only if needed. 

-- insert into customers 

insert into customers values (1, 'John Smith' ,5719979043);  

 

insert into customers values (2, 'John Smith', 5719979000);  

 

insert into customers values (3, 'Jane Smith', 8049979000);  

 

insert into customers values (4, 'Jane Smith', 8046109000);  

 

insert into customers values (5, 'Ally Boe', 7106009000);  

 

insert into customers values (6, 'Ally Boe', 7106001234);  

 

insert into customers values (7, 'Bailey Clak', 7226221234);  

 

insert into customers values (8, 'Bailey Clak', 7226221000);  

  

insert into customers values (9, 'Cary Pol', 7226221000);  

 

insert into customers values (10, 'Cary Pol', 9046221907);  

 

insert into customers values (11, 'Drake Lan', 7886221908);  

 

insert into customers values (12, 'Evelyn Ju', 7886211908);  

 

insert into customers values (13, 'Gerald Loq', 9436001908);  

 

insert into customers values (14, 'Fae Lino',  9436331908);  

 

insert into customers values (15, 'Ian Dean',  8536441908);  

 

insert into customers values (16, 'Kale Judy', 8536551908);  

 

insert into customers values (17, 'Lam Pin', 5676661908);  

 

insert into customers values (18, 'Neha Pal', 5676221908);  

 

insert into customers values (19, 'Orry Amhi', 8536201908);  

 

insert into customers values (20, 'Pushpa Jhuk', 8536221900);  

 

insert into customers values (21, 'Qas Platue', 9746201908);  

 

insert into customers values (22, 'Ryan Greg', 9746291908);  

 

insert into customers values (23, 'Sarah Sol', 9746891908);  

 

insert into customers values (24, 'Han Solo', 4036321621);  

 

insert into customers values (25, 'Mon Roe', 4036321637); 

 

-- insert into calls 

INSERT INTO Calls VALUES (1, TO_DATE('2022-03-15 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-03-15', 'YYYY-MM-DD'), 15, 'Successful', 1, '123-56-8901'); 

INSERT INTO Calls VALUES (2, TO_DATE('2022-03-16 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-03-16', 'YYYY-MM-DD'), 10, 'Failed', 3, '987-54-2109'); 

INSERT INTO Calls VALUES (3, TO_DATE('2022-03-17 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-03-17', 'YYYY-MM-DD'), 20, 'Successful', 6, '135-79-6802'); 

-- insert into TXNS_PROD_INV 

INSERT INTO TXNS_PROD_INV VALUES (1000, 1122334455, 2001); 

INSERT INTO TXNS_PROD_INV VALUES (1000, 1122334455, 2002); 

INSERT INTO TXNS_PROD_INV VALUES (2000, 1122334455, 2007); 

INSERT INTO TXNS_PROD_INV VALUES (2000, 1122334455, 2009); 

INSERT INTO TXNS_PROD_INV VALUES (6000, 1122334455, 2007); 

 

 

 

 

 

 

 

 

 

 

 

 
