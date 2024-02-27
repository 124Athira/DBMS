use mca;
Database changed
mysql> create table employee(Emp_no int primary key,E_name varchar(255)not null,E_address varchar(255),E_phn varchar(15),Dept_name varchar(50),Job_id varchar(50),Salary int);
Query OK, 0 rows affected (0.02 sec)
 create table department(Dept_no int primary key,Emp_no int,Emp_name varchar(255),Foreign key(Emp_no)references employee(Emp_no));
Query OK, 0 rows affected (0.04 sec)

mysql> desc employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| Emp_no    | int          | NO   | PRI | NULL    |       |
| E_name    | varchar(255) | NO   |     | NULL    |       |
| E_address | varchar(255) | YES  |     | NULL    |       |
| E_phn     | varchar(15)  | YES  |     | NULL    |       |
| Dept_name | varchar(50)  | YES  |     | NULL    |       |
| Job_id    | varchar(50)  | YES  |     | NULL    |       |
| Salary    | int          | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> desc department;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| Dept_no  | int          | NO   | PRI | NULL    |       |
| Emp_no   | int          | YES  | MUL | NULL    |       |
| Emp_name | varchar(255) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql>  insert into employee values(1,'John','123 main st','555-1234','HR','101',50000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values(2,'Anaswara','456 oak st','555-5678','IT','102',55000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values(6,'Anju','423 oak st','555-5218','Finance','106',55000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee values(4,'Ziyaan','776 deh st','555-5908','Finance','104',65000);
Query OK, 1 row affected (0.00 sec)

mysql> select *from employee;
+--------+----------+-------------+----------+-----------+--------+--------+
| Emp_no | E_name   | E_address   | E_phn    | Dept_name | Job_id | Salary |
+--------+----------+-------------+----------+-----------+--------+--------+
|      1 | John     | 123 main st | 555-1234 | HR        | 101    |  50000 |
|      2 | Anaswara | 456 oak st  | 555-5678 | IT        | 102    |  55000 |
|      4 | Ziyaan   | 776 deh st  | 555-5908 | Finance   | 104    |  65000 |
|      6 | Anju     | 423 oak st  | 555-5218 | Finance   | 106    |  55000 |
+--------+----------+-------------+----------+-----------+--------+--------+
4 rows in set (0.00 sec)

mysql> insert into department values(1,1,'HR');
Query OK, 1 row affected (0.00 sec)

mysql> insert into department values(2,2,'IT');
Query OK, 1 row affected (0.00 sec)

mysql> insert into department values(6,6,'Finance');
Query OK, 1 row affected (0.00 sec)

mysql> insert into department values(4,4,'Finance');
Query OK, 1 row affected (0.00 sec)

mysql> select *from department;
+---------+--------+----------+
| Dept_no | Emp_no | Emp_name |
+---------+--------+----------+
|       1 |      1 | HR       |
|       2 |      2 | IT       |
|       4 |      4 | Finance  |
|       6 |      6 | Finance  |
+---------+--------+----------+
4 rows in set (0.00 sec)

mysql> alter table employee add hiredate date;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| Emp_no    | int          | NO   | PRI | NULL    |       |
| E_name    | varchar(255) | NO   |     | NULL    |       |
| E_address | varchar(255) | YES  |     | NULL    |       |
| E_phn     | varchar(15)  | YES  |     | NULL    |       |
| Dept_name | varchar(50)  | YES  |     | NULL    |       |
| Job_id    | varchar(50)  | YES  |     | NULL    |       |
| Salary    | int          | YES  |     | NULL    |       |
| hiredate  | date         | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)
alter table employee modify column Job_id varchar(50);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| Emp_no    | int          | NO   | PRI | NULL    |       |
| E_name    | varchar(255) | NO   |     | NULL    |       |
| E_address | varchar(255) | YES  |     | NULL    |       |
| E_phn     | varchar(15)  | YES  |     | NULL    |       |
| Dept_name | varchar(50)  | YES  |     | NULL    |       |
| Job_id    | varchar(50)  | YES  |     | NULL    |       |
| Salary    | int          | YES  |     | NULL    |       |
| hiredate  | date         | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table employee rename column Emp_no TO E_no;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| E_no      | int          | NO   | PRI | NULL    |       |
| E_name    | varchar(255) | NO   |     | NULL    |       |
| E_address | varchar(255) | YES  |     | NULL    |       |
| E_phn     | varchar(15)  | YES  |     | NULL    |       |
| Dept_name | varchar(50)  | YES  |     | NULL    |       |
| Job_id    | varchar(50)  | YES  |     | NULL    |       |
| Salary    | int          | YES  |     | NULL    |       |
| hiredate  | date         | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)
alter table employee modify column Job_id varchar(100);
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| E_no      | int          | NO   | PRI | NULL    |       |
| E_name    | varchar(255) | NO   |     | NULL    |       |
| E_address | varchar(255) | YES  |     | NULL    |       |
| E_phn     | varchar(15)  | YES  |     | NULL    |       |
| Dept_name | varchar(50)  | YES  |     | NULL    |       |
| Job_id    | varchar(100) | YES  |     | NULL    |       |
| Salary    | int          | YES  |     | NULL    |       |
| hiredate  | date         | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)
 alter table employee drop column hiredate;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| E_no      | int          | NO   | PRI | NULL    |       |
| E_name    | varchar(255) | NO   |     | NULL    |       |
| E_address | varchar(255) | YES  |     | NULL    |       |
| E_phn     | varchar(15)  | YES  |     | NULL    |       |
| Dept_name | varchar(50)  | YES  |     | NULL    |       |
| Job_id    | varchar(100) | YES  |     | NULL    |       |
| Salary    | int          | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table employee rename to emp;
Query OK, 0 rows affected (0.02 sec)
 drop table department;
Query OK, 0 rows affected (0.01 sec)

mysql> drop table emp;
Query OK, 0 rows affected (0.01 sec)




























































