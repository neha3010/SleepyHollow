CREATE TABLE Employees( 
    ssn NUMBER(9,0), 
    name NVARCHAR2(40), 
    dob DATE, 
    sex NVARCHAR2(20), 
    marital_status NVARCHAR2(20), 
    dependent_no NUMBER(4,0),
    PRIMARY KEY(ssn)
);

CREATE TABLE Employee_Address ( 
    ssn NUMBER(9,0), 
    bldg_no NVARCHAR2(5), 
    street NVARCHAR2(50), 
    city NVARCHAR2(50), 
    state NVARCHAR2(50), 
    zipcode NUMBER(6,0), 
    PRIMARY KEY(ssn,bldg_no, street, city, state, zipcode), 
    FOREIGN KEY(ssn) REFERENCES Employees(ssn) 
);

CREATE TABLE Employee_Phone( 
    ssn NUMBER(9,0), 
    phone Number(10,0), 
    PRIMARY KEY(ssn,phone), 
    FOREIGN KEY(ssn) REFERENCES Employees(ssn) 
);

CREATE TABLE Login ( 
    ssn NUMBER(9,0), 
    username NVARCHAR2(50), 
    password NVARCHAR2(50), 
    PRIMARY KEY(ssn,username), 
    FOREIGN KEY (ssn) REFERENCES Employees(ssn) 
);

CREATE TABLE E2E_Transfer( 
    sender_ssn NUMBER(9,0), 
    receiver_ssn NUMBER(9,0), 
    transfer_date DATE, 
    amount NUMBER(10,0), 
    PRIMARY KEY(sender_ssn,receiver_ssn), 
    FOREIGN KEY(sender_ssn) REFERENCES Employees(ssn), 
    FOREIGN KEY(receiver_ssn) REFERENCES Employees(ssn) 
); 

CREATE TABLE Inventories ( 
    inv_id NVARCHAR2(5),
    inv_name NVARCHAR2(50), 
    inv_location NVARCHAR2(100), 
    PRIMARY KEY(inv_id) 
); 

CREATE TABLE Products (   
    prod_id NVARCHAR2(5),  
    prod_name VARCHAR(50),   
    p_price DECIMAL(10,2),  
    PRIMARY KEY (prod_id) 
);

CREATE TABLE Quota_Offers ( 
	o_id NVARCHAR2(5), 
	o_date DATE, 
	o_description NVARCHAR2 (100), 
	PRIMARY KEY (o_id) 
);

CREATE TABLE Customers (
    cust_id  NUMBER(5,0),
    cust_name NVARCHAR2(40),
    phone_number NUMBER(10,0),
    PRIMARY KEY(cust_id)
);

CREATE TABLE Calls ( 
    ssn NUMBER(9,0) NOT NULL,  
    c_id NUMBER(5,0), 
    c_time TIMESTAMP, 
    c_date DATE, 
    c_duration NUMBER(3,0), 
    c_status NVARCHAR2(20), 
    cust_id NUMBER(5,0) NOT NULL, 
    PRIMARY KEY(c_id), 
    FOREIGN KEY (cust_id) REFERENCES Customers(cust_id) on DELETE CASCADE, 
    FOREIGN KEY(ssn) REFERENCES Employees(ssn) 
); 

CREATE TABLE Awards_Centers( 
    center_id Number(5,0), 
    center_name NVARCHAR2(40), 
    center_location NVARCHAR2(40), 
    PRIMARY KEY (center_id) 
);
 
CREATE TABLE Awards ( 
    award_id NVARCHAR2(4), 
    award_type VARCHAR(20), 
    min_sale DECIMAL(10,2), 
    max_sale DECIMAL(10,2), 
    PRIMARY KEY(award_id) 
);

