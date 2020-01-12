- dashboard: users__tasks_activity
  title: Users & Tasks Activity
  layout: newspaper
  elements:
  - name: 'poweredby'
    type: text
    body_text: <a href="https://keboola.com" target="_blank"> <img src="https://www.keboola.com/data/poweredByKeboola.png"
      width="100%"/>
    row: 0
    col: 18
    width: 6
    height: 2
  - name: 'dashboard'
    type: text
    title_text: ''
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Users & Tasks Activity</b></font>
    body_text: ''
    row: 0
    col: 6
    width: 12
    height: 2
  - name: 'scaffold'
    type: text
    title_text: ''
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Project Management</b></font>
    row: 0
    col: 0
    width: 6
    height: 2
  - title: Marked Incomplete
    name: Marked Incomplete
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task_event.count]
    filters:
      task_event.event: '"marked_incomplete"'
    sorts: [task_event.count desc]
    limit: 500
    row_total: right
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: added_to_project -
              task_event.count, id: added_to_project - task_event.count, name: added_to_project},
          {axisId: added_to_tag - task_event.count, id: added_to_tag - task_event.count,
            name: added_to_tag}, {axisId: assigned - task_event.count, id: assigned
              - task_event.count, name: assigned}, {axisId: attachment_added - task_event.count,
            id: attachment_added - task_event.count, name: attachment_added}, {axisId: comment_added
              - task_event.count, id: comment_added - task_event.count, name: comment_added},
          {axisId: comment_liked - task_event.count, id: comment_liked - task_event.count,
            name: comment_liked}, {axisId: dependency_added - task_event.count, id: dependency_added
              - task_event.count, name: dependency_added}, {axisId: dependency_due_date_changed
              - task_event.count, id: dependency_due_date_changed - task_event.count,
            name: dependency_due_date_changed}, {axisId: dependency_removed - task_event.count,
            id: dependency_removed - task_event.count, name: dependency_removed},
          {axisId: dependent_added - task_event.count, id: dependent_added - task_event.count,
            name: dependent_added}, {axisId: dependent_removed - task_event.count,
            id: dependent_removed - task_event.count, name: dependent_removed}, {
            axisId: due_date_changed - task_event.count, id: due_date_changed - task_event.count,
            name: due_date_changed}, {axisId: due_today - task_event.count, id: due_today
              - task_event.count, name: due_today}, {axisId: duplicated - task_event.count,
            id: duplicated - task_event.count, name: duplicated}, {axisId: enum_custom_field_changed
              - task_event.count, id: enum_custom_field_changed - task_event.count,
            name: enum_custom_field_changed}, {axisId: marked_complete - task_event.count,
            id: marked_complete - task_event.count, name: marked_complete}, {axisId: marked_incomplete
              - task_event.count, id: marked_incomplete - task_event.count, name: marked_incomplete},
          {axisId: name_changed - task_event.count, id: name_changed - task_event.count,
            name: name_changed}, {axisId: notes_changed - task_event.count, id: notes_changed
              - task_event.count, name: notes_changed}, {axisId: section_changed -
              task_event.count, id: section_changed - task_event.count, name: section_changed},
          {axisId: unassigned - task_event.count, id: unassigned - task_event.count,
            name: unassigned}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Avg}]
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: task_event.created_at_date
      User Type: task_event.user_type
      Project: project.project
    row: 2
    col: 6
    width: 3
    height: 2
  - title: Marked Complete
    name: Marked Complete
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task_event.count]
    filters:
      task_event.event: '"marked_complete"'
    sorts: [task_event.count desc]
    limit: 500
    row_total: right
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: added_to_project -
              task_event.count, id: added_to_project - task_event.count, name: added_to_project},
          {axisId: added_to_tag - task_event.count, id: added_to_tag - task_event.count,
            name: added_to_tag}, {axisId: assigned - task_event.count, id: assigned
              - task_event.count, name: assigned}, {axisId: attachment_added - task_event.count,
            id: attachment_added - task_event.count, name: attachment_added}, {axisId: comment_added
              - task_event.count, id: comment_added - task_event.count, name: comment_added},
          {axisId: comment_liked - task_event.count, id: comment_liked - task_event.count,
            name: comment_liked}, {axisId: dependency_added - task_event.count, id: dependency_added
              - task_event.count, name: dependency_added}, {axisId: dependency_due_date_changed
              - task_event.count, id: dependency_due_date_changed - task_event.count,
            name: dependency_due_date_changed}, {axisId: dependency_removed - task_event.count,
            id: dependency_removed - task_event.count, name: dependency_removed},
          {axisId: dependent_added - task_event.count, id: dependent_added - task_event.count,
            name: dependent_added}, {axisId: dependent_removed - task_event.count,
            id: dependent_removed - task_event.count, name: dependent_removed}, {
            axisId: due_date_changed - task_event.count, id: due_date_changed - task_event.count,
            name: due_date_changed}, {axisId: due_today - task_event.count, id: due_today
              - task_event.count, name: due_today}, {axisId: duplicated - task_event.count,
            id: duplicated - task_event.count, name: duplicated}, {axisId: enum_custom_field_changed
              - task_event.count, id: enum_custom_field_changed - task_event.count,
            name: enum_custom_field_changed}, {axisId: marked_complete - task_event.count,
            id: marked_complete - task_event.count, name: marked_complete}, {axisId: marked_incomplete
              - task_event.count, id: marked_incomplete - task_event.count, name: marked_incomplete},
          {axisId: name_changed - task_event.count, id: name_changed - task_event.count,
            name: name_changed}, {axisId: notes_changed - task_event.count, id: notes_changed
              - task_event.count, name: notes_changed}, {axisId: section_changed -
              task_event.count, id: section_changed - task_event.count, name: section_changed},
          {axisId: unassigned - task_event.count, id: unassigned - task_event.count,
            name: unassigned}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Avg}]
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: task_event.created_at_date
      User Type: task_event.user_type
      Project: project.project
    row: 2
    col: 3
    width: 3
    height: 2
  - title: Moved Tasks
    name: Moved Tasks
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task_snapshot.count]
    filters:
      task_snapshot.section_change: 'Yes'
      task_snapshot.previous_section: "-EMPTY"
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date: task_snapshot.snapshot_date
      User Type: task.assignee_type
      Project: project.project
    row: 2
    col: 20
    width: 4
    height: 2
  - title: Completed Tasks
    name: Completed Tasks
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_bar
    fields: [task.assignee, task.count]
    sorts: [task.count desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: task.count, id: task.count,
            name: Tasks}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      task.count: "#49cec1"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: task.completed_at_date
      User Type: task.assignee_type
      Project: project.project
    row: 4
    col: 0
    width: 12
    height: 6
  - title: Completed As Of Today
    name: Completed As Of Today
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task.count]
    sorts: [task.count desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: task.count, id: task.count,
            name: Tasks}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      task.count: "#49cec1"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: task.completed_at_date
      User Type: task.assignee_type
      Project: project.project
    row: 2
    col: 9
    width: 3
    height: 2
  - title: Re-assigned Tasks
    name: Re-assigned Tasks
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task_snapshot.count]
    filters:
      task_snapshot.assignee_change: 'Yes'
      task_snapshot.previous_assignee: "-EMPTY"
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date: task_snapshot.snapshot_date
      User Type: task.assignee_type
      Project: project.project
    row: 2
    col: 12
    width: 4
    height: 2
  - title: Re-scheduled Tasks
    name: Re-scheduled Tasks
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task_snapshot.count]
    filters:
      task_snapshot.due_date_change: 'Yes'
      task_snapshot.previous_due_date: NOT NULL
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date: task_snapshot.snapshot_date
      User Type: task.assignee_type
      Project: project.project
    row: 2
    col: 16
    width: 4
    height: 2
  - title: Users Events
    name: Users Events
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_bar
    fields: [task_event.count, task_event.user, task_event.event]
    pivots: [task_event.event]
    sorts: [task_event.count desc 21, task_event.event 0]
    limit: 500
    row_total: right
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: added_to_project -
              task_event.count, id: added_to_project - task_event.count, name: added_to_project},
          {axisId: added_to_tag - task_event.count, id: added_to_tag - task_event.count,
            name: added_to_tag}, {axisId: assigned - task_event.count, id: assigned
              - task_event.count, name: assigned}, {axisId: attachment_added - task_event.count,
            id: attachment_added - task_event.count, name: attachment_added}, {axisId: comment_added
              - task_event.count, id: comment_added - task_event.count, name: comment_added},
          {axisId: comment_liked - task_event.count, id: comment_liked - task_event.count,
            name: comment_liked}, {axisId: dependency_added - task_event.count, id: dependency_added
              - task_event.count, name: dependency_added}, {axisId: dependency_due_date_changed
              - task_event.count, id: dependency_due_date_changed - task_event.count,
            name: dependency_due_date_changed}, {axisId: dependency_removed - task_event.count,
            id: dependency_removed - task_event.count, name: dependency_removed},
          {axisId: dependent_added - task_event.count, id: dependent_added - task_event.count,
            name: dependent_added}, {axisId: dependent_removed - task_event.count,
            id: dependent_removed - task_event.count, name: dependent_removed}, {
            axisId: due_date_changed - task_event.count, id: due_date_changed - task_event.count,
            name: due_date_changed}, {axisId: due_today - task_event.count, id: due_today
              - task_event.count, name: due_today}, {axisId: duplicated - task_event.count,
            id: duplicated - task_event.count, name: duplicated}, {axisId: enum_custom_field_changed
              - task_event.count, id: enum_custom_field_changed - task_event.count,
            name: enum_custom_field_changed}, {axisId: marked_complete - task_event.count,
            id: marked_complete - task_event.count, name: marked_complete}, {axisId: marked_incomplete
              - task_event.count, id: marked_incomplete - task_event.count, name: marked_incomplete},
          {axisId: name_changed - task_event.count, id: name_changed - task_event.count,
            name: name_changed}, {axisId: notes_changed - task_event.count, id: notes_changed
              - task_event.count, name: notes_changed}, {axisId: section_changed -
              task_event.count, id: section_changed - task_event.count, name: section_changed},
          {axisId: unassigned - task_event.count, id: unassigned - task_event.count,
            name: unassigned}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Avg}]
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: task_event.created_at_date
      User Type: task_event.user_type
      Event: task_event.event
      Project: project.project
    row: 10
    col: 0
    width: 12
    height: 22
  - title: Tasks Re-assignments
    name: Tasks Re-assignments
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_grid
    fields: [task.task, task_snapshot.snapshot_date, task_snapshot.assignee, task_snapshot.previous_assignee]
    filters:
      task_snapshot.assignee_change: 'Yes'
      task_snapshot.previous_assignee: "-EMPTY"
    sorts: [task_snapshot.snapshot_date desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date: task_snapshot.snapshot_date
      User Type: task.assignee_type
      Project: project.project
    row: 4
    col: 12
    width: 12
    height: 6
  - title: Comments
    name: Comments
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task_event.count]
    filters:
      task_event.event_type: comment
    sorts: [task_event.count desc]
    limit: 500
    row_total: right
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: added_to_project -
              task_event.count, id: added_to_project - task_event.count, name: added_to_project},
          {axisId: added_to_tag - task_event.count, id: added_to_tag - task_event.count,
            name: added_to_tag}, {axisId: assigned - task_event.count, id: assigned
              - task_event.count, name: assigned}, {axisId: attachment_added - task_event.count,
            id: attachment_added - task_event.count, name: attachment_added}, {axisId: comment_added
              - task_event.count, id: comment_added - task_event.count, name: comment_added},
          {axisId: comment_liked - task_event.count, id: comment_liked - task_event.count,
            name: comment_liked}, {axisId: dependency_added - task_event.count, id: dependency_added
              - task_event.count, name: dependency_added}, {axisId: dependency_due_date_changed
              - task_event.count, id: dependency_due_date_changed - task_event.count,
            name: dependency_due_date_changed}, {axisId: dependency_removed - task_event.count,
            id: dependency_removed - task_event.count, name: dependency_removed},
          {axisId: dependent_added - task_event.count, id: dependent_added - task_event.count,
            name: dependent_added}, {axisId: dependent_removed - task_event.count,
            id: dependent_removed - task_event.count, name: dependent_removed}, {
            axisId: due_date_changed - task_event.count, id: due_date_changed - task_event.count,
            name: due_date_changed}, {axisId: due_today - task_event.count, id: due_today
              - task_event.count, name: due_today}, {axisId: duplicated - task_event.count,
            id: duplicated - task_event.count, name: duplicated}, {axisId: enum_custom_field_changed
              - task_event.count, id: enum_custom_field_changed - task_event.count,
            name: enum_custom_field_changed}, {axisId: marked_complete - task_event.count,
            id: marked_complete - task_event.count, name: marked_complete}, {axisId: marked_incomplete
              - task_event.count, id: marked_incomplete - task_event.count, name: marked_incomplete},
          {axisId: name_changed - task_event.count, id: name_changed - task_event.count,
            name: name_changed}, {axisId: notes_changed - task_event.count, id: notes_changed
              - task_event.count, name: notes_changed}, {axisId: section_changed -
              task_event.count, id: section_changed - task_event.count, name: section_changed},
          {axisId: unassigned - task_event.count, id: unassigned - task_event.count,
            name: unassigned}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Avg}]
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: task_event.created_at_date
      User Type: task_event.user_type
      Project: project.project
    row: 2
    col: 0
    width: 3
    height: 2
  - title: Tasks w/ Section Change
    name: Tasks w/ Section Change
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_grid
    fields: [task.task, task_snapshot.snapshot_date, task_snapshot.assignee, task_snapshot.section,
      task_snapshot.previous_section]
    filters:
      task_snapshot.section_change: 'Yes'
      task_snapshot.previous_section: "-EMPTY"
    sorts: [task_snapshot.snapshot_date desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date: task_snapshot.snapshot_date
      User Type: task.assignee_type
      Project: project.project
    row: 21
    col: 12
    width: 12
    height: 11
  - title: Tasks w/ Due Date Change
    name: Tasks w/ Due Date Change
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_grid
    fields: [task.task, task_snapshot.snapshot_date, task_snapshot.assignee, task_snapshot.due_date,
      task_snapshot.previous_due_date, task_snapshot.due_date_diff]
    filters:
      task_snapshot.due_date_change: 'Yes'
      task_snapshot.previous_due_date: NOT NULL
    sorts: [task_snapshot.snapshot_date desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      task_snapshot.due_date_diff:
        is_active: true
        palette:
          palette_id: 1ae6cb01-4f01-f462-96f8-7386d5d9f418
          collection_id: legacy
          custom_colors:
          - "#0eaeff"
          - "#ff0c19"
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date: task_snapshot.snapshot_date
      User Type: task.assignee_type
      Project: project.project
    row: 10
    col: 12
    width: 12
    height: 11
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
  - name: User Type
    title: User Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_keboola_project_management_essentials
    explore: project
    listens_to_filters: []
    field: member.user_type
  - name: Event
    title: Event
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_keboola_project_management_essentials
    explore: project
    listens_to_filters: []
    field: task_event.event
  - name: Project
    title: Project
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_keboola_project_management_essentials
    explore: project
    listens_to_filters: []
    field: project.project
