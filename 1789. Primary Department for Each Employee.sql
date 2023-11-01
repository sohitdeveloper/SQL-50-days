select employee_id, department_id from Employee e1 where e1.employee_id not in (select employee_id from Employee e where primary_flag = 'Y') 
or e1.primary_flag = 'Y' group by employee_id having count(e1.employee_id) = 1;
