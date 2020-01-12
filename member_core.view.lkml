include: "//@{CONFIG_PROJECT_NAME}/member.view"

view: member {
  extends: [member_config]
}

view: member_core {
  sql_table_name: @{SCHEMA_NAME}."USER" ;;

  dimension: user_id {
    label: "Member ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension: user {
    label: "Member"
    type: string
    sql: ${TABLE}."USER" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: email_domain {
    type: string
    sql: ${TABLE}."EMAIL_DOMAIN" ;;
  }

  dimension: user_type {
    description: "Defines if user is employee or external person."
    type: string
    sql: ${TABLE}."USER_TYPE" ;;
  }

  measure: count {
    label: "Members"
    type: count
    drill_fields: [user_id, user, project_user.count]
  }
}
