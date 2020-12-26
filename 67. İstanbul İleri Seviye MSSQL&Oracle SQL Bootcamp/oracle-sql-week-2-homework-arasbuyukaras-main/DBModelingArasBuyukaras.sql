
CREATE TABLE Vendor(VendorId number PRIMARY KEY,
VendorName VARCHAR2(255),
EffectiveStartDate DATE,
EffectiveEndDate DATE,
Status VARCHAR2(255));

CREATE TABLE Item(ItemId NUMBER PRIMARY KEY,
ItemDefinition VARCHAR2(255),
CategoryName VARCHAR2(255),
SubCategoryName VARChAR2(255),
Status VARCHAR2(255));

CREATE TABLE OrderDetail(OrderDetailId NUMBER PRIMARY KEY,
OrderID NUMBER,
ItemId NUMBER,
CONSTRAINT fk_ItemId FOREIGN KEY(ItemId)
    REFERENCES Item(ItemId),
Quantity NUMBER,
LinePrice NUMBER);

CREATE TABLE MainOrdering (OrderId number PRIMARY KEY,
OrderName varchar2(255),
TotalAmount number,
Vendor_Id number,
OrderDate DATE,
UserName varchar2(255));


INSERT INTO Vendor(VendorId,VendorName,EffectiveStartDate,Status)VALUES(1,'Aras Ticaret','01.01.2020','ACTIVE');
INSERT INTO Vendor(VendorId,VendorName,EffectiveStartDate,Status)VALUES(2,'Apple','01.10.2019','ACTIVE');
INSERT INTO Vendor(VendorId,VendorName,EffectiveStartDate,EffectiveEndDate,Status)VALUES(3,'Samsung','01.05.2018','01.10.2019','DEACTIVE');
INSERT INTO Vendor(VendorId,VendorName,EffectiveStartDate,Status)VALUES(4,'Asus','01.01.2018','ACTIVE');


INSERT INTO Item(ItemId,ItemDefinition,CategoryName,SubCategoryName,Status) VALUES (1,'Lamy Dolma Kalem','Ofis Malzemeleri','Kalem','ACTIVE');
INSERT INTO Item(ItemId,ItemDefinition,CategoryName,SubCategoryName,Status) VALUES (2,'Tükenmez Kalem','Ofis Malzemeleri','Kalem','DEACTIVE');
INSERT INTO Item(ItemId,ItemDefinition,CategoryName,SubCategoryName,Status) VALUES (3,'10lu Maske','Saðlýk','Maske','ACTIVE');
INSERT INTO Item(ItemId,ItemDefinition,CategoryName,SubCategoryName,Status) VALUES (4,'El Dezenfektaný','Saðlýk','Dezenfektan','ACTIVE');

INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (1,1,3,15,150);
INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (2,1,4,2,45);
INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (3,2,1,1,1800);
INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (4,3,3,5,75);
INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (4,4,3,5,75);
INSERT INTO OrderDetail(OrderDetailId,OrderID,ItemId,Quantity,LinePrice)VALUES (5,5,2,5,15);


INSERT INTO MainOrdering(OrderId,OrderName,TotalAmount,Vendor_Id,OrderDate,UserName)VALUES(1,'Pandemi Ýhtiyaçlarý',195,1,'24.11.2020','arasb');
INSERT INTO MainOrdering(OrderId,OrderName,TotalAmount,Vendor_Id,OrderDate,UserName)VALUES(2,'Ofis Ýhtiyaçlarý',1800,2,'25.11.2020','cana');
INSERT INTO MainOrdering(OrderId,OrderName,TotalAmount,Vendor_Id,OrderDate,UserName)VALUES(3,'Ofis Ýhtiyaçlarý 2',195,4,'26.11.2020','msokmen');
INSERT INTO MainOrdering(OrderId,OrderName,TotalAmount,Vendor_Id,OrderDate,UserName)VALUES(4,'Pandemi Ýhtiyaçlarý 2',75,1,'26.11.2020','suslut');
INSERT INTO MainOrdering(OrderId,OrderName,TotalAmount,Vendor_Id,OrderDate,UserName)VALUES(5,'Pandemi Ýhtiyaçlarý 3',15,3,'26.11.2020','sorhan');


CREATE PUBLIC SYNONYM MainOrdering_synonym
FOR MainOrdering;
CREATE PUBLIC SYNONYM Vendor_synonym
FOR Vendor;
CREATE PUBLIC SYNONYM Item_synonym
FOR Item;
CREATE PUBLIC SYNONYM OrderDetail_synonym
FOR OrderDetail;

CREATE VIEW ALLORDERDETAILS as
SELECT MO.OrderId,OD.OrderDetailId,MO.OrderName,V.VendorName,I.ItemDefinition,OD.Quantity,OD.LinePrice,MO.TotalAmount,MO.UserName,MO.OrderDate from MainOrdering MO 
INNER JOIN OrderDetail OD ON MO.OrderId=OD.OrderId
INNER JOIN Item I ON I.ItemId=OD.ItemId
INNER JOIN Vendor V on V.VendorId=MO.Vendor_Id
WHERE v.status='ACTIVE'
ORDER BY MO.OrderId,OD.OrderDetailId ASC;

SELECT * FROM ALLORDERDETAILS;