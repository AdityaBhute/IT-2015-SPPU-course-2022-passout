/*NAME:ADITYA BHUTE
CLASS:TEIT
ROLL NO:TEIT_06
AIM:Design and implement a database and apply at least 10 different DML queries for the following task.For a given input string display only those records which match the given pattern or a phrase in the search string.Make use of wild characters and LIKE operator for the same.Make use of Boolean and arithematic operators wherever necessary.

----------------------------------------------------------------------------------------------------------------------------------------------*/
aditya@aditya-HP-Laptop-15q-dy0xxx:~$ sudo mysql
[sudo] password for aditya: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 5
Server version: 5.7.29-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

***********************************Create Database********************************************************************************************
mysql> create database assign2;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| assign2            |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.01 sec)

mysql> use assign2;
Database changed
mysql> create table emp2(empno integer,ename varchar(15),joindate date,esal integer,primary key(empno));
Query OK, 0 rows affected (0.24 sec)

mysql> desc emp2;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| empno    | int(11)     | NO   | PRI | NULL    |       |
| ename    | varchar(15) | YES  |     | NULL    |       |
| joindate | date        | YES  |     | NULL    |       |
| esal     | int(11)     | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into emp2 values(1,"Raj",'10-10-19',50000),(2,"Daksh",'20-06-19',100000);
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into emp2 values(3,"Raaja",'16-10-19',50000),(4,"Darshana",'29-06-19',5000);
Query OK, 2 rows affected (0.05 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into emp2 values(5,"Sam",'15-10-19',30000),(6,"Arsh",'27-06-18',60000);
Query OK, 2 rows affected (0.05 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into emp2 values(7,"Pooja",'15-10-17',90000),(8,"Aisha",'29-06-18',85000);
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into emp2 values(9,"Vansh",'15-10-17',70000),(10,"Arya",'20-06-18',90000);
Query OK, 2 rows affected (0.06 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM emp2;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|    10 | Arya     | 2020-06-18 |  90000 |
+-------+----------+------------+--------+
10 rows in set (0.00 sec)

mysql> INSERT INTO emp2(empno)values(11);
Query OK, 1 row affected (0.06 sec)

mysql> SELECT * FROM emp2;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|    10 | Arya     | 2020-06-18 |  90000 |
|    11 | NULL     | NULL       |   NULL |
+-------+----------+------------+--------+
11 rows in set (0.00 sec)

mysql> create table emp3(empno integer,ename varchar(15),joindate date,esal integer,primary key(empno));
Query OK, 0 rows affected (0.24 sec)

mysql> SELECT * FROM emp2;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|    10 | Arya     | 2020-06-18 |  90000 |
|    11 | NULL     | NULL       |   NULL |
+-------+----------+------------+--------+
11 rows in set (0.00 sec)

mysql> show tables;
+-------------------+
| Tables_in_assign2 |
+-------------------+
| emp2              |
| emp3              |
+-------------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO emp3 SELECT * FROM emp2;
Query OK, 11 rows affected (0.04 sec)
Records: 11  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM emp3;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|    10 | Arya     | 2020-06-18 |  90000 |
|    11 | NULL     | NULL       |   NULL |
+-------+----------+------------+--------+
11 rows in set (0.00 sec)

mysql> select ename,joindate from emp3;
+----------+------------+
| ename    | joindate   |
+----------+------------+
| Raj      | 2010-10-19 |
| Daksh    | 2020-06-19 |
| Raaja    | 2016-10-19 |
| Darshana | 2029-06-19 |
| Sam      | 2015-10-19 |
| Arsh     | 2027-06-18 |
| Pooja    | 2015-10-17 |
| Aisha    | 2029-06-18 |
| Vansh    | 2015-10-17 |
| Arya     | 2020-06-18 |
| NULL     | NULL       |
+----------+------------+
11 rows in set (0.01 sec)

mysql> select ename,esal from emp3 where esal<50000;
+----------+-------+
| ename    | esal  |
+----------+-------+
| Darshana |  5000 |
| Sam      | 30000 |
+----------+-------+
2 rows in set (0.00 sec)

mysql> select ename,esal from emp3 where esal<=50000;
+----------+-------+
| ename    | esal  |
+----------+-------+
| Raj      | 50000 |
| Raaja    | 50000 |
| Darshana |  5000 |
| Sam      | 30000 |
+----------+-------+
4 rows in set (0.00 sec)

mysql> select ename,esal from emp3 where esal>50000;
+-------+--------+
| ename | esal   |
+-------+--------+
| Daksh | 100000 |
| Arsh  |  60000 |
| Pooja |  90000 |
| Aisha |  85000 |
| Vansh |  70000 |
| Arya  |  90000 |
+-------+--------+
6 rows in set (0.00 sec)

mysql> select ename,joindate from emp3 where joindate='2015-10-17';
+-------+------------+
| ename | joindate   |
+-------+------------+
| Pooja | 2015-10-17 |
| Vansh | 2015-10-17 |
+-------+------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM emp3 where ename="Daksh";
+-------+-------+------------+--------+
| empno | ename | joindate   | esal   |
+-------+-------+------------+--------+
|     2 | Daksh | 2020-06-19 | 100000 |
+-------+-------+------------+--------+
1 row in set (0.00 sec)

mysql> SELECT DISTINCT(esal) FROM emp3;
+--------+
| esal   |
+--------+
|  50000 |
| 100000 |
|   5000 |
|  30000 |
|  60000 |
|  90000 |
|  85000 |
|  70000 |
|   NULL |
+--------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM emp3 ORDER BY joindate;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|    11 | NULL     | NULL       |   NULL |
|     1 | Raj      | 2010-10-19 |  50000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|    10 | Arya     | 2020-06-18 |  90000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     4 | Darshana | 2029-06-19 |   5000 |
+-------+----------+------------+--------+
11 rows in set (0.00 sec)

mysql> SELECT * FROM emp3 ORDER BY esal;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|    11 | NULL     | NULL       |   NULL |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     1 | Raj      | 2010-10-19 |  50000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|    10 | Arya     | 2020-06-18 |  90000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
+-------+----------+------------+--------+
11 rows in set (0.00 sec)

mysql> SELECT * FROM emp3 ORDER BY joindate desc;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     4 | Darshana | 2029-06-19 |   5000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|    10 | Arya     | 2020-06-18 |  90000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|     1 | Raj      | 2010-10-19 |  50000 |
|    11 | NULL     | NULL       |   NULL |
+-------+----------+------------+--------+
11 rows in set (0.00 sec)

mysql> SELECT * FROM emp3 ORDER BY esal desc;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     2 | Daksh    | 2020-06-19 | 100000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|    10 | Arya     | 2020-06-18 |  90000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     1 | Raj      | 2010-10-19 |  50000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|    11 | NULL     | NULL       |   NULL |
+-------+----------+------------+--------+
11 rows in set (0.00 sec)

mysql> SELECT * FROM emp3 ORDER BY ename asc;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|    11 | NULL     | NULL       |   NULL |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|    10 | Arya     | 2020-06-18 |  90000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     1 | Raj      | 2010-10-19 |  50000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
+-------+----------+------------+--------+
11 rows in set (0.00 sec)

mysql> UPDATE emp3 set esal=120000 where ename="Aisha";
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM emp3;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     8 | Aisha    | 2029-06-18 | 120000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|    10 | Arya     | 2020-06-18 |  90000 |
|    11 | NULL     | NULL       |   NULL |
+-------+----------+------------+--------+
11 rows in set (0.00 sec)

mysql> delete from emp3 where ename="Aisha";
Query OK, 1 row affected (0.05 sec)

mysql> SELECT * FROM emp3;
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|    10 | Arya     | 2020-06-18 |  90000 |
|    11 | NULL     | NULL       |   NULL |
+-------+----------+------------+--------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where esal in (30000,90000);
+-------+-------+------------+-------+
| empno | ename | joindate   | esal  |
+-------+-------+------------+-------+
|     5 | Sam   | 2015-10-19 | 30000 |
|     7 | Pooja | 2015-10-17 | 90000 |
|    10 | Arya  | 2020-06-18 | 90000 |
+-------+-------+------------+-------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where esal not in (30000,90000);
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
+-------+----------+------------+--------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where esal between 10000 and 70000;
+-------+-------+------------+-------+
| empno | ename | joindate   | esal  |
+-------+-------+------------+-------+
|     1 | Raj   | 2010-10-19 | 50000 |
|     3 | Raaja | 2016-10-19 | 50000 |
|     5 | Sam   | 2015-10-19 | 30000 |
|     6 | Arsh  | 2027-06-18 | 60000 |
|     9 | Vansh | 2015-10-17 | 70000 |
+-------+-------+------------+-------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where joindate like '2015%';
+-------+-------+------------+-------+
| empno | ename | joindate   | esal  |
+-------+-------+------------+-------+
|     5 | Sam   | 2015-10-19 | 30000 |
|     7 | Pooja | 2015-10-17 | 90000 |
|     9 | Vansh | 2015-10-17 | 70000 |
+-------+-------+------------+-------+
3 rows in set, 1 warning (0.00 sec)

mysql> SELECT * FROM emp2 where joindate like '%2015';
Empty set, 1 warning (0.01 sec)

mysql> SELECT * FROM emp2 where joindate like '%10';
Empty set, 1 warning (0.00 sec)

mysql> SELECT * FROM emp2 where joindate like '%17';
+-------+-------+------------+-------+
| empno | ename | joindate   | esal  |
+-------+-------+------------+-------+
|     7 | Pooja | 2015-10-17 | 90000 |
|     9 | Vansh | 2015-10-17 | 70000 |
+-------+-------+------------+-------+
2 rows in set, 1 warning (0.00 sec)

mysql> SELECT * FROM emp2 where ename like '%ar%';
+-------+----------+------------+-------+
| empno | ename    | joindate   | esal  |
+-------+----------+------------+-------+
|     4 | Darshana | 2029-06-19 |  5000 |
|     6 | Arsh     | 2027-06-18 | 60000 |
|    10 | Arya     | 2020-06-18 | 90000 |
+-------+----------+------------+-------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where ename like '_r%';
+-------+-------+------------+-------+
| empno | ename | joindate   | esal  |
+-------+-------+------------+-------+
|     6 | Arsh  | 2027-06-18 | 60000 |
|    10 | Arya  | 2020-06-18 | 90000 |
+-------+-------+------------+-------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where ename like 'a_%';
+-------+-------+------------+-------+
| empno | ename | joindate   | esal  |
+-------+-------+------------+-------+
|     6 | Arsh  | 2027-06-18 | 60000 |
|     8 | Aisha | 2029-06-18 | 85000 |
|    10 | Arya  | 2020-06-18 | 90000 |
+-------+-------+------------+-------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where ename like 'd%h';
+-------+-------+------------+--------+
| empno | ename | joindate   | esal   |
+-------+-------+------------+--------+
|     2 | Daksh | 2020-06-19 | 100000 |
+-------+-------+------------+--------+
1 row in set (0.00 sec)

mysql> SELECT * FROM emp2 where ename not like '%ar%';
+-------+-------+------------+--------+
| empno | ename | joindate   | esal   |
+-------+-------+------------+--------+
|     1 | Raj   | 2010-10-19 |  50000 |
|     2 | Daksh | 2020-06-19 | 100000 |
|     3 | Raaja | 2016-10-19 |  50000 |
|     5 | Sam   | 2015-10-19 |  30000 |
|     7 | Pooja | 2015-10-17 |  90000 |
|     8 | Aisha | 2029-06-18 |  85000 |
|     9 | Vansh | 2015-10-17 |  70000 |
+-------+-------+------------+--------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where ename not like 'd%h';
+-------+----------+------------+-------+
| empno | ename    | joindate   | esal  |
+-------+----------+------------+-------+
|     1 | Raj      | 2010-10-19 | 50000 |
|     3 | Raaja    | 2016-10-19 | 50000 |
|     4 | Darshana | 2029-06-19 |  5000 |
|     5 | Sam      | 2015-10-19 | 30000 |
|     6 | Arsh     | 2027-06-18 | 60000 |
|     7 | Pooja    | 2015-10-17 | 90000 |
|     8 | Aisha    | 2029-06-18 | 85000 |
|     9 | Vansh    | 2015-10-17 | 70000 |
|    10 | Arya     | 2020-06-18 | 90000 |
+-------+----------+------------+-------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where ename not like 'a_%';
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
+-------+----------+------------+--------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where ename not like '_r%';
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
+-------+----------+------------+--------+
8 rows in set (0.00 sec)

mysql> SELECT * FROM emp2 where joindate not like '%2015';
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     7 | Pooja    | 2015-10-17 |  90000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|     9 | Vansh    | 2015-10-17 |  70000 |
|    10 | Arya     | 2020-06-18 |  90000 |
+-------+----------+------------+--------+
10 rows in set, 1 warning (0.00 sec)

mysql> SELECT * FROM emp2 where joindate not like '%17';
+-------+----------+------------+--------+
| empno | ename    | joindate   | esal   |
+-------+----------+------------+--------+
|     1 | Raj      | 2010-10-19 |  50000 |
|     2 | Daksh    | 2020-06-19 | 100000 |
|     3 | Raaja    | 2016-10-19 |  50000 |
|     4 | Darshana | 2029-06-19 |   5000 |
|     5 | Sam      | 2015-10-19 |  30000 |
|     6 | Arsh     | 2027-06-18 |  60000 |
|     8 | Aisha    | 2029-06-18 |  85000 |
|    10 | Arya     | 2020-06-18 |  90000 |
+-------+----------+------------+--------+
8 rows in set, 1 warning (0.00 sec)

mysql> 

