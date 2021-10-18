/*ASSIGNMENT NO: 4 (GROUP B)
NAME: ADITYA BHUTE
CLASS: TEIT
ROLL NO: TEIT106
AIM : Implement nested sub queries. Perform a test for set membership (in, not in), set
comparison (<some, >=some, <all etc.) and set cardinality (unique, not unique).*/
*************************CREATING DATABASE***************************
aditya@aditya-HP-Laptop-15q-dy0xxx:~$ sudo mysql
[sudo] password for aditya: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.7.32-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database assign4;
Query OK, 1 row affected (0.00 sec)

mysql> use assign4;
Database changed
************************Creating Employee Table***********************
mysql> create table employee(EMP_ID INT,EMP_NAME VARCHAR(20),DATE_OF_JOINING DATE,SALARY INT);
Query OK, 0 rows affected (0.23 sec)

**********************Creating Employee dept Table***********************
mysql> create table emp_dept(EMP_ID INT,EMP_DEPT VARCHAR(10));
Query OK, 0 rows affected (0.23 sec)

****************To insert Records in employee Tables*********************
mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(1,"RAJ SHARMA",'1998-08-13',100000);
Query OK, 1 row affected (0.08 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(2,"RAJU SHRIVASTAV",'1998-09-12',100000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(3,"SUREKHA PATIL",'1999-10-13',55000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(4,"CHAITRALI DESHPANDE",'2019-10-13',65000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(5,"MAYURI KAMBLE",'2013-01-13',35000);
Query OK, 1 row affected (0.04 sec)

***************To insert Records in Emp-Dept Tables*******************
mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(6,"RAM  JOSHI",'2012-01-11',45000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(1,"COMPUTER");
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(2,"INFO TECH");
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(3,"ENTC");
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(4,"COMPUTER");
Query OK, 1 row affected (0.03 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(5,"MECHANICAL");
Query OK, 1 row affected (0.03 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(6,"INFO TECH");
Query OK, 1 row affected (0.03 sec)

***********************Select subquery(USING IN)***********************
mysql> SELECT * FROM employee where EMP_ID IN(select EMP_ID from emp_dept);
+--------+---------------------+-----------------+--------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY |
+--------+---------------------+-----------------+--------+
|      1 | RAJ SHARMA          | 1998-08-13      | 100000 |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 100000 |
|      3 | SUREKHA PATIL       | 1999-10-13      |  55000 |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  65000 |
|      5 | MAYURI KAMBLE       | 2013-01-13      |  35000 |
|      6 | RAM  JOSHI          | 2012-01-11      |  45000 |
+--------+---------------------+-----------------+--------+
6 rows in set (0.01 sec)

mysql> SELECT * FROM employee where EMP_ID IN(select EMP_ID from emp_dept where EMP_DEPT="COMPUTER");
+--------+---------------------+-----------------+--------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY |
+--------+---------------------+-----------------+--------+
|      1 | RAJ SHARMA          | 1998-08-13      | 100000 |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  65000 |
+--------+---------------------+-----------------+--------+
2 rows in set (0.00 sec)

********************Select subquery(USING NOT IN)***********************
mysql> SELECT * FROM employee where EMP_ID NOT IN(select EMP_ID from
    -> emp_dept where EMP_DEPT="COMPUTER");
+--------+-----------------+-----------------+--------+
| EMP_ID | EMP_NAME        | DATE_OF_JOINING | SALARY |
+--------+-----------------+-----------------+--------+
|      2 | RAJU SHRIVASTAV | 1998-09-12      | 100000 |
|      3 | SUREKHA PATIL   | 1999-10-13      |  55000 |
|      5 | MAYURI KAMBLE   | 2013-01-13      |  35000 |
|      6 | RAM  JOSHI      | 2012-01-11      |  45000 |
+--------+-----------------+-----------------+--------+
4 rows in set (0.00 sec)

***********************Update subquery(USING IN)***********************
mysql> UPDATE employee SET SALARY=SALARY*0.5 WHERE EMP_ID IN(select EMP_ID from emp_dept where EMP_DEPT="COMPUTER");
Query OK, 2 rows affected (0.16 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from employee;
+--------+---------------------+-----------------+--------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY |
+--------+---------------------+-----------------+--------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 100000 |
|      3 | SUREKHA PATIL       | 1999-10-13      |  55000 |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 |
|      5 | MAYURI KAMBLE       | 2013-01-13      |  35000 |
|      6 | RAM  JOSHI          | 2012-01-11      |  45000 |
+--------+---------------------+-----------------+--------+
6 rows in set (0.01 sec)

***********************Update subquery(USING NOT IN)*********************
mysql> UPDATE employee SET SALARY=SALARY*1.5 WHERE EMP_ID NOT IN(select);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> UPDATE employee SET SALARY=SALARY*1.5 WHERE EMP_ID NOT IN(select EMP_ID from emp_dept where EMP_DEPT="COMPUTER");
Query OK, 4 rows affected (0.03 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> select * from employee;
+--------+---------------------+-----------------+--------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY |
+--------+---------------------+-----------------+--------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 150000 |
|      3 | SUREKHA PATIL       | 1999-10-13      |  82500 |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 |
|      5 | MAYURI KAMBLE       | 2013-01-13      |  52500 |
|      6 | RAM  JOSHI          | 2012-01-11      |  67500 |
+--------+---------------------+-----------------+--------+
6 rows in set (0.00 sec)

***********************Delete subquery(USING IN)***********************
mysql> DELETE FROM employee where EMP_ID IN(select EMP_ID from emp_dept);
Query OK, 6 rows affected (0.03 sec)

mysql> DELETE FROM employee where EMP_ID IN(select EMP_ID from emp_dept where EMP_DEPT="MECHANICAL");
Query OK, 0 rows affected (0.00 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(1,"RAJ SHARMA",'1998-08-13',100000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(2,"RAJU SHRIVASTAV",'1998-09-12',100000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(3,"SUREKHA PATIL",'1999-10-13',55000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(4,"CHAITRALI DESHPANDE",'2019-10-13',65000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(5,"MAYURI KAMBLE",'2013-01-13',35000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(6,"RAM  JOSHI",'2012-01-11',45000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(1,"COMPUTER");
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(2,"INFO TECH");
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(3,"ENTC");
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(4,"COMPUTER");
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(5,"MECHANICAL");
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_dept(EMP_ID,EMP_DEPT)values(6,"COMPUTER");               Query OK, 1 row affected (0.03 sec)

mysql> select * from employee;                                                  
+--------+---------------------+-----------------+--------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY |
+--------+---------------------+-----------------+--------+
|      1 | RAJ SHARMA          | 1998-08-13      | 100000 |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 100000 |
|      3 | SUREKHA PATIL       | 1999-10-13      |  55000 |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  65000 |
|      5 | MAYURI KAMBLE       | 2013-01-13      |  35000 |
|      6 | RAM  JOSHI          | 2012-01-11      |  45000 |
+--------+---------------------+-----------------+--------+
6 rows in set (0.00 sec)

mysql> UPDATE employee SET SALARY=SALARY*0.5 WHERE EMP_ID IN(select EMP_ID from emp_dept where EMP_DEPT="COMPUTER");
Query OK, 3 rows affected (0.04 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from employee;                                                  
+--------+---------------------+-----------------+--------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY |
+--------+---------------------+-----------------+--------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 100000 |
|      3 | SUREKHA PATIL       | 1999-10-13      |  55000 |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 |
|      5 | MAYURI KAMBLE       | 2013-01-13      |  35000 |
|      6 | RAM  JOSHI          | 2012-01-11      |  22500 |
+--------+---------------------+-----------------+--------+
6 rows in set (0.00 sec)

mysql> UPDATE employee SET SALARY=SALARY*1.5 WHERE EMP_ID NOT IN(select EMP_ID from emp_dept where EMP_DEPT="COMPUTER");
Query OK, 3 rows affected (0.04 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from employee;                                                  
+--------+---------------------+-----------------+--------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY |
+--------+---------------------+-----------------+--------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 150000 |
|      3 | SUREKHA PATIL       | 1999-10-13      |  82500 |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 |
|      5 | MAYURI KAMBLE       | 2013-01-13      |  52500 |
|      6 | RAM  JOSHI          | 2012-01-11      |  22500 |
+--------+---------------------+-----------------+--------+
6 rows in set (0.00 sec)

mysql> DELETE FROM employee where EMP_ID IN(select EMP_ID from emp_dept where EMP_DEPT="MECHANICAL");
Query OK, 1 row affected (0.03 sec)

mysql> select * from employee;                                   
+--------+---------------------+-----------------+--------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY |
+--------+---------------------+-----------------+--------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 150000 |
|      3 | SUREKHA PATIL       | 1999-10-13      |  82500 |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 |
|      6 | RAM  JOSHI          | 2012-01-11      |  22500 |
+--------+---------------------+-----------------+--------+
5 rows in set (0.00 sec)

******************Adding a new column(city)to Employee*******************
mysql> ALTER TABLE employee add column CITY VARCHAR(10);
Query OK, 0 rows affected (0.53 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE employee set CITY="PUNE" where EMP_ID=1;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee set CITY="PUNE" where EMP_ID=2;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee set CITY="TALEGAON" where EMP_ID=3;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  UPDATE employee set CITY="TALEGAON" where EMP_ID=4;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee set CITY="MUMBAI" where EMP_ID=5;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE employee set CITY="MUMBAI" where EMP_ID=6;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+---------------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY | CITY     |
+--------+---------------------+-----------------+--------+----------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 | PUNE     |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 150000 | PUNE     |
|      3 | SUREKHA PATIL       | 1999-10-13      |  82500 | TALEGAON |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 | TALEGAON |
|      6 | RAM  JOSHI          | 2012-01-11      |  22500 | MUMBAI   |
+--------+---------------------+-----------------+--------+----------+
5 rows in set (0.00 sec)

****************Adding a new column(salary,city) to Emp_Dept*************
mysql> ALTER TABLE emp_dept add column SALARY INT;
Query OK, 0 rows affected (0.53 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE emp_dept add column CITY VARCHAR(10);
Query OK, 0 rows affected (0.53 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>  UPDATE emp_dept set CITY="PUNE" where EMP_ID=1;
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> UPDATE emp_dept set CITY="PUNE" where EMP_ID=2;
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> UPDATE emp_dept set CITY="TALEGAON" where EMP_ID=3;
Query OK, 2 rows affected (0.03 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> UPDATE emp_dept set CITY="TALEGAON" where EMP_ID=4;
Query OK, 2 rows affected (0.03 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> UPDATE emp_dept set CITY="MUMBAI" where EMP_ID=5;
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> UPDATE emp_dept set CITY="MUMBAI" where EMP_ID=6;
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> UPDATE employee set EMP_NAME="RADHA SHARMA" where EMP_ID=6;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  UPDATE employee set DATE_OF_JOINING='1998-09-12' where EMP_ID=6;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee set SALARY=60000 where EMP_ID=6;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE emp_dept set EMP_DEPT="COMPUTER",SALARY=20000,CITY="MUMBAI" where EMP_ID=6;
Query OK, 2 rows affected (0.15 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM employee;
+--------+---------------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY | CITY     |
+--------+---------------------+-----------------+--------+----------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 | PUNE     |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 150000 | PUNE     |
|      3 | SUREKHA PATIL       | 1999-10-13      |  82500 | TALEGAON |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 | TALEGAON |
|      6 | RADHA SHARMA        | 1998-09-12      |  60000 | MUMBAI   |
+--------+---------------------+-----------------+--------+----------+
5 rows in set (0.00 sec)
mysql> UPDATE employee set EMP_ID=5 where EMP_ID=6;
Query OK, 1 row affected (0.14 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM employee;
+--------+---------------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY | CITY     |
+--------+---------------------+-----------------+--------+----------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 | PUNE     |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 150000 | PUNE     |
|      3 | SUREKHA PATIL       | 1999-10-13      |  82500 | TALEGAON |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 | TALEGAON |
|      5 | RADHA SHARMA        | 1998-09-12      |  60000 | MUMBAI   |
+--------+---------------------+-----------------+--------+----------+
5 rows in set (0.00 sec)

mysql> UPDATE employee set EMP_NAME="RAJESH SHARMA" where EMP_ID=6;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE employee set SALARY=70000 where EMP_ID=6;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE employee set DATE_OF_JOINING='1998-09-12' where EMP_ID=6;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE emp_dept set CITY="MUMBAI" where EMP_ID=6;
Query OK, 0 rows affected (0.04 sec)
Rows matched: 2  Changed: 0  Warnings: 0

mysql> UPDATE emp_dept set EMP_DEPT="COMPUTER",SALARY=60000,CITY="MUMBAI" where EMP_ID=6;
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM employee;
+--------+---------------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY | CITY     |
+--------+---------------------+-----------------+--------+----------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 | PUNE     |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 150000 | PUNE     |
|      3 | SUREKHA PATIL       | 1999-10-13      |  82500 | TALEGAON |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 | TALEGAON |
|      5 | RADHA SHARMA        | 1998-09-12      |  60000 | MUMBAI   |
+--------+---------------------+-----------------+--------+----------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM emp_dept;
+--------+------------+--------+----------+
| EMP_ID | EMP_DEPT   | SALARY | CITY     |
+--------+------------+--------+----------+
|      1 | COMPUTER   |   NULL | PUNE     |
|      2 | INFO TECH  |   NULL | PUNE     |
|      3 | ENTC       |   NULL | TALEGAON |
|      4 | COMPUTER   |   NULL | TALEGAON |
|      5 | MECHANICAL |   NULL | MUMBAI   |
|      6 | COMPUTER   |  60000 | MUMBAI   |
|      1 | COMPUTER   |   NULL | PUNE     |
|      2 | INFO TECH  |   NULL | PUNE     |
|      3 | ENTC       |   NULL | TALEGAON |
|      4 | COMPUTER   |   NULL | TALEGAON |
|      5 | MECHANICAL |   NULL | MUMBAI   |
|      6 | COMPUTER   |  60000 | MUMBAI   |
+--------+------------+--------+----------+
12 rows in set (0.00 sec)

mysql> UPDATE emp_dept set SALARY=50000 where EMP_ID=1;
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> UPDATE emp_dept set SALARY=200000 where EMP_ID=2;
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> UPDATE emp_dept set SALARY=60000 where EMP_ID=3;
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql>  UPDATE emp_dept set SALARY=50000 where EMP_ID=4;
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> UPDATE emp_dept set SALARY=40000 where EMP_ID=5;
Query OK, 2 rows affected (0.05 sec)
Rows matched: 2  Changed: 2  Warnings: 0

***************************SOME(WITH <)*****************************
mysql> select * from employee where SALARY < SOME(SELECT SALARY FROM emp_dept where CITY="TALEGAON");
+--------+---------------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY | CITY     |
+--------+---------------------+-----------------+--------+----------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 | PUNE     |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 | TALEGAON |
+--------+---------------------+-----------------+--------+----------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM emp_dept;
+--------+------------+--------+----------+
| EMP_ID | EMP_DEPT   | SALARY | CITY     |
+--------+------------+--------+----------+
|      1 | COMPUTER   |  50000 | PUNE     |
|      2 | INFO TECH  | 200000 | PUNE     |
|      3 | ENTC       |  60000 | TALEGAON |
|      4 | COMPUTER   |  50000 | TALEGAON |
|      5 | MECHANICAL |  40000 | MUMBAI   |
|      6 | COMPUTER   |  60000 | MUMBAI   |
|      1 | COMPUTER   |  50000 | PUNE     |
|      2 | INFO TECH  | 200000 | PUNE     |
|      3 | ENTC       |  60000 | TALEGAON |
|      4 | COMPUTER   |  50000 | TALEGAON |
|      5 | MECHANICAL |  40000 | MUMBAI   |
|      6 | COMPUTER   |  60000 | MUMBAI   |
+--------+------------+--------+----------+
12 rows in set (0.01 sec)

mysql> SELECT * FROM employee;
+--------+---------------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY | CITY     |
+--------+---------------------+-----------------+--------+----------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 | PUNE     |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 150000 | PUNE     |
|      3 | SUREKHA PATIL       | 1999-10-13      |  82500 | TALEGAON |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 | TALEGAON |
|      5 | RADHA SHARMA        | 1998-09-12      |  60000 | MUMBAI   |
+--------+---------------------+-----------------+--------+----------+
5 rows in set (0.00 sec)

mysql> UPDATE employee set CITY="TALEGAON" where EMP_ID=5;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM employee;
+--------+---------------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY | CITY     |
+--------+---------------------+-----------------+--------+----------+
|      1 | RAJ SHARMA          | 1998-08-13      |  50000 | PUNE     |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 150000 | PUNE     |
|      3 | SUREKHA PATIL       | 1999-10-13      |  82500 | TALEGAON |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 | TALEGAON |
|      5 | RADHA SHARMA        | 1998-09-12      |  60000 | TALEGAON |
+--------+---------------------+-----------------+--------+----------+
5 rows in set (0.00 sec)

mysql> select * from employee where SALARY = SOME(SELECT SALARY FROM emp_dept where CITY="TALEGAON");
+--------+--------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME     | DATE_OF_JOINING | SALARY | CITY     |
+--------+--------------+-----------------+--------+----------+
|      5 | RADHA SHARMA | 1998-09-12      |  60000 | TALEGAON |
|      1 | RAJ SHARMA   | 1998-08-13      |  50000 | PUNE     |
+--------+--------------+-----------------+--------+----------+
2 rows in set (0.00 sec)

mysql> select * from employee where SALARY = SOME(SELECT SALARY FROM emp_dept where CITY="TALEGAON");
+--------+--------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME     | DATE_OF_JOINING | SALARY | CITY     |
+--------+--------------+-----------------+--------+----------+
|      5 | RADHA SHARMA | 1998-09-12      |  60000 | TALEGAON |
|      1 | RAJ SHARMA   | 1998-08-13      |  50000 | PUNE     |
+--------+--------------+-----------------+--------+----------+
2 rows in set (0.00 sec)
***************************SOME(WITH >=)*****************************
mysql> select * from employee where SALARY >= SOME(SELECT SALARY FROM
    -> emp_dept where CITY="TALEGAON");
+--------+-----------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME        | DATE_OF_JOINING | SALARY | CITY     |
+--------+-----------------+-----------------+--------+----------+
|      1 | RAJ SHARMA      | 1998-08-13      |  50000 | PUNE     |
|      2 | RAJU SHRIVASTAV | 1998-09-12      | 150000 | PUNE     |
|      3 | SUREKHA PATIL   | 1999-10-13      |  82500 | TALEGAON |
|      5 | RADHA SHARMA    | 1998-09-12      |  60000 | TALEGAON |
+--------+-----------------+-----------------+--------+----------+
4 rows in set (0.00 sec)
***************************ALL(WITH <)*****************************
mysql> select * from employee where SALARY < ALL(SELECT SALARY FROM emp_dept
    -> where CITY="TALEGAON");
+--------+---------------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY | CITY     |
+--------+---------------------+-----------------+--------+----------+
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  32500 | TALEGAON |
+--------+---------------------+-----------------+--------+----------+
1 row in set (0.00 sec)
***************************SOME(WITH >=)*****************************
mysql> select * from employee where SALARY >= ALL(SELECT SALARY FROM
    -> emp_dept where CITY="TALEGAON");
+--------+-----------------+-----------------+--------+----------+
| EMP_ID | EMP_NAME        | DATE_OF_JOINING | SALARY | CITY     |
+--------+-----------------+-----------------+--------+----------+
|      2 | RAJU SHRIVASTAV | 1998-09-12      | 150000 | PUNE     |
|      3 | SUREKHA PATIL   | 1999-10-13      |  82500 | TALEGAON |
|      5 | RADHA SHARMA    | 1998-09-12      |  60000 | TALEGAON |
+--------+-----------------+-----------------+--------+----------+
3 rows in set (0.00 sec)
*******************************UNIQUE************************************
mysql>  create table employee(EMP_ID INT NOT NULL UNIQUE,EMP_NAME
    -> VARCHAR(20),DATE_OF_JOINING DATE,SALARY INT);
ERROR 1050 (42S01): Table 'employee' already exists
mysql> create table employee(EMP_ID INT NOT NULL UNIQUE,EMP_NAME VARCHAR(20),DATE_OF_JOINING DATE,SALARY INT);
ERROR 1050 (42S01): Table 'employee' already exists
mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(1,"RAJ SHARMA",'1998-08-13',100000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(2,"RAJU SHRIVASTAV",'1998-09-12',100000);
Query OK, 1 row affected (0.18 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(3,"SUREKHA PATIL",'1999-10-13',55000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(5,"MAYURI KAMBLE",'2013-01-13',35000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(4,"CHAITRALI DESHPANDE",'2019-10-13',65000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(6,"RAM  JOSHI",'2012-01-11',45000);
Query OK, 1 row affected (0.04 sec)

mysql> select * from employee;
+--------+---------------------+-----------------+--------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY |
+--------+---------------------+-----------------+--------+
|      1 | RAJ SHARMA          | 1998-08-13      | 100000 |
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 100000 |
|      3 | SUREKHA PATIL       | 1999-10-13      |  55000 |
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  65000 |
|      5 | MAYURI KAMBLE       | 2013-01-13      |  35000 |
|      6 | RAM  JOSHI          | 2012-01-11      |  45000 |
+--------+---------------------+-----------------+--------+
6 rows in set (0.00 sec)
*******************************NOT UNIQUE*********************************
mysql> create table employee(EMP_ID INT ,EMP_NAME VARCHAR(20),DATE_OF_JOINING DATE,SALARY INT);
ERROR 1050 (42S01): Table 'employee' already exists
mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(1,"RAJ SHARMA",'1998-08-13',100000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(2,"RAJU SHRIVASTAV",'1998-09-12',100000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(3,"SUREKHA PATIL",'1999-10-13',55000);
Query OK, 1 row affected (0.18 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(4,"CHAITRALI DESHPANDE",'2019-10-13',65000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(5,"MAYURI KAMBLE",'2013-01-13',35000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee(EMP_ID,EMP_NAME,DATE_OF_JOINING,SALARY)values(6,"RAM  JOSHI",'2012-01-11',45000);
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM employee;
+--------+---------------------+-----------------+--------+
| EMP_ID | EMP_NAME            | DATE_OF_JOINING | SALARY | 
+--------+---------------------+-----------------+--------+
|      1 | RAJ SHARMA          | 1998-08-13      | 100000 | 
|      2 | RAJU SHRIVASTAV     | 1998-09-12      | 100000 | 
|      3 | SUREKHA PATIL       | 1999-10-13      |  55000 | 
|      4 | CHAITRALI DESHPANDE | 2019-10-13      |  65000 | 
|      5 | MAYURI KAMBLE       | 2013-01-13      |  35000 | 
|      6 | RAM  JOSHI          | 2012-01-11      |  45000 | 
+--------+---------------------+-----------------+--------+
16 rows in set (0.00 sec)

mysql> 
CONCLUSION:Hence we have Implemented nested sub queries. Executed set membership (in, not
in), set comparison (<some, >=some, <all etc.) and set cardinality (unique, not unique).

