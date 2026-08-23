select * from {{ source("employee_source", "emp_details") }}
