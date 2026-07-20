CREATE TABLE IF NOT EXISTS Salesman(
Salesman_id TEXT ,
name TEXT,
city TEXT,
Commission TEXT
);

INSERT INTO Salesman (Salesman_id, name, city, Commission)
VALUES
("9830904", "JAMES HOOG", "New york", "0.15"),
("096420", "NICK KLEIN", "Los Angeles", "0.13"),
("990403", "JULIA GILL", "Chicago", "0.14"),
("980404", "RICHARD SMITH", "Houston", "0.12"),
("905045", "KAREN JONES", "Phoenix", "0.11");

CREATE TABLE IF NOT EXISTS Customer(
customer_id TEXT,
cust_name TEXT ,
CITY TEXT,
grade TEXT,
Salesman_id TEXT
);

INSERT INTO Customer (customer_id, cust_name,city,grade,Salesman_id)
VALUES
("80013", "JADME HOOGU", "New york", "100", "5001"),
("84002", "NICFK  LEIUN", "Los Angeles", "200", "5002"),
("80503", "JULIGA ILUL", "Chicago", "300", "5003"),
("80034", "RICHAHR USMITH", "Houston", "400", "5004"),
("80045", "KARENH UONES", "Phoenix", "500", "5005");

CREATE TABLE IF NOT EXISTS Orders(
ord_no TEXT ,
purch_amt TEXT,
ord_date TEXT,
customer_id TEXT,
Salesman_id TEXT
);


INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, Salesman_id)
VALUES
("848001", "150.5", "2023-01-01", "3001", "5001"),
("885002", "200.0", "2023-01-02", "3002", "5002"),
("880403", "300.0", "2023-01-03", "3003", "5003"),
("880054", "400.0", "2023-01-04", "3004", "5004"),
("880035", "500.0", "2023-10-05", "3005", "5005");

SELECT customer.cust_name, salesman.name, salesman.city 
from Customer
join Salesman ON Customer.city=Salesman.city;

select Customer.cust_name, Salesman.name
FROM Customer
JOIN Salesman on Customer.Salesman_id= Salesman.Salesman_id;

select Orders.ord_no, Customer.cust_name, Orders.customer_id, Orders.Salesman_id 
from Orders
JOIN Customer ON Orders.customer_id = Customer.customer_id
JOIN Salesman ON Orders.Salesman_id= Salesman.Salesman_id
WHERE Customer.city<> Salesman.city;

select Orders.ord_no, Customer.cust_name
from Orders
JOIN Customer ON Orders.customer_id=Customer.customer_id;

select Customer.cust_name as "Customer", Customer.grade as "grade"
from Orders
join Salesman on Orders.Salesman_id=Salesman.Salesman_id
join customer on Orders.cutomer_id= Salesman.Salesman_id
join Customer on Orders.customer_id=Customer.customer_id
where Customer.grade is not null;


select Customer.cust_name as "Customer",
Customer.city as "city",
Salesman.nam as "Salesman",
Salesman.commission
FROM Customer
JOIN Salesman on Customer.Salesman)id = Salesman.Salesman_id
where Salesman.commission Betwwen 0.12 and 0.14;

select Orders.ord_no, Customer.cust_name, Salesman.commission as "Commission%",
Orders.purch_amt* Salesman.comission as "Commission"
from orders
join Salesman on Orders.Salesman_id= Salesman.Salesman_id
join Customer On Orders. customer_id= Customer.customer_id
where Customer.grade >=200;

SELECT *
FROM Customer 
JOIN Orders ON Customer.customer_id = Orders.customer_id 
where Orders.ord_date='2023-10-05';