project_name: "block-keboola-project_management_essentials"

################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-keboola-project_management_essentials-config"
  export: override_required
}

constant: CONNECTION {
  value: "keboola_block_asana"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "specify"
  export: override_required
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: SCHEMA_NAME {
    value: "@{SCHEMA_NAME}"
  }
}
