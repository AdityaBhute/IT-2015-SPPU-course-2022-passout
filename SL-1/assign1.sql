/*NAME:ADITYA BHUTE
CLASS:TEIT
ROLL NO:TEIT_06


﻿***************assignment no 1***************************/
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

********************************Creating Database*********************************

mysql> create database Pract;
Query OK, 1 row affected (0.00 sec)

mysql> use Pract;
Database changed

********************************Creating Table************************************

mysql> create table car(car_no int,model varchar(12),insure_date date);
Query OK, 0 rows affected (0.06 sec)

mysql> desc car;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| car_no      | int(11)     | YES  |     | NULL    |       |
| model       | varchar(12) | YES  |     | NULL    |       |
| insure_date | date        | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc cust;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | int(11)     | YES  |     | NULL    |       |
| cust_name | varchar(30) | YES  |     | NULL    |       |
| lane_no   | int(11)     | YES  |     | NULL    |       |
| adress    | varchar(50) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table accident(reg_no int,date date,location varchar(30),city varchar(20));
Query OK, 0 rows affected (0.06 sec)

mysql> desc accident;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| reg_no   | int(11)     | YES  |     | NULL    |       |
| date     | date        | YES  |     | NULL    |       |
| location | varchar(30) | YES  |     | NULL    |       |
| city     | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table cust add primary key (cust_id);
Query OK, 0 rows affected (0.16 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc cust;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | int(11)     | NO   | PRI | 0       |       |
| cust_name | varchar(30) | YES  |     | NULL    |       |
| lane_no   | int(11)     | YES  |     | NULL    |       |
| adress    | varchar(50) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table accident add primary key (reg_no);
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table car add reg_no int;
Query OK, 0 rows affected (0.19 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc car;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| car_no      | int(11)     | YES  |     | NULL    |       |
| model       | varchar(12) | YES  |     | NULL    |       |
| insure_date | date        | YES  |     | NULL    |       |
| reg_no      | int(11)     | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table car add primary key (reg_no);
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table accident add foreign key (reg_no) references car(reg_no);
Query OK, 0 rows affected (0.17 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc cust;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| cust_id   | int(11)     | NO   | PRI | 0       |       |
| cust_name | varchar(30) | YES  |     | NULL    |       |
| lane_no   | int(11)     | YES  |     | NULL    |       |
| adress    | varchar(50) | YES  |     | NULL    |       |
| city      | varchar(20) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc car;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| car_no      | int(11)     | YES  |     | NULL    |       |
| model       | varchar(12) | YES  |     | NULL    |       |
| insure_date | date        | YES  |     | NULL    |       |
| reg_no      | int(11)     | NO   | PRI | 0       |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc accident;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| reg_no   | int(11)     | NO   | PRI | 0       |       |
| date     | date        | YES  |     | NULL    |       |
| location | varchar(30) | YES  |     | NULL    |       |
| city     | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into cust values(101,'Salim',22415,'Talegaon','Pune');
Query OK, 1 row affected (0.02 sec)

mysql> insert into cust values(102,'Harshal',21415,'Akurdi','Pune');
Query OK, 1 row affected (0.03 sec)

mysql> insert into cust values(103,'Pranav',81155,'chinchwad','Pune');
Query OK, 1 row affected (0.03 sec)

mysql> insert into cust values(104,'Siddhesh',135468,'Chinchwad','Pune');
Query OK, 1 row affected (0.03 sec)

mysql> insert into cust values(105,'Ramesh',95758,'Hinjewadi','Pune');
Query OK, 1 row affected (0.03 sec)

mysql> insert into cust values(106,'Sachin',59851,'Shivaji_Nagar','Pune');
Query OK, 1 row affected (0.03 sec)

mysql> insert into cust values(107,'Suresh',13846,'Pimpri','Pune');
Query OK, 1 row affected (0.03 sec)

mysql> insert into cust values(108,'Ajinkya',34684,'Lonavala','Pune');
Query OK, 1 row affected (0.02 sec)

mysql> insert into cust values(109,'Bhuvi',765465,'Kothrud','Pune');
Query OK, 1 row affected (0.03 sec)

mysql> insert into cust values(110,'Pravin',54565,'Dehu','Pune');
Query OK, 1 row affected (0.02 sec)

mysql> alter table car add phone varchar(10);
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc car;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| car_no      | int(11)     | YES  |     | NULL    |       |
| model       | varchar(12) | YES  |     | NULL    |       |
| insure_date | date        | YES  |     | NULL    |       |
| reg_no      | int(11)     | NO   | PRI | 0       |       |
| phone       | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select * from car;
Empty set (0.00 sec)

mysql> alter table cust add phone varchar(10);
Query OK, 10 rows affected (0.20 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from cust;
+---------+-----------+---------+---------------+------+-------+
| cust_id | cust_name | lane_no | adress        | city | phone |
+---------+-----------+---------+---------------+------+-------+
|     101 | Salim     |   22415 | Talegaon      | Pune | NULL  |
|     102 | Harshal   |   21415 | Akurdi        | Pune | NULL  |
|     103 | Pranav    |   81155 | chinchwad     | Pune | NULL  |
|     104 | Siddhesh  |  135468 | Chinchwad     | Pune | NULL  |
|     105 | Ramesh    |   95758 | Hinjewadi     | Pune | NULL  |
|     106 | Sachin    |   59851 | Shivaji_Nagar | Pune | NULL  |
|     107 | Suresh    |   13846 | Pimpri        | Pune | NULL  |
|     108 | Ajinkya   |   34684 | Lonavala      | Pune | NULL  |
|     109 | Bhuvi     |  765465 | Kothrud       | Pune | NULL  |
|     110 | Pravin    |   54565 | Dehu          | Pune | NULL  |
+---------+-----------+---------+---------------+------+-------+
10 rows in set (0.00 sec)

mysql> update cust set phone='9676543234' where cust_id=101;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from cust;
+---------+-----------+---------+---------------+------+------------+
| cust_id | cust_name | lane_no | adress        | city | phone      |
+---------+-----------+---------+---------------+------+------------+
|     101 | Salim     |   22415 | Talegaon      | Pune | 9676543234 |
|     102 | Harshal   |   21415 | Akurdi        | Pune | NULL       |
|     103 | Pranav    |   81155 | chinchwad     | Pune | NULL       |
|     104 | Siddhesh  |  135468 | Chinchwad     | Pune | NULL       |
|     105 | Ramesh    |   95758 | Hinjewadi     | Pune | NULL       |
|     106 | Sachin    |   59851 | Shivaji_Nagar | Pune | NULL       |
|     107 | Suresh    |   13846 | Pimpri        | Pune | NULL       |
|     108 | Ajinkya   |   34684 | Lonavala      | Pune | NULL       |
|     109 | Bhuvi     |  765465 | Kothrud       | Pune | NULL       |
|     110 | Pravin    |   54565 | Dehu          | Pune | NULL       |
+---------+-----------+---------+---------------+------+------------+
10 rows in set (0.00 sec)

mysql> update cust set phone='9582145780' where cust_id=102;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update cust set phone='9524712590' where cust_id=103;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update cust set phone='8501249853' where cust_id=104;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update cust set phone='9582146720' where cust_id=105;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update cust set phone='6582140247' where cust_id=106;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update cust set phone='2145201477' where cust_id=107;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update cust set phone='5821036985' where cust_id=108;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update cust set phone='8754021450' where cust_id=109;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update cust set phone='9632587410' where cust_id=110;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from cust;
+---------+-----------+---------+---------------+------+------------+
| cust_id | cust_name | lane_no | adress        | city | phone      |
+---------+-----------+---------+---------------+------+------------+
|     101 | Salim     |   22415 | Talegaon      | Pune | 9676543234 |
|     102 | Harshal   |   21415 | Akurdi        | Pune | 9582145780 |
|     103 | Pranav    |   81155 | chinchwad     | Pune | 9524712590 |
|     104 | Siddhesh  |  135468 | Chinchwad     | Pune | 8501249853 |
|     105 | Ramesh    |   95758 | Hinjewadi     | Pune | 9582146720 |
|     106 | Sachin    |   59851 | Shivaji_Nagar | Pune | 6582140247 |
|     107 | Suresh    |   13846 | Pimpri        | Pune | 2145201477 |
|     108 | Ajinkya   |   34684 | Lonavala      | Pune | 5821036985 |
|     109 | Bhuvi     |  765465 | Kothrud       | Pune | 8754021450 |
|     110 | Pravin    |   54565 | Dehu          | Pune | 9632587410 |
+---------+-----------+---------+---------------+------+------------+
10 rows in set (0.00 sec)

mysql> alter table cust drop phone;
Query OK, 10 rows affected (0.16 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from cust;
+---------+-----------+---------+---------------+------+
| cust_id | cust_name | lane_no | adress        | city |
+---------+-----------+---------+---------------+------+
|     101 | Salim     |   22415 | Talegaon      | Pune |
|     102 | Harshal   |   21415 | Akurdi        | Pune |
|     103 | Pranav    |   81155 | chinchwad     | Pune |
|     104 | Siddhesh  |  135468 | Chinchwad     | Pune |
|     105 | Ramesh    |   95758 | Hinjewadi     | Pune |
|     106 | Sachin    |   59851 | Shivaji_Nagar | Pune |
|     107 | Suresh    |   13846 | Pimpri        | Pune |
|     108 | Ajinkya   |   34684 | Lonavala      | Pune |
|     109 | Bhuvi     |  765465 | Kothrud       | Pune |
|     110 | Pravin    |   54565 | Dehu          | Pune |
+---------+-----------+---------+---------------+------+
10 rows in set (0.00 sec)

************************DCL Commands********************************
mysql> grant select,update on cust to Salim;
Query OK, 0 rows affected (0.01 sec)

mysql> revoke select,update on cust from Salim;
Query OK, 0 rows affected (0.00 sec)


