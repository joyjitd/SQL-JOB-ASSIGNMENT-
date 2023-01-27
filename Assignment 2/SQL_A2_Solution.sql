SQL JOB Preparation Assignment 2
1)	In SQL, what are DRL,DDL,DML,TCL and DCL? Explain each with a single example.
Answer
In SQL, DDL, DML, DDL, TCL, and DCL are five different types of SQL commands.
DRL (Data Retrieval Language) is not a standard SQL term. DRL is a set of command which are used to retrieve data from database servers. 
DDL (Data Definition Language) commands are used to define the database schema. It simply deals with descriptions of the database schema and is used to create and modify the structure of database objects in the database. Examples: CREATE, ALTER, DROP, TRUNCATE, RENAME.
DML (Data Manipulation Language) commands are used for managing data within schema objects. Examples: 
Select – Retrieving Data from Database.
Insert -Insert Data into Tables.
Update- Update existing data within a table
Delete -Delete records from database Table.
DCL (Data Control Language) commands are used to create roles, permissions, and referential integrity as well as grant and revoke access to the database. Examples: GRANT, REVOKE, DENY
TCL (Transaction Control Language) commands are used to manage the changes made by DML-statements. It allows statements to be grouped together into logical transactions. Examples: COMMIT, ROLLBACK, SAVEPOINT.

2)	For example, explain the criteria for column Alias. 
Column Alias are a temporary name which are given to table or columns for a particular SQL query. Aliases is used when name of column or table is used other than their original names, but the modified name is only temporary. Aliases are created to make table or column names more readable.
Code :
SELECT Employee_Name AS Employee, Salary*12 AS "Annual Salary"
FROM EmployeeTable;
In this example, the column "Employee_Name" is given the alias "Employee" and the column "Salary*12" is given the alias "Annual Salary".

 3. Replace the hardcoded value in the ENAME column with a dynamic value: 
SELECT EMPNO, ENAME, SAL FROM EMP WHERE ENAME='scott'
DECLARE @ename VARCHAR(20) = 'scott';
SELECT EMPNO, ENAME, SAL FROM EMP WHERE ENAME = @ename;
SELECT EMPNO, ENAME, SAL FROM EMP WHERE ENAME = @p_ename;

n this case, you would need to pass the value of @p_ename when executing the query.

You can also use a user input prompt to get the value of the ENAME column dynamically
SELECT EMPNO, ENAME, SAL FROM EMP WHERE ENAME = '&name';

4. Create a query to DISPLAY THE EMPNO, ENAME, WITH A SALARY OVER 3000 AND ENAME IS THE KING

Code:
SELECT EMPNO, ENAME FROM EMP WHERE SAL > 3000 AND ENAME = 'King';
5. Create a query to DISPLAY THE EMPNO, ENAME, SAL WITHOUT A SALARY OF $3000

SELECT EMPNO, ENAME, SAL 
FROM EMP 
WHERE SAL != 3000;
OR
SELECT EMPNO, ENAME, SAL 
FROM EMP 
WHERE SAL <> 3000;
OR
SELECT EMPNO, ENAME, SAL FROM EMP WHERE SAL NOT IN (3000);
