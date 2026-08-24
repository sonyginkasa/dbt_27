SELECT * FROM 
{{ source('employee_source', 'emp_details') }}