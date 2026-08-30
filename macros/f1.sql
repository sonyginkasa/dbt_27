{% macro show_target() %}
  {{ log("profile_name : " ~ target.profile_name, info=true) }}
  {{ log("name         : " ~ target.name, info=true) }}
  {{ log("schema       : " ~ target.schema, info=true) }}
  {{ log("type         : " ~ target.type, info=true) }}
  {{ log("threads      : " ~ target.threads, info=true) }}
  {{ log("database     : " ~ target.database, info=true) }}
  {{ log("warehouse    : " ~ target.warehouse, info=true) }}
  {{ log("user         : " ~ target.user, info=true) }}
  {{ log("role         : " ~ target.role, info=true) }}
  {{ log("account      : " ~ target.account, info=true) }}
{% endmacro %}