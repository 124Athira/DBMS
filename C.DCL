mysql> use mca;
Database changed
mysql> use mca;
Database changed
mysql> create user 'athira'@'localhost' identified by 'root1234';
Query OK, 0 rows affected (0.05 sec)
mysql> show grants for 'athira'@'localhost';
+--------------------------------------------+
| Grants for athira@localhost                |
+--------------------------------------------+
| GRANT USAGE ON *.* TO `athira`@`localhost` |
+--------------------------------------------+
1 row in set (0.00 sec)

mysql> grant all privileges on departments to 'athira'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> revoke all privileges on departments to 'athira'@'localhost';

mysql> revoke all privileges on departments from 'athira'@'localhost
';
Query OK, 0 rows affected (0.00 sec)

mysql> grant select,update on departments to 'athira'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> revoke update on departments from 'athira'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> show grants for 'athira'@'localhost';
+-------------------------------------------------------------+
| Grants for athira@localhost                                 |
+-------------------------------------------------------------+
| GRANT USAGE ON *.* TO `athira`@`localhost`                  |
| GRANT SELECT ON `mca`.`departments` TO `athira`@`localhost` |
+-------------------------------------------------------------+
2 rows in set (0.00 sec)















