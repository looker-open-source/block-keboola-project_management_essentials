- dashboard: overview
  title: Overview
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
  - name: 'scaffold'
    type: text
    title_text: ''
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Project Management</b></font>
    row: 0
    col: 0
    width: 6
    height: 2
  - name: 'dashboard'
    type: text
    title_text: ''
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Overview</b></font>
    body_text: ''
    row: 0
    col: 6
    width: 12
    height: 2
  - title: Projects w/ Open Tasks
    name: Projects w/ Open Tasks
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [project.count]
    filters:
      project.archived: 'No'
      task.count: ">0"
      task.completed: 'No'
    limit: 500
    custom_color_enabled: true
    custom_color: "#1ea8df"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 2
    col: 0
    width: 4
    height: 3
  - title: Projects Past Due
    name: Projects Past Due
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [project.count]
    filters:
      project.archived: 'No'
      project.due_date: before 0 minutes ago
      task.completed: 'No'
    limit: 500
    custom_color_enabled: true
    custom_color: "#ed6168"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 2
    col: 4
    width: 4
    height: 3
  - title: Task Creation Frequency
    name: Task Creation Frequency
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_line
    fields: [task.count, task.created_at_month]
    fill_fields: [task.created_at_month]
    filters:
      task.created_at_month: 6 months
    sorts: [task.created_at_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: task.count, id: task.count,
            name: Tasks}], showLabels: false, showValues: true, unpinAxis: false,
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
      task.count: "#353b49"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 5
  - title: Project Creation Frequency
    name: Project Creation Frequency
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_line
    fields: [project.count, project.created_at_month]
    fill_fields: [project.created_at_month]
    filters:
      project.created_at_month: 6 months
    sorts: [project.created_at_month desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: task.count, id: task.count,
            name: Tasks}], showLabels: false, showValues: true, unpinAxis: false,
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
      task.count: "#353b49"
      project.count: "#1ea8df"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 5
    col: 0
    width: 12
    height: 5
  - title: Tasks w/ No Assignee
    name: Tasks w/ No Assignee
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task.count]
    filters:
      project.archived: 'No'
      task.completed: 'No'
      task.assignee: EMPTY
    limit: 500
    series_types: {}
    listen: {}
    row: 2
    col: 20
    width: 4
    height: 3
  - title: Open Tasks per Assignee (Top 10)
    name: Open Tasks per Assignee (Top 10)
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_bar
    fields: [task.count, task.assignee, task.is_past_due]
    pivots: [task.is_past_due]
    fill_fields: [task.is_past_due]
    filters:
      project.archived: 'No'
      task.completed: 'No'
      task.assignee: "-EMPTY,-NULL"
    sorts: [task.count desc 2, task.is_past_due 0]
    limit: 10
    row_total: right
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: No - task.count, id: No
              - task.count, name: 'No'}, {axisId: Yes - task.count, id: Yes - task.count,
            name: 'Yes'}], showLabels: false, showValues: false, unpinAxis: false,
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
    series_labels:
      No - task.count: On Track
      Yes - task.count: Past Due
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Assignee Type: task.assignee_type
    row: 10
    col: 0
    width: 12
    height: 7
  - title: Past Due Tasks per Assignee (Top 10)
    name: Past Due Tasks per Assignee (Top 10)
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_bar
    fields: [task.count, task.assignee]
    filters:
      project.archived: 'No'
      task.completed: 'No'
      task.assignee: "-EMPTY,-NULL"
      task.is_past_due: 'Yes'
    sorts: [task.count desc]
    limit: 10
    row_total: right
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: No - task.count, id: No
              - task.count, name: 'No'}, {axisId: Yes - task.count, id: Yes - task.count,
            name: 'Yes'}], showLabels: false, showValues: false, unpinAxis: false,
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
      task.count: "#ed6168"
    series_labels:
      No - task.count: On Track
      Yes - task.count: Past Due
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Assignee Type: task.assignee_type
    row: 10
    col: 12
    width: 12
    height: 7
  - title: Open Tasks
    name: Open Tasks
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task.count]
    filters:
      project.archived: 'No'
      task.completed: 'No'
    limit: 500
    series_types: {}
    listen:
      Assignee Type: task.assignee_type
    row: 2
    col: 8
    width: 4
    height: 3
  - title: Tasks Past Due
    name: Tasks Past Due
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task.count]
    filters:
      project.archived: 'No'
      task.completed: 'No'
      task.due_date: before 0 days ago
    limit: 500
    custom_color_enabled: true
    custom_color: "#ed6168"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Assignee Type: task.assignee_type
    row: 2
    col: 12
    width: 4
    height: 3
  - title: Tasks w/ No Due Date
    name: Tasks w/ No Due Date
    model: block_keboola_project_management_essentials
    explore: project
    type: single_value
    fields: [task.count]
    filters:
      project.archived: 'No'
      task.completed: 'No'
      task.due_date: 'NULL'
    limit: 500
    series_types: {}
    listen:
      Assignee Type: task.assignee_type
    row: 2
    col: 16
    width: 4
    height: 3
  - title: 5 Most Active Projects in Last 30 Days
    name: 5 Most Active Projects in Last 30 Days
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_bar
    fields: [task_event.count, project.project]
    filters:
      task_event.event: '"comment_added",assigned'
      task_event.created_at_date: 30 days
    sorts: [task_event.count desc]
    limit: 5
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: task_event.count,
            id: task_event.count, name: Comments &amp; Assignements}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_labels:
      task_event.count: Comments & Assignements
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 17
    col: 0
    width: 12
    height: 7
  - title: 10 Most Active Tasks in Last 30 Days
    name: 10 Most Active Tasks in Last 30 Days
    model: block_keboola_project_management_essentials
    explore: project
    type: looker_bar
    fields: [task_event.count, task.task]
    filters:
      task_event.event: '"comment_added",assigned'
      task_event.created_at_date: 30 days
    sorts: [task_event.count desc]
    limit: 10
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: task_event.count,
            id: task_event.count, name: Comments &amp; Assignements}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_labels:
      task_event.count: Comments & Assignements
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 17
    col: 12
    width: 12
    height: 7
  filters:
  - name: Assignee Type
    title: Assignee Type
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    model: block_keboola_project_management_essentials
    explore: project
    listens_to_filters: []
    field: task.assignee_type
