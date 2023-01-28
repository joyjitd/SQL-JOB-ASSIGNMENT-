SQL Job Preparation Assignment 1


1.	Table DEPT: --------------------------------- 
DEPTNO(PK) DNAME 
10 AC --------------------------------- 

Table EMP: --------------------------------- 
EMPNO ENAME DEPTNO(FK) 
101 ROCK 10 
102 JACK 10 
103 MARK 10 
104 JERRY 10 
--------------------------------- 
What is the difference between the parent and child tables, and why?

Answer:
In the given example, the DEPT table is the parent table, and the EMP table is the child table. The difference between the two is that the parent table is the table that contains the primary key, while the child table is the table that contains the foreign key. The primary key in the parent table is DEPTNO, and it is referenced as the foreign key in the child table, EMP, in the DEPTNO column. The reason for this relationship is to ensure referential integrity, which means that the foreign key in the child table must match a primary key in the parent table, and it cannot be null or duplicate. This helps to maintain consistency in the data and prevents orphan records in the child table.
----------------------------------------------------------------
2.	What are the four components of a database management system
The four components of a database management system. 
Data definition language (DDL): This component allows users to define the database schema, which includes creating, altering, and deleting database objects such as tables, indexes, and views.
Data manipulation language (DML): This component allows users to manipulate the data stored in the database, including inserting, updating, and deleting records.
Data control language (DCL): This component allows users to control access to the database, including granting and revoking permissions to users and roles.
Query language: This component allows users to retrieve data from the database using a structured query language (SQL) or other query languages. It enables the user to extract the data from the database by searching, sorting, and filtering data according to specified criteria.
3.	What is the distinction between SQL and SQL plus?
SQL (Structured Query Language) is a programming language that is used to manage and manipulate relational databases. It is used to insert, update, delete, and query data in a database.
SQL Plus is a command-line interface for Oracle Database that allows users to execute SQL commands and manage the Oracle Database. It provides additional functionality beyond SQL, such as creating and modifying database objects, formatting query results, and editing and running scripts. In other words, SQL Plus is a tool that enhances the capabilities of SQL by providing additional commands and features.
4.	What is the definition of normalization?
Normalization is the process of organizing data in a database in a way that reduces data redundancy and improves data integrity.
5. Give examples of 1NF, 2NF, 3NF, and BCNF
Normalization is the process of organizing data in a database to minimize data redundancy and improve data integrity. There are several normal forms, each with their own set of rules:
1NF (First Normal Form) - Each table must have a primary key, and each column must contain atomic (indivisible) values.
2NF (Second Normal Form) - In addition to 1NF, the table must not have any partial dependencies (i.e. a non-primary key column depends on only a part of the primary key).
3NF (Third Normal Form) - In addition to 2NF, the table must not have any transitive dependencies (i.e. a non-primary key column depends on another non-primary key column).
BCNF (Boyce-Codd Normal Form) - In addition to 3NF, the table must not have any multi-valued dependencies (i.e. two or more columns are dependent on each other, but not on the primary key).
Example:
Table: Employee
Columns: Emp_ID (Primary Key), Emp_Name, Emp_Age, Emp_Address, Emp_Salary
1NF: Emp_ID is primary key, Each column contain atomic values
2NF: Emp_ID is the only primary key, Emp_Name, Emp_Age, Emp_Address, Emp_Salary are non-primary key columns and don't depend on only a part of the primary key
3NF: Emp_ID is the only primary key, Emp_Name, Emp_Age, Emp_Address, Emp_Salary are non-primary key columns and don't depend on another non-primary key column.
BCNF: Emp_ID is the only primary key, Emp_Name, Emp_Age, Emp_Address, Emp_Salary are non-primary key columns and don't depend on each other, but only depend on the primary key.





