SQL JOB Preparation Assignment 3
-----------------------------------------------------------------------
1. Using the BETWEEN operator, rewrite the following query: SELECT EMPNO, 
ENAME, SAL FROM EMP WHERE SAL>=2000 AND SAL=3000
Ans: SELECT EMPNO, ENAME, SAL FROM EMP WHERE SAL BETWEEN 2000 AND 3000;
-------------------------------------------------------------------------------------------------------------------
2. Rewrite the query SELECT EMPNO, ENAME, HIRE DATE FROM EMP WHERE ENAME='JONES' OR ENAME='TURNER' OR ENAME='SMITH' using the IN operator.
SELECT EMPNO, ENAME, HIRE DATE FROM EMP WHERE ENAME IN ('JONES', 'TURNER', 'SMITH')
-------------------------------------------------------------------------------------------------------------------
3. In SQL, what is the difference between null and 0?
In SQL null means where value is missing or not defined. On the other hand, when the value is 0, that means a defined value has been assigned with is zero 0. 
------------------------------------------------------------------------------------------------
4. Using the LIKE operator, extract all the rows where the name has a third character like 'A,' e.g. CHARLIE.
SELECT * FROM table_name WHERE name LIKE '__A%'
The '%' is used as a wildcard to match any number of characters, and the '_' is used to match a single character. In this case, the query will match any name that starts with two characters, has an 'A' as the third character, and is followed by any number of characters.
---------------------------------------------------------------------
5.DISPLAY THE EMPNO, ENAME, SAL WHOSE SAL IS MORE THAN 2000 AND SORT BASED IN A QUERY.
SELECT EMPNO, ENAME, SAL FROM EMP WHERE SAL > 2000 ORDER BY SAL ASC
This query will select the columns EMPNO, ENAME, and SAL from the table EMP where the value of SAL is greater than 2000. It will then sort the results in ascending order based on the value of SAL.

If you want to sort based on other columns, you can replace SAL with the column name you want to sort by.
Also, you can sort in descending order by adding DESC after the column name in the ORDER BY clause. e.g. ORDER BY SAL DESC.