CREATE TABLE Emp_Sales( 
    account_id Number(5,0), 
    total_sales Number(10,0), 
    year Number(4,0), 
    jan Number(10,0), 
    feb Number(10,0), 
    mar Number(10,0), 
    apr Number(10,0), 
    may Number(10,0), 
    jun Number(10,0), 
    jul Number(10,0), 
    aug Number(10,0), 
    sep Number(10,0), 
    oct Number(10,0), 
    nov Number(10,0), 
    december Number(10,0), 
    ssn NUMBER(9,0) NOT NULL, 
    PRIMARY KEY(account_id,year), 
    FOREIGN KEY(ssn) REFERENCES Employees(ssn) 
); 

CREATE TABLE Emp_Month_Year( 
    achievement_id Number(5,0), 
    sales_amount Number(8,2), 
    date_of_achvmnt DATE, 
    type_of_achvmnt NVARCHAR2(30), 
    account_id Number(5,0) NOT NULL, 
    year Number(4,0) NOT NULL, 
    PRIMARY KEY(achievement_id), 
    FOREIGN KEY(account_id, year) REFERENCES Emp_Sales(account_id, year)
); 

CREATE TABLE Certificate ( 
    certificate_id Number(5,0) , 
    cert_date DATE, 
    achievement_id Number(5,0), 
    PRIMARY KEY(certificate_id,achievement_id), 
    FOREIGN KEY(achievement_id) REFERENCES Emp_Month_Year(achievement_id) 
);

CREATE TABLE Granted_Awards ( 
    ssn NUMBER(9,0), 
    award_id NVARCHAR2(4), 
    award_date DATE, 
    quantity Number(3,0), 
    achievement_id Number(5,0), 
    center_id Number(5,0), 
    PRIMARY KEY (ssn, award_id,achievement_id,center_id), 
    FOREIGN KEY (ssn) REFERENCES Employees(ssn), 
    FOREIGN KEY(award_id) REFERENCES Awards(award_id), 
    FOREIGN KEY(achievement_id) REFERENCES Emp_Month_Year(achievement_id), 
    FOREIGN KEY(center_id) REFERENCES Awards_Centers(center_id) 
);

CREATE TABLE Transactions( 
    trans_id NVARCHAR2(5), 
    amount Number(10,2), 
    t_date DATE, 
    t_description NVARCHAR2(100), 
    account_id Number(5,0), 
    year Number(4,0), 
    ssn NUMBER(9,0) NOT NULL, 
    PRIMARY KEY(trans_id), 
    FOREIGN KEY(account_id, year) REFERENCES Emp_Sales(account_id, year), 
    FOREIGN KEY(ssn) REFERENCES Employees(ssn) 
); 


CREATE TABLE Contains ( 
    inv_id NVARCHAR2(5), 
    prod_id NVARCHAR2(5), 
    o_id NVARCHAR2(5), 
    increase_percent NUMBER(3,2), 
    PRIMARY KEY(inv_id, prod_id), 
    FOREIGN KEY (inv_id) REFERENCES Inventories(inv_id), 
    FOREIGN KEY (prod_id) REFERENCES Products(prod_id), 
    FOREIGN KEY(o_id) REFERENCES Quota_Offers(o_id) 
); 

CREATE TABLE Include_Transaction( 
	trans_id NVARCHAR2(5), 
	prod_id NVARCHAR2(5), 
	quantity NUMBER (10,0), 
	PRIMARY KEY (trans_id, prod_id), 
	FOREIGN KEY (trans_id) REFERENCES Transactions (trans_id), 
	FOREIGN KEY (prod_id) REFERENCES Products (prod_id) 
); 

CREATE TABLE Increase_Transaction( 
    trans_id NVARCHAR2(5), 
    prod_id NVARCHAR2(5), 
    inv_id NVARCHAR2(5), 
    PRIMARY KEY(trans_id,prod_id,inv_id), 
    FOREIGN KEY(trans_id) REFERENCES Transactions(trans_id), 
    FOREIGN KEY(prod_id) REFERENCES Products(prod_id), 
    FOREIGN KEY(inv_id) REFERENCES Inventories(inv_id) 
);