include: "//@{CONFIG_PROJECT_NAME}/task_custom_field.view"

view: task_custom_field {
  extends: [task_custom_field_config]
}

view: task_custom_field_core {
  sql_table_name: @{SCHEMA_NAME}.TASK_CUSTOM_FIELD ;;
  drill_fields: [task_custom_field_id]

  dimension: task_custom_field_id {
    label: "Task Custom Field ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."TASK_CUSTOM_FIELD_ID" ;;
  }

  dimension: task_custom_field {
    type: string
    sql: ${TABLE}."TASK_CUSTOM_FIELD" ;;
  }

  dimension: task_custom_field_value {
    type: string
    sql: ${TABLE}."TASK_CUSTOM_FIELD_VALUE" ;;
  }

  dimension: task_id {
    hidden: yes
    type: string
    sql: ${TABLE}."TASK_ID" ;;
  }
}
