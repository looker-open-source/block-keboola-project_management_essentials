include: "//@{CONFIG_PROJECT_NAME}/task_follower.view"

view: task_follower {
  extends: [task_follower_config]
}

view: task_follower_core {
  sql_table_name: @{SCHEMA_NAME}.TASK_USER ;;

  dimension: task_id {
    type: string
    hidden: yes
    sql: ${TABLE}."TASK_ID" ;;
  }

  dimension: user_id {
    type: string
    hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    label: "Task Followers"
    type: count
    drill_fields: [project.project, task.task, task.task_id, follower.user_id]
  }
}
