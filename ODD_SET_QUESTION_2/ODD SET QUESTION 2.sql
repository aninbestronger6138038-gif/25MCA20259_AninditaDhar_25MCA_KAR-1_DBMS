---QUESTION2
---ANINDITA DHAR ;25MCA20259

---A company database contains two tables: Employee(EmpID, EmpName, Salary) .Write an SQL query to create a VIEW named 
--HighSalaryEmployees that displays EmpID, EmpName, and Salary from the Employee table where the Salary is greater than 50000.

CREATE TABLE EMPLOYEE(
EmpID INT,
EmpName VARCHAR(30),
Salary INT
);

INSERT INTO EMPLOYEE VALUES(101,'ANINDITA',70000);
INSERT INTO EMPLOYEE VALUES(102,'ANSH',55000);
INSERT INTO EMPLOYEE VALUES(103,'AMRIT',20000);
INSERT INTO EMPLOYEE VALUES(104,'DISHA',10000);
INSERT INTO EMPLOYEE VALUES(105,'INDIRA',60000);

SELECT * FROM EMPLOYEE;

CREATE VIEW  HighSalaryEmployees AS
SELECT EmpID,EmpName ,Salary
FROM EMPLOYEE
WHERE Salary>50000;


SELECT * FROM HighSalaryEmployees;
