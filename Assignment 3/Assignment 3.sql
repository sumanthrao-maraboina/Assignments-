CREATE TABLE employee 
(
    employee_id INT(12),
    employee_name varchar(15),
    manager_id INT(12)
    );


insert into employee values(1, 'Boss', 1), (3, 'Alice', 3), (2, 'Bob', 1), (4, 'Daniel', 2), (7, 'Luis', 4), (8, 'Jhon', 3), (9, 'Angela', 8), (77, 'Robert', 1);

select * from employee;

select employee_id from employee where  manager_id=1 and  employee_id!= manager_id union all select employee_id from employee where manager_id in(select employee_id from employee where  manager_id=1 and  employee_id!=manager_id) union all select employee_id from employee where manager_id in (select employee_id from employee where manager_id in(select employee_id from employee where  manager_id=1 and  employee_id!= manager_id));