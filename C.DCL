 create user 'Anjana'@'localhost' identified by 'root1234';
Query OK, 0 rows affected (0.13 sec)
show grants for 'Anjana'@'localhost';
+--------------------------------------------+
| Grants for Anjana@localhost                |
+--------------------------------------------+
| GRANT USAGE ON *.* TO `Anjana`@`localhost` |
+--------------------------------------------+
1 row in set (0.00 sec)
grant insert on *.* to 'Anjana'@'localhost';
Query OK, 0 rows affected (0.06 sec)

mysql> show grants for 'Anjana'@'localhost';
+---------------------------------------------+
| Grants for Anjana@localhost                 |
+---------------------------------------------+
| GRANT INSERT ON *.* TO `Anjana`@`localhost` |
+---------------------------------------------+
1 row in set (0.01 sec)
revoke insert on *.* from 'Anjana'@'localhost';
Query OK, 0 rows affected (0.06 sec)

mysql> show grants for 'Anjana'@'localhost';
+--------------------------------------------+
| Grants for Anjana@localhost                |
+--------------------------------------------+
| GRANT USAGE ON *.* TO `Anjana`@`localhost` |
+--------------------------------------------+
1 row in set (0.00 sec)
