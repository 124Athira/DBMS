mysql> use mca;
Database changed
mysql> begin;
Query OK, 0 rows affected (0.00 sec)
create table Employe(E_no int primary key,E_name varchar(50) not null,Job varchar(50)not null,Salary int,Dept_no int);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into Employe values(1, 'John Doe', 'Manager', 80000, 1);
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employe values(2, 'Jane Smith', 'Analyst', 60000, 2);
Query OK, 1 row affected (0.00 sec)

mysql> insert into Employe values(3, 'Bob Johnson', 'Clerk', 40000, 1);
Query OK, 1 row affected (0.00 sec)

mysql> select *from Employe;
+------+-------------+---------+--------+---------+
| E_no | E_name      | Job     | Salary | Dept_no |
+------+-------------+---------+--------+---------+
|    1 | John Doe    | Manager |  80000 |       1 |
|    2 | Jane Smith  | Analyst |  60000 |       2 |
|    3 | Bob Johnson | Clerk   |  40000 |       1 |
+------+-------------+---------+--------+---------+
3 rows in set (0.00 sec)

mysql> rolback;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rolback' at line 1
mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> commit;
Query OK, 0 rows affected (0.00 sec)








