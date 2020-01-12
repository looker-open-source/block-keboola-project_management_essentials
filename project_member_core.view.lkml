include: "//@{CONFIG_PROJECT_NAME}/project_member.view"

view: project_member {
  extends: [project_member_config]
}

view: project_member_core {
  sql_table_name: @{SCHEMA_NAME}.PROJECT_USER ;;

  dimension: project_id {
    type: string
    hidden: yes
    sql: ${TABLE}."PROJECT_ID" ;;
  }

  dimension: user_id {
    type: string
    hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    label: "Project Members"
    type: count
    drill_fields: [project.project_id, project.project, member.user_id]
  }
}
