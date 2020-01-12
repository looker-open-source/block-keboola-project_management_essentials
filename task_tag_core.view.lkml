include: "//@{CONFIG_PROJECT_NAME}/task_tag.view"

view: task_tag {
  extends: [task_tag_config]
}

view: task_tag_core {
  sql_table_name: @{SCHEMA_NAME}.TASK_TAG ;;

  dimension: task_snapshot_id {
    label: "Task Tag ID"
    type:  string
    sql: ${TABLE}."TASK_ID"||'_'||${TABLE}."TAG" ;;
    primary_key: yes
  }

  dimension: task_id {
    type: string
    hidden: yes
    sql: ${TABLE}."TASK_ID" ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}."TAG" ;;
  }

  measure: count {
    label: "Tags"
    type: count
    drill_fields: [task.task_id, task.task, tag]
  }
}
