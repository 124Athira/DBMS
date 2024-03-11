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


