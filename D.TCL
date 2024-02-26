1.     mysql> start TRANSACTION;
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO Employee VALUES (4, 'John Do', 50000),(5, 'Jane Smit', 60000),(6, 'Bo Johnson', 55000);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from Employee;
+--------+-------------+----------+
| Emp_no | E_name      | salary   |
+--------+-------------+----------+
|      1 | John Doe    | 50000.00 |
|      2 | Jane Smith  | 60000.00 |
|      3 | Bob Johnson | 55000.00 |
|      4 | John Do     | 50000.00 |
|      5 | Jane Smit   | 60000.00 |
|      6 | Bo Johnson  | 55000.00 |
|    201 | John        | 50000.00 |
|    202 | UpdatedName | 60000.00 |
|    203 | Bob         | 55000.00 |
|    204 | Charlie     | 70000.00 |
|    205 | David       | 50000.00 |
+--------+-------------+----------+
11 rows in set (0.00 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from Employee;
+--------+-------------+----------+
| Emp_no | E_name      | salary   |
+--------+-------------+----------+
|      1 | John Doe    | 50000.00 |
|      2 | Jane Smith  | 60000.00 |
|      3 | Bob Johnson | 55000.00 |
|    201 | John        | 50000.00 |
|    202 | UpdatedName | 60000.00 |
|    203 | Bob         | 55000.00 |
|    204 | Charlie     | 70000.00 |
|    205 | David       | 50000.00 |
+--------+-------------+----------+
8 rows in set (0.00 sec)

2.    mysql> start TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO Employee VALUES (4, 'John Do', 50000),(5, 'Jane Smit', 60000),(6, 'Bo Johnson', 55000);
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from Employee;
+--------+-------------+----------+
| Emp_no | E_name      | salary   |
+--------+-------------+----------+
|      1 | John Doe    | 50000.00 |
|      2 | Jane Smith  | 60000.00 |
|      3 | Bob Johnson | 55000.00 |
|      4 | John Do     | 50000.00 |
|      5 | Jane Smit   | 60000.00 |
|      6 | Bo Johnson  | 55000.00 |
|    201 | John        | 50000.00 |
|    202 | UpdatedName | 60000.00 |
|    203 | Bob         | 55000.00 |
|    204 | Charlie     | 70000.00 |
|    205 | David       | 50000.00 |
+--------+-------------+----------+
11 rows in set (0.00 sec)

mysql> commit;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from Employee;
+--------+-------------+----------+
| Emp_no | E_name      | salary   |
+--------+-------------+----------+
|      1 | John Doe    | 50000.00 |
|      2 | Jane Smith  | 60000.00 |
|      3 | Bob Johnson | 55000.00 |
|      4 | John Do     | 50000.00 |
|      5 | Jane Smit   | 60000.00 |
|      6 | Bo Johnson  | 55000.00 |
|    201 | John        | 50000.00 |
|    202 | UpdatedName | 60000.00 |
|    203 | Bob         | 55000.00 |
|    204 | Charlie     | 70000.00 |
|    205 | David       | 50000.00 |
+--------+-------------+----------+
11 rows in set (0.00 sec)
