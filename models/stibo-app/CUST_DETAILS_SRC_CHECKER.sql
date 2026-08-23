SELECT * 
FROM {{ source('employee_source', 'customer_details') }}