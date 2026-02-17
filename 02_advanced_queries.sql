-- =========================================
-- 02 ADVANCED QUERIES (String & Date Functions)
-- =========================================

-- 1. Display names, jobs and bonus:
-- Managers: 500
-- Clerks: 200
-- Others (except President): 350
-- President: Salary as bonus

SELECT ENAME, JOB,
CASE
    WHEN JOB = 'MANAGER' THEN 500
    WHEN JOB = 'CLERK' THEN 200
    WHEN JOB = 'PRESIDENT' THEN SAL
    ELSE 350
END AS BONUS
FROM EMP;


-- 2. Display names and bonus (20% of salary, max 200)

SELECT ENAME,
CASE
    WHEN SAL * 0.2 > 200 THEN 200
    ELSE SAL * 0.2
END AS BONUS
FROM EMP;


-- 3. Display employee details in formatted date style

SELECT ENAME,
       'Joined on ' || HIREDATE AS FORMATTED_DATE
FROM EMP;


-- 4. Display name and salary label as Greater or Smaller than 1500

SELECT ENAME, SAL,
CASE
    WHEN SAL > 1500 THEN 'Greater'
    ELSE 'Smaller'
END AS SALARY_STATUS
FROM EMP;


-- 5. Display names and calculated DA based on salary range

SELECT ENAME, SAL,
CASE
    WHEN SAL < 1000 THEN SAL * 0.1
    WHEN SAL BETWEEN 1000 AND 2000 THEN SAL * 0.15
    ELSE SAL * 0.2
END AS DA
FROM EMP;


-- 6. Display names, job and hire date in descending order within department

SELECT ENAME, JOB, HIREDATE, DEPTNO
FROM EMP
ORDER BY DEPTNO, HIREDATE DESC;


-- 7. Display date after two months from today

SELECT DATE('now', '+2 months') AS DATE_AFTER_TWO_MONTHS;


-- 8. Display employee number, name (first letter uppercase) and department

SELECT EMPNO,
       UPPER(SUBSTR(ENAME,1,1)) || LOWER(SUBSTR(ENAME,2)) AS FORMATTED_NAME,
       DEPTNO
FROM EMP
ORDER BY DEPTNO DESC;


-- 9. Concatenate name and job

SELECT ENAME || ' ' || JOB AS NAME_AND_JOB
FROM EMP;


-- 10. Display names padded to right up to 16 characters

SELECT printf('%-16s', ENAME) AS PADDED_NAME
FROM EMP;


-- 11. Display first three characters of names

SELECT SUBSTR(ENAME, 1, 3) AS FIRST_THREE_CHARS
FROM EMP;


-- 12. Display salary rounded to nearest 1000

SELECT ENAME,
       ROUND(SAL/1000.0)*1000 AS ROUNDED_SALARY
FROM EMP;


-- 13. Employees whose name last character equals job last character

SELECT ENAME, JOB
FROM EMP
WHERE SUBSTR(ENAME, -1) = SUBSTR(JOB, -1);


-- 14. Display names and salary in descending salary order

SELECT ENAME, SAL
FROM EMP
ORDER BY SAL DESC;


-- 15. Employees whose name contains 'A'

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%A%';


-- 16. Employees hired in first half of month (before 16th)

SELECT ENAME, HIREDATE
FROM EMP
WHERE CAST(STRFTIME('%d', HIREDATE) AS INTEGER) < 16;


-- 17. Display employees and indicate YES or NO if they receive commission

SELECT ENAME,
CASE
    WHEN COMM IS NULL OR COMM = 0 THEN 'NO'
    ELSE 'YES'
END AS COMMISSION_STATUS
FROM EMP;


-- 18. Employees whose name starts with J, K, L or M

SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'J%'
   OR ENAME LIKE 'K%'
   OR ENAME LIKE 'L%'
   OR ENAME LIKE 'M%';


-- 19. Display length of employee names

SELECT ENAME, LENGTH(ENAME) AS NAME_LENGTH
FROM EMP;


-- 20. Employees whose name has 5 characters and ends with 'N'

SELECT ENAME
FROM EMP
WHERE LENGTH(ENAME) = 5
AND ENAME LIKE '%N';


-- 21. Display employee name and department number of employees
--     in department 10 and 30 in alphabetical order

SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO IN (10, 30)
ORDER BY ENAME;


-- 22. Employees who do not receive commission or commission < 100

SELECT ENAME, COMM
FROM EMP
WHERE COMM IS NULL OR COMM < 100;


-- 23. Employees whose commission is 0

SELECT ENAME
FROM EMP
WHERE COMM = 0;
