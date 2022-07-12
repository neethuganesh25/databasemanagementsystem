create table emp5(empno int primary key,ename varchar(20),deptno number);
insert into emp5 values(:empno,:ename,:deptno);

select * from emp5;

DECLARE 
VENO EMP5.EMPNO%TYPE:=:empno;
VENAME EMP5.ENAME%TYPE;
VDEPTNO EMP5.DEPTNO%TYPE;
BEGIN 

SELECT EMPNO,ENAME,DEPTNO INTO VENO,VENAME,VDEPTNO FROM EMP5 WHERE EMPNO=VENO;
DBMS_OUTPUT.PUT_LINE('DEPTARTMENT NUMBER IS'||VDEPTNO);
END 

