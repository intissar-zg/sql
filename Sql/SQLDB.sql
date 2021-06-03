CREATE TABLE Product (
	Product_id VARCHAR2(20) CONSTRAINT PKP PRIMARY KEY,
	Product_Name VARCHAR2(20) CONSTRAINT cnull NOT NULL,
	Price NUMBER CONSTRAINT ckprice CHECK (Price>0) ,
	
);

CREATE TABLE Costumer (
	Costumer_id VARCHAR2(20) CONSTRAINT Costumer_id PRIMARY KEY,
	Costumer_Name VARCHAR2(20) CONSTRAINT Costumer_Name NOT NULL,
	Costumer_Tel NUMBER ,
	
);

CREATE TABLE Orders (
	Costumer_id VARCHAR2(20),
	Product_id VARCHAR2(20),
	Quantity NUMBER ,
    Total_amount NUMBER,
    CONSTRAINT PK PRIMARY KEY (Costumer_id,Product_id),
    CONSTRAINT fk1 FOREIGN KEY (Costumer_id) REFERENCES Costumer (Costumer_id),
	CONSTRAINT fk2 FOREIGN KEY (Product_id) REFERENCES Product (Product_id),
);

ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Orders ADD Order_date DATE CONSTRAINT DT default sysdate;

