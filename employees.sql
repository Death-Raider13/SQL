CREATE TABLE IF NOT EXISTS employees(
employee_id TEXT PRIMARY KEY,
First_name TEXT,
Last_name TEXT,
department TEXT,
position TEXT,
salary REAL
);

INSERT INTO employees(employee_id,First_name,Last_name,department,position,salary)VALUES
('E012','John','Doe','Sales','Sales Manager',75000),
('E023','Jane','Smith','Marketing','Marketing Specialist',65000),
('E033','Michael','Johnson','IT','Software Engineer',80000),
('E014','Emily','Davis','HR','HR Manager',70000),
('E095','William','Brown','Finance','Financial Analyst',72000);


SELECT * FROM employees;