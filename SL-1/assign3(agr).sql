/*
NAME: Aditya Bhute
CLASS: TEIT
ROLL NO= TE_IT06
AIM:Execute the aggregate functions like count, sum, avg etc. on the suitable database. Make use of built in functions according to theneed of the database chosen. Retrieve the data from the database based on time and date functions like now(),date(),day(),time() etc. Use group by and having clauses.*/
-----------------------------------------------------------------------------------------------------------------------------------------------
aditya@aditya-HP-Laptop-15q-dy0xxx:~$ sudo mysql
[sudo] password for aditya: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.7.29-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql> create database ass3;
Query OK, 1 row affected (0.00 sec)
mysql> show databases;
****************************CREATE DATABASE*******************************
mysql> create database assign3;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| assign2            |
| assign3            |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> use assign3;
Database changed

mysql> create table school
    -> (
    -> std_id integer,
    -> std_name varchar(10),
    -> dob date,
    -> fee float);
Query OK, 0 rows affected (0.59 sec)

mysql> insert into school values(1,"Vaishnav",'15-10-17',7000.09),(2,"Daksh",'20-06-18',900.40);
Query OK, 2 rows affected (0.41 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into school values(3,"Aisha",'15-10-17',7000.09),(4,"Arsh",'20-06-18',903.40);
Query OK, 2 rows affected (0.38 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into school values(5,"Ish",'15-10-17',870.09),(6,"Poonam",'20-06-18',953.40);
Query OK, 2 rows affected (0.12 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM school;
+--------+----------+------------+---------+
| std_id | std_name | dob        | fee     |
+--------+----------+------------+---------+
|      1 | Vaishnav | 2015-10-17 | 7000.09 |
|      2 | Daksh    | 2020-06-18 |   900.4 |
|      3 | Aisha    | 2015-10-17 | 7000.09 |
|      4 | Arsh     | 2020-06-18 |   903.4 |
|      5 | Ish      | 2015-10-17 |  870.09 |
|      6 | Poonam   | 2020-06-18 |   953.4 |
+--------+----------+------------+---------+
6 rows in set (0.00 sec)

mysql> select count(std_name) from school;
+-----------------+
| count(std_name) |
+-----------------+
|               6 |
+-----------------+
1 row in set (0.00 sec)

mysql> select count(std_name) from school where std_name like '%a';
+-----------------+
| count(std_name) |
+-----------------+
|               1 |
+-----------------+
1 row in set (0.00 sec)

mysql> select count(std_name) from school where std_name like 'a%';
+-----------------+
| count(std_name) |
+-----------------+
|               2 |
+-----------------+
1 row in set (0.01 sec)

mysql> select count(std_name) from school where std_name like '%a%';
+-----------------+
| count(std_name) |
+-----------------+
|               5 |
+-----------------+
1 row in set (0.00 sec)

mysql> select count(std_name) from school where std_name like '%ai%';
+-----------------+
| count(std_name) |
+-----------------+
|               2 |
+-----------------+
1 row in set (0.00 sec)

mysql> select avg(fee) from school;
+-------------------+
| avg(fee)          |
+-------------------+
| 2937.911631266276 |
+-------------------+
1 row in set (0.00 sec)

mysql> select avg(fee) from school where std_name like '%ai%';
+---------------+
| avg(fee)      |
+---------------+
| 7000.08984375 |
+---------------+
1 row in set (0.00 sec)

mysql> select sum(fee) from school;
+--------------------+
| sum(fee)           |
+--------------------+
| 17627.469787597656 |
+--------------------+
1 row in set (0.00 sec)

mysql> select min(fee) from school;
+-------------------+
| min(fee)          |
+-------------------+
| 870.0900268554688 |
+-------------------+
1 row in set (0.00 sec)

mysql> select max(fee) from school;
+---------------+
| max(fee)      |
+---------------+
| 7000.08984375 |
+---------------+
1 row in set (0.00 sec)

mysql> select dayname("2020-23-04");
+-----------------------+
| dayname("2020-23-04") |
+-----------------------+
| NULL                  |
+-----------------------+
1 row in set, 1 warning (0.00 sec)

mysql> select dayname("2020-04-23");
+-----------------------+
| dayname("2020-04-23") |
+-----------------------+
| Thursday              |
+-----------------------+
1 row in set (0.00 sec)

mysql> select time("2020-09-11");
+--------------------+
| time("2020-09-11") |
+--------------------+
| 00:20:20           |
+--------------------+
1 row in set, 1 warning (0.00 sec)

mysql> select now();
+---------------------+
| now()               |
+---------------------+
| 2020-09-14 21:59:23 |
+---------------------+
1 row in set (0.00 sec)

mysql> select sin(60);
+---------------------+
| sin(60)             |
+---------------------+
| -0.3048106211022167 |
+---------------------+
1 row in set (0.00 sec)

mysql> select abs(-9);
+---------+
| abs(-9) |
+---------+
|       9 |
+---------+
1 row in set (0.00 sec)

mysql> select mod (5,6);
+-----------+
| mod (5,6) |
+-----------+
|         5 |
+-----------+
1 row in set (0.01 sec)

mysql> select sqrt(16);
+----------+
| sqrt(16) |
+----------+
|        4 |
+----------+
1 row in set (0.00 sec)

mysql> select ceil(1147.54);
+---------------+
| ceil(1147.54) |
+---------------+
|          1148 |
+---------------+
1 row in set (0.00 sec)

mysql> select floor(1147.01);
+----------------+
| floor(1147.01) |
+----------------+
|           1147 |
+----------------+
1 row in set (0.00 sec)

mysql> select sign(-4);
+----------+
| sign(-4) |
+----------+
|       -1 |
+----------+
1 row in set (0.00 sec)

mysql> select power(4,2);
+------------+
| power(4,2) |
+------------+
|         16 |
+------------+
1 row in set (0.00 sec)

mysql> select length("Hello");
+-----------------+
| length("Hello") |
+-----------------+
|               5 |
+-----------------+
1 row in set (0.00 sec)

mysql> use assign3;
Database changed
mysql> create table school(std_id int, std_name varchar(10), dob date, city varchar(10));
ERROR 1050 (42S01): Table 'school' already exists
mysql> drop table school;
Query OK, 0 rows affected (0.53 sec)

mysql> create table school(std_id int, std_name varchar(10), dob date, city varchar(10));
Query OK, 0 rows affected (0.41 sec)

mysql>  insert into school values(1,"Vaishnav",'15-10-17','Pune'),(2,"Daksh",'20-06-18','Nashik');
Query OK, 2 rows affected (0.36 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into school values(2,"Aisha",'15-06-17','Pune'),(3,"Arsh",'21-06-18','Nashik');
Query OK, 2 rows affected (0.38 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into school values(5,"Ish",'15-10-17','Pune'),(6,"Poonam",'20-06-18','Nagpur');
Query OK, 2 rows affected (0.37 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql>  select * from school;
+--------+----------+------------+--------+
| std_id | std_name | dob        | city   |
+--------+----------+------------+--------+
|      1 | Vaishnav | 2015-10-17 | Pune   |
|      2 | Daksh    | 2020-06-18 | Nashik |
|      2 | Aisha    | 2015-06-17 | Pune   |
|      3 | Arsh     | 2021-06-18 | Nashik |
|      5 | Ish      | 2015-10-17 | Pune   |
|      6 | Poonam   | 2020-06-18 | Nagpur |
+--------+----------+------------+--------+
6 rows in set (0.00 sec)

mysql> select count(std_id),city from school GROUP BY city;
+---------------+--------+
| count(std_id) | city   |
+---------------+--------+
|             1 | Nagpur |
|             2 | Nashik |
|             3 | Pune   |
+---------------+--------+
3 rows in set (0.00 sec)

mysql> select count(std_id),city from school GROUP BY city having count(std_id=2);
+---------------+--------+
| count(std_id) | city   |
+---------------+--------+
|             1 | Nagpur |
|             2 | Nashik |
|             3 | Pune   |
+---------------+--------+
3 rows in set (0.00 sec)
 
-----------------------------------------------------------------------------------------------------------------------------------------------
CONCLUSION:
We studied the aggregate functions like count, sum, avg etc. in this assignment &used built in functions according to the need of the database chosen.We have also studied time and date functions like now(),date(),day(),time() ,group by and having clauses.
