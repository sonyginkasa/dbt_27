{{ config(materialized='table') }}

{{ log("this          : " ~ this, info=true) }}
{{ log("this.database : " ~ this.database, info=true) }}
{{ log("this.schema   : " ~ this.schema, info=true) }}
{{ log("this.identifier: " ~ this.identifier, info=true) }}

select * from KITTUDB.KITTUSCHEMA.EMPLOYEE_DATA limit 3