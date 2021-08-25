{% macro insert_audits(action_name) %}
delete from dbt_audits where audit_type ='';
insert into DEMO_DB.PUBLIC.dbt_audits (audit_type)
values ('{{action_name}}');
commit;
{% endmacro %}
