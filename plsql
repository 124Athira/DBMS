PROGRAM 1:
SQL> set serveroutput on;
SQL> create function sqarea1(len int)return int is
  2  area int(5,3);
  3  begin
  4  area:=(len*len);
  5  return area;
  6  end;
  7  /

Function created.

SQL> begin
  2  dbms_output.put_line('area='||sqarea1(4));
  3  end;
  4  /
area=16

PL/SQL procedure successfully completed.

PROGRAM 2:
SQL> create or replace function adder(n1 in number,n2 in number)
  2  return number
  3  is
  4  n3 number(8);
  5  begin
  6  n3:=n1+n2;
  7  return n3;
  8  end;
  9  /

Function created.

SQL> declare
  2  n3 number(2);
  3  begin
  4  n3:=adder(11,22);
  5  dbms_output.put_line('Addition is:'||n3);
  6  end;
  7  /
Addition is:33

PL/SQL procedure successfully completed.

PROGRAM 3:
SQL> set serveroutput on
SQL> declare
  2  a number;
  3  b number;
  4  c number;
  5  function findMax(x in number,y in number)
  6  return number
  7  is
  8  z number;
  9  begin
 10  if x>y then
 11  z:=x;
 12  else
 13  z:=y;
 14  end if;
 15  return z;
 16  end;
 17  begin
 18  a:=23;
 19  b:=45;
 20  c:=findMax(a,b);
 21  dbms_output.put_line('maximum of(23,45):'||c);
 22  end;
 23  /
maximum of(23,45):45

PL/SQL procedure successfully completed.

PROGRAM 4:
SQL> create table customers(id int,name varchar(20),dpmt varchar(20),salary int);

Table created.

SQL> insert into customers values(1,'sam','cs',2000);

1 row created.

SQL> insert into customers values(2,'manu','it',3000);

1 row created.

SQL> insert into customers values(3,'ram','ec',2500);

1 row created.

SQL> insert into customers values(4,'venu','mca',5000);

1 row created.

SQL> select *from customers;

        ID NAME                 DPMT                     SALARY
---------- -------------------- -------------------- ----------
         1 sam                  cs                         2000
         2 manu                 it                         3000
         3 ram                  ec                         2500
         4 venu                 mca                        5000

SQL> create or replace function totalCustomers
  2  return number is
  3  total number(2):=0;
  4  begin
  5  select count(*)into total
  6  from customers;
  7  return total;
  8  end;
  9  /

Function created.
SQL> declare
  2  c number(2);
  3  begin
  4  c:=totalCustomers();
  5  dbms_output.put_line('Total no.of Customers:'||c);
  6  end;
  7  /
Total no.of Customers:4

PL/SQL procedure successfully completed.

PROGRAM 5:


