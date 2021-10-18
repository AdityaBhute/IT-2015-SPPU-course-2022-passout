/*ASSIGNMENT NO.05 (GROUP B)
NAME : ADITYA MUKUND BHUTE
CLASS : TEIT
ROLLNO : TEIT106
AIM:Write and execute suitable database triggers.Consider row level and
statement level triggers.
*****************************************PROGRAM*****************************************************************/
aditya@aditya-HP-Laptop-15q-dy0xxx:~$ sudo mysql
[sudo] password for aditya: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 5
Server version: 5.7.32-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database alum;
Query OK, 1 row affected (0.00 sec)

mysql> use alum;
Database changed
mysql> create table student(rno int, name varchar(20), marks int);              Query OK, 0 rows affected (0.59 sec)

mysql> Insert into student values(1,"Ram",65),(2,"Suresh",90),(3,"Rekha",70),(4,"Radha",50);
Query OK, 4 rows affected (0.11 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> Insert into student values(5,"Atharv",70),(6,"Neeraj",97),(7,"Pushpak",85),(8,"Geeta",45);
Query OK, 4 rows affected (0.13 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------+---------+-------+
| rno  | name    | marks |
+------+---------+-------+
|    1 | Ram     |    65 |
|    2 | Suresh  |    90 |
|    3 | Rekha   |    70 |
|    4 | Radha   |    50 |
|    5 | Atharv  |    70 |
|    6 | Neeraj  |    97 |
|    7 | Pushpak |    85 |
|    8 | Geeta   |    45 |
+------+---------+-------+
8 rows in set (0.00 sec)

mysql> create table alumini(rno int, name varchar(20), marks int);
Query OK, 0 rows affected (0.64 sec)

mysql> select * from alumini;
Empty set (0.00 sec)

mysql> delimiter $
mysql> create trigger alumini_i
    -> after delete on student
    ->  for each row
    ->  begin
    -> insert into alumini values(OLD.rno, OLD.name, OLD.marks);
    -> end $
Query OK, 0 rows affected (0.60 sec)

mysql> delete from student where rno=5;
    -> end $
Query OK, 1 row affected (0.13 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql> select * from student;
    -> end$
+------+---------+-------+
| rno  | name    | marks |
+------+---------+-------+
|    1 | Ram     |    65 |
|    2 | Suresh  |    90 |
|    3 | Rekha   |    70 |
|    4 | Radha   |    50 |
|    6 | Neeraj  |    97 |
|    7 | Pushpak |    85 |
|    8 | Geeta   |    45 |
+------+---------+-------+
7 rows in set (0.00 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql>  select * from alumini;
    -> 
    -> end$
+------+--------+-------+
| rno  | name   | marks |
+------+--------+-------+
|    5 | Atharv |    70 |
+------+--------+-------+
1 row in set (0.00 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql> create table emp(user_id int,name char(20),sal int);
    -> end$
Query OK, 0 rows affected (0.24 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql> insert into emp(user_id,name,sal)values(101,'Chetan',200000);
    -> end$
Query OK, 1 row affected (0.12 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql> insert into emp(user_id,name,sal)values(102,'Reena',100000);
    -> end$
Query OK, 1 row affected (0.03 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql> insert into emp(user_id,name,sal)values(103,'Meher',40000);
    -> end$
Query OK, 1 row affected (0.12 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql> insert into emp(user_id,name,sal)values(104,'Sonal',50000);
    -> end$
Query OK, 1 row affected (0.13 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql> select * from emp;
    -> end$
+---------+--------+--------+
| user_id | name   | sal    |
+---------+--------+--------+
|     101 | Chetan | 200000 |
|     102 | Reena  | 100000 |
|     103 | Meher  |  40000 |
|     104 | Sonal  |  50000 |
+---------+--------+--------+
4 rows in set (0.00 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql> create table transaction_log(user_id int,name char(20),sal int);
    -> end$
Query OK, 0 rows affected (0.33 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql> delimiter $$
mysql> create trigger mytriggerASSIGNMENT 
    -> before delete on emp
    -> for each row
    -> begin
    -> insert into transaction_log values(OLD.user_id,OLD.name,OLD.sal);
    -> end$$
Query OK, 0 rows affected (0.41 sec)

mysql>  delimiter ;
mysql> delete from emp where user_id=101;
Query OK, 1 row affected (0.03 sec)

mysql> select * from emp;
+---------+-------+--------+
| user_id | name  | sal    |
+---------+-------+--------+
|     102 | Reena | 100000 |
|     103 | Meher |  40000 |
|     104 | Sonal |  50000 |
+---------+-------+--------+
3 rows in set (0.00 sec)

mysql> delimiter //
mysql> create trigger mytrigger1
    -> after update on emp
    -> for each row
    -> begin
    -> insert into transaction_log values(OLD.user_id,OLD.name,OLD.sal);
    ->  end//
Query OK, 0 rows affected (0.07 sec)

mysql> delimiter ;
mysql> update emp set sal=sal+1000;
Query OK, 3 rows affected (0.17 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from transaction_log;
+---------+--------+--------+
| user_id | name   | sal    |
+---------+--------+--------+
|     101 | Chetan | 200000 |
|     102 | Reena  | 100000 |
|     103 | Meher  |  40000 |
|     104 | Sonal  |  50000 |
+---------+--------+--------+
4 rows in set (0.01 sec)

mysql>  select * from emp;
+---------+-------+--------+
| user_id | name  | sal    |
+---------+-------+--------+
|     102 | Reena | 101000 |
|     103 | Meher |  41000 |
|     104 | Sonal |  51000 |
+---------+-------+--------+
3 rows in set (0.00 sec)

mysql> delimiter $
mysql> create trigger trigger1
    -> before update on emp
    ->  for each row
    -> begin
    -> insert into transaction_log values(OLD.user_id,OLD.name,OLD.sal);
    -> end$
Query OK, 0 rows affected (0.17 sec)

mysql>  delimiter ;
mysql> update emp set sal=sal+2000;
Query OK, 3 rows affected (0.11 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql>  select * from emp;
+---------+-------+--------+
| user_id | name  | sal    |
+---------+-------+--------+
|     102 | Reena | 103000 |
|     103 | Meher |  43000 |
|     104 | Sonal |  53000 |
+---------+-------+--------+
3 rows in set (0.00 sec)

mysql> create database db3;
Query OK, 1 row affected (0.00 sec)

mysql> use db3;
Database changed
mysql> create table employee(first_name char(20),salary int);
Query OK, 0 rows affected (0.32 sec)

mysql> insert into employee values('Chetna',50000);
Query OK, 1 row affected (0.13 sec)

mysql> insert into employee values('Rajesh',40000);
Query OK, 1 row affected (0.13 sec)

mysql> insert into employee values('Radha',50000);
Query OK, 1 row affected (0.14 sec)

mysql> select * from employee;
+------------+--------+
| first_name | salary |
+------------+--------+
| Chetna     |  50000 |
| Rajesh     |  40000 |
| Radha      |  50000 |
+------------+--------+
3 rows in set (0.00 sec)

mysql> delimiter $$
mysql> create trigger mytrigger
    -> before insert on employee
    -> for each row
    -> if new.salary>40000 then
    -> set new.first_name='Y';
    -> else
    -> set new.first_name='N';
    -> end if;
    -> end$$
Query OK, 0 rows affected (0.07 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'end' at line 1
mysql>  delimiter ;
mysql> insert into employee values('Anuja',40000);
Query OK, 1 row affected (0.12 sec)

mysql> select * from employee;
+------------+--------+
| first_name | salary |
+------------+--------+
| Chetna     |  50000 |
| Rajesh     |  40000 |
| Radha      |  50000 |
| N          |  40000 |
+------------+--------+
4 rows in set (0.00 sec)
mysql> create database cur;
Query OK, 1 row affected (0.00 sec)

mysql> use cur;
Database changed
mysql>  create table employee(ID INT,NAME VARCHAR(30),SALARY INT);
Query OK, 0 rows affected (0.33 sec)

mysql>  INSERT INTO employee values(1,"CHETAN",56778);
Query OK, 1 row affected (0.14 sec)

mysql> INSERT INTO employee values(2,"REENA",36778);
Query OK, 1 row affected (0.12 sec)

mysql> INSERT INTO employee values(3,"KIRTI",36708);
Query OK, 1 row affected (0.12 sec)

mysql> INSERT INTO employee values(4,"NIKITA",46708);
Query OK, 1 row affected (0.03 sec)

mysql> DELIMITER //
mysql> CREATE TRIGGER TRIGG
    -> AFTER INSERT ON employee for each row
    -> BEGIN
    -> INSERT INTO SALARY(ID,SALARY)VALUES(NEW.ID,NEW.SALARY);
    -> END //
Query OK, 0 rows affected (0.19 sec)

mysql> DELIMITER ;
mysql> create table SALARY(ID INT,SALARY INT);
Query OK, 0 rows affected (0.33 sec)

mysql> INSERT INTO employee values(5,"SHREYA",56889);
Query OK, 1 row affected (0.04 sec)

mysql> SELECT * FROM SALARY;
+------+--------+
| ID   | SALARY |
+------+--------+
|    5 |  56889 |
+------+--------+
1 row in set (0.00 sec)

mysql> 


