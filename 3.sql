DECLARE
	v_emp employee112%rowtype;
BEGIN
	select * into v_emp from employee112 where emp_id=2;
	DBMS_OUTPUT.PUT_LINE('******************************');
	DBMS_OUTPUT.PUT_LINE('FACULTY NAME : '|| v_emp.emp_name);
	DBMS_OUTPUT.PUT_LINE('JOINING DATE : '||v_emp.emp_join_date);
	DBMS_OUTPUT.PUT_LINE('SALARY : '||v_emp.emp_salary);
	DBMS_OUTPUT.PUT_LINE('*******************************');
END;
/
                                                                                             
