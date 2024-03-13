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

SQL> create table cstms(id int,name varchar(20),salary int);

Table created.
SQL> insert into cstms values(1,'sam',2000);

1 row created.

SQL> insert into cstms values(2,'manu',2000);

1 row created.

SQL> insert into cstms values(3,'sonu',3000);

1 row created.

SQL> insert into cstms values(4,'raj',3500);

1 row created.

SQL> insert into cstms values(5,'raju',4000);

1 row created.

SQL> select *from cstms;

        ID NAME                     SALARY
---------- -------------------- ----------
         1 sam                        2000
         2 manu                       2000
         3 sonu                       3000
         4 raj                        3500
         5 raju                       4000

SQL> declare
  2  c_id cstms.id%type;
  3  c_name cstms.name%type;
  4  c_salary cstms.salary%type;
  5  cursor c_cstms is
  6  select id,name,salary from cstms;
  7  begin
  8  open c_cstms;
  9  loop
 10  fetch c_cstms into c_id,c_name,c_salary;
 11  exit when c_cstms%notfound;
 12  dbms_output.put_line(c_id||' '||c_name||' '||c_salary);
 13  end loop;
 14  close c_cstms;
 15  end;
 16  /
 
1 sam 2000
2 manu 2000
3 sonu 3000
4 raj 3500
5 raju 4000

PL/SQL procedure successfully completed.

PROGRAM:
SQL> set serveroutput on
SQL> create table customers(id int,name varchar(20),dpmt varchar(20),salary int);

Table created.

SQL> insert into customers values(1,'sam','cs',2000);

1 row created.

SQL> insert into customers values(2,'tam','it',3000);

1 row created.

SQL> insert into customers values(3,'ram','ec',2500);

1 row created.

SQL> insert into customers values(4,'kam','mca',5000);

1 row created.

SQL> declare
  2  total_rows number(2);
  3  begin
  4  update customers
  5  set salary=salary+5000;
  6  if sql%notfound then
  7  dbms_output.put_line('no customers updated');
  8  elsif sql%found then
  9  total_rows:=sql%rowcount;
 10  dbms_output.put_line(total_rows||'customers update');
 11  end if;
 12  end;
 13  /
4customers update

PL/SQL procedure successfully completed.

PROGRAM:
SQL> create or replace trigger salaryupdate
  2  before delete or insert or update on customers
  3  for each row
  4  when(new.id>0)
  5  declare
  6  sal_diff number;
  7  begin
  8  sal_diff:=:new.salary-:old.salary;
  9  dbms_output.put_line('Old salary:'||:old.salary);
 10  dbms_output.put_line('New salary:'||:new.salary);
 11  dbms_output.put_line('Salary difference:'|| sal_diff);
 12  end;
 13  /

Trigger created.

SQL> declare
  2  total_rows number(2);
  3  begin
  4  update customers
  5  set salary=salary+5000;
  6  if sql%notfound then
  7  dbms_output.put_line('no customers updated');
  8  elsif sql%found then
  9  total_rows:=sql%rowcount;
 10  dbms_output.put_line(total_rows||' customers updated');
 11  end if;
 12  end;
 13  /
Old salary:7000
New salary:12000
Salary difference:5000
Old salary:8000
New salary:13000
Salary difference:5000
Old salary:7500
New salary:12500
Salary difference:5000
Old salary:10000
New salary:15000
Salary difference:5000
4 customers updated

PL/SQL procedure successfully completed.

PROGRAM:
SQL> create table employee(employee_no int primary key,name varchar(10),salary int);

Table created.

SQL> insert into employee values(1,'Akhil',40000);

1 row created.

SQL> insert into employee values(2,'Zoya',50000);

1 row created.

SQL> insert into employee values(3,'Nanditha',60000);

1 row created.

SQL> insert into employee values(4,'Archana',70000);

1 row created.

SQL> set serveroutput on
SQL> create or replace trigger Checksalary
  2  before
  3  insert or update on employee
  4  for each row
  5  begin
  6  if:new.salary>3000 then
  7  raise_application_error(-20001,'salary should not be greater than 2000');
  8  end if;
  9  end;
 10  /

Trigger created.

SQL> update employee set salary=4000 where employee_no=2;
update employee set salary=4000 where employee_no=2
       *
ERROR at line 1:
ORA-20001: salary should not be greater than 2000
ORA-06512: at "SYSTEM.CHECKSALARY", line 3
ORA-04088: error during execution of trigger 'SYSTEM.CHECKSALARY'


SQL> update employee set salary=2600 where employee_no=2;

1 row updated.

SQL> select * from employee;

EMPLOYEE_NO NAME           SALARY
----------- ---------- ----------
          1 Akhil           40000
          2 Zoya             2600
          3 Nanditha        60000
          4 Archana         70000

PROGRAM:
SQL>  create table stud(sid int,sname varchar(20),sdpmt varchar(20),marks int);

Table created.

SQL> insert into stud values(1,'sam','cse',20);

1 row created.

SQL>  insert into stud values(2,'tam','it',30);

1 row created.

SQL>  select * from stud;

       SID SNAME                SDPMT                     MARKS
---------- -------------------- -------------------- ----------
         1 sam                  cse                          20
         2 tam                  it                           30

SQL>  create or replace trigger studtrig after insert on stud
  2  begin
  3  dbms_output.put_line('inserted');
  4  end;
  5  /

Trigger created.

SQL> insert into stud values(3,'wam','ec',39);
inserted

1 row created.

SQL> select * from stud;

       SID SNAME                SDPMT                     MARKS
---------- -------------------- -------------------- ----------
         1 sam                  cse                          20
         2 tam                  it                           30
         3 wam                  ec                           39


