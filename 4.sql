DECLARE
	n number;
	i number:=1;
	tot number:=0;
	cursor emp is select emp_salary from employee112;
	cemp emp%rowtype;
BEGIN
	n:=&n;
	open emp;
	while(i<=n)
	loop
		fetch emp into cemp;
		tot:=tot+cemp.emp_salary;
		i:=i+1;
	end loop;
	DBMS_OUTPUT.PUT_LINE('Total salary of '||n||' is '||tot);
	close emp;
END;
/
