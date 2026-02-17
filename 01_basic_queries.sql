-- =========================================
-- BASIC SQL QUERIES (Employee Table)
-- =========================================

-- 1. Display all records from EMP table
SELECT * FROM EMP;

-- 2. List employee number and employee name
SELECT EMPNO, ENAME FROM EMP;

-- 3. Display employee number and name with headings NUMBER and NAME
SELECT EMPNO AS NUMBER, ENAME AS NAME FROM EMP;

-- 4. List employees working in department 20
SELECT * FROM EMP
WHERE DEPTNO = 20;

-- 5. List employees of department 10 and 20
SELECT * FROM EMP
WHERE DEPTNO IN (10, 20);

-- 6. List employees who joined after 01-Jan-1982
SELECT * FROM EMP
WHERE HIREDATE > '1982-01-01';

-- 7. List employees of department 10 who joined after 01-Jan-1982
SELECT * FROM EMP
WHERE DEPTNO = 10
AND HIREDATE > '1982-01-01';

-- 8. Display salary of all employees
SELECT SAL FROM EMP;

-- 9. List employees who do not receive commission
SELECT * FROM EMP
WHERE COMM IS NULL;

-- 10. List employees who receive 0 commission
SELECT * FROM EMP
WHERE COMM = 0;

-- 11. Select employees in department 30
SELECT * FROM EMP
WHERE DEPTNO = 30;

-- 12. List employee number, name and department number
--     where department number >= 20
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
WHERE DEPTNO >= 20;

-- 13. Find employees whose commission is greater than
--     60 percent of their salary
SELECT * FROM EMP
WHERE COMM > 0.6 * SAL;

-- 14. List name, job and salary of employees in department 20
--     who earn more than 2000
SELECT ENAME, JOB, SAL
FROM EMP
WHERE DEPTNO = 20
AND SAL > 2000;

-- 15. Find all salesmen in department 30
--     whose salary >= 1500
SELECT * FROM EMP
WHERE JOB = 'SALESMAN'
AND DEPTNO = 30
AND SAL >= 1500;

-- 16. Find all employees whose job is MANAGER or PRESIDENT
SELECT * FROM EMP
WHERE JOB IN ('MANAGER', 'PRESIDENT');

-- 17. Find details of managers and clerks in department 10
SELECT * FROM EMP
WHERE DEPTNO = 10
AND JOB IN ('MANAGER', 'CLERK');

-- 18. Find details of all managers in any department
--     and clerks in department 10
SELECT * FROM EMP
WHERE JOB = 'MANAGER'
OR (JOB = 'CLERK' AND DEPTNO = 10);

-- 19. Find details of managers in department 10
--     and clerks in department 20
SELECT * FROM EMP
WHERE (JOB = 'MANAGER' AND DEPTNO = 10)
OR (JOB = 'CLERK' AND DEPTNO = 20);

-- 20. Managers in department 10,
--     clerks in department 20,
--     and employees who are neither manager nor clerk
--     with salary >= 2000
SELECT * FROM EMP
WHERE (JOB = 'MANAGER' AND DEPTNO = 10)
OR (JOB = 'CLERK' AND DEPTNO = 20)
OR (JOB NOT IN ('MANAGER', 'CLERK') AND SAL >= 2000);

-- 21. List salaries of all employees in descending order
SELECT SAL FROM EMP
ORDER BY SAL DESC;
