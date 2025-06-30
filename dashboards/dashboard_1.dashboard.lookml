- dashboard: Dashboard 1
  title: dashboard_1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: OT7qLvwmTiYLh7FfaYKZL6
  elements:
  - title: Popular category
    name: Popular category
    model: Sales_dashboard_bigquery
    explore: orders_super
    type: looker_pie
    fields: [sales_super.Category, sum_of_Quantity]
    sorts: [sum_of_Quantity desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: sum_of_Quantity
      type: sum
      _kind_hint: measure
      based_on: orders_super.Quantity
      _type_hint: number
      measure: sum_of_Quantity
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    y_axes: [{label: sum_Quantity, orientation: left, series: [{axisId: sum_Quantity,
            id: sum_Quantity, name: sum_Quantity}], showLabels: true, showValues: true,
        valueFormat: '0,"k"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    series_colors:
      series_field: '#235391'
    column_spacing_ratio: 0
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
  - title: Popular shipmode
    name: Popular shipmode
    model: Sales_dashboard_bigquery
    explore: orders_super
    type: looker_pie
    fields: [sum_of_Quantity, orders_super.Ship_Mode]
    sorts: [sum_of_Quantity desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: sum_of_Quantity
      type: sum
      _kind_hint: measure
      based_on: orders_super.Quantity
      _type_hint: number
      measure: sum_of_Quantity
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    y_axes: [{label: sum_Quantity, orientation: left, series: [{axisId: sum_Quantity,
            id: sum_Quantity, name: sum_Quantity}], showLabels: true, showValues: true,
        valueFormat: '0,"k"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    series_colors:
      series_field: '#235391'
    column_spacing_ratio: 0
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
  - title: Sales by category
    name: Sales by category
    model: Sales_dashboard_bigquery
    explore: orders_super
    type: looker_column
    fields: [sales_super.Category, sum_of_Sales, orders_super.Ship_Mode]
    sorts: [sum_of_Sales desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: sum_of_Sales
      type: sum
      _kind_hint: measure
      based_on: sales_super.Sales
      _type_hint: number
      measure: sum_of_Sales
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    y_axes: [{label: sum_Sales, orientation: left, series: [{axisId: sum_Sales, id: sum_Sales,
            name: sum_Sales}], showLabels: true, showValues: true, valueFormat: '0,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    series_colors:
      series_field: '#235391'
    column_spacing_ratio: 0
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
  - title: Sales by month
    name: Sales by month
    model: Sales_dashboard_bigquery
    explore: orders_super
    type: looker_line
    fields: [sum_of_Sales, month_of_Ship_Date]
    sorts: [sum_of_Sales desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: sum_of_Sales
      type: sum
      _kind_hint: measure
      based_on: sales_super.Sales
      _type_hint: number
      measure: sum_of_Sales
    - category: dimension
      label: month_of_Ship_Date
      type: month
      _kind_hint: dimension
      based_on: orders_super.Ship_Date
      _type_hint: number
      dimension: month_of_Ship_Date
      expression: extract_months(${orders_super.Ship_Date})
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    y_axes: [{label: sum_Sales, orientation: left, series: [{axisId: sum_Sales, id: sum_Sales,
            name: sum_Sales}], showLabels: true, showValues: true, valueFormat: '0,"k"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: month_Ship_Date, orientation: left, series: [{axisId: month_Ship_Date,
            id: month_Ship_Date, name: month_Ship_Date}], showLabels: true, showValues: true,
        valueFormat: '0,"k"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    series_colors:
      series_field: '#235391'
    column_spacing_ratio: 0
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
  - title: Sales by order category
    name: Sales by order category
    model: Sales_dashboard_bigquery
    explore: orders_super
    type: looker_grid
    fields: [sales_super.Category, year_of_Order_Date, sum_of_Sales, sales_super.Sub_Category]
    sorts: [sum_of_Sales desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      label: year_of_Order_Date
      type: year
      _kind_hint: dimension
      based_on: orders_super.Order_Date
      _type_hint: number
      dimension: year_of_Order_Date
      expression: extract_years(${orders_super.Order_Date})
    - category: measure
      label: sum_of_Sales
      type: sum
      _kind_hint: measure
      based_on: sales_super.Sales
      _type_hint: number
      measure: sum_of_Sales
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    y_axes: [{label: year_Order_Date, orientation: left, series: [{axisId: year_Order_Date,
            id: year_Order_Date, name: year_Order_Date}], showLabels: true, showValues: true,
        valueFormat: '0,"k"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: sum_Sales, orientation: left, series: [{axisId: sum_Sales,
            id: sum_Sales, name: sum_Sales}], showLabels: true, showValues: true,
        valueFormat: '0,"k"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    series_colors:
      series_field: '#235391'
    column_spacing_ratio: 0
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
  - title: order by month
    name: order by month
    model: Sales_dashboard_bigquery
    explore: orders_super
    type: looker_line
    fields: [month_of_Order_Date, sum_of_Quantity]
    sorts: [sum_of_Quantity desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      label: month_of_Order_Date
      type: month
      _kind_hint: dimension
      based_on: orders_super.Order_Date
      _type_hint: number
      dimension: month_of_Order_Date
      expression: extract_months(${orders_super.Order_Date})
    - category: measure
      label: sum_of_Quantity
      type: sum
      _kind_hint: measure
      based_on: orders_super.Quantity
      _type_hint: number
      measure: sum_of_Quantity
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    y_axes: [{label: month_Order_Date, orientation: left, series: [{axisId: month_Order_Date,
            id: month_Order_Date, name: month_Order_Date}], showLabels: true, showValues: true,
        valueFormat: '0,"k"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: sum_Quantity, orientation: left, series: [{axisId: sum_Quantity,
            id: sum_Quantity, name: sum_Quantity}], showLabels: true, showValues: true,
        valueFormat: '0,"k"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    series_colors:
      series_field: '#235391'
    column_spacing_ratio: 0
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
  - title: sales by order month
    name: sales by order month
    model: Sales_dashboard_bigquery
    explore: orders_super
    type: looker_column
    fields: [month_of_Order_Date, sum_of_Sales]
    sorts: [sum_of_Sales desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      label: month_of_Order_Date
      type: month
      _kind_hint: dimension
      based_on: orders_super.Order_Date
      _type_hint: number
      dimension: month_of_Order_Date
      expression: extract_months(${orders_super.Order_Date})
    - category: measure
      label: sum_of_Sales
      type: sum
      _kind_hint: measure
      based_on: sales_super.Sales
      _type_hint: number
      measure: sum_of_Sales
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    y_axes: [{label: month_Order_Date, orientation: left, series: [{axisId: month_Order_Date,
            id: month_Order_Date, name: month_Order_Date}], showLabels: true, showValues: true,
        valueFormat: '0,"k"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: sum_Sales, orientation: left, series: [{axisId: sum_Sales,
            id: sum_Sales, name: sum_Sales}], showLabels: true, showValues: true,
        valueFormat: '0,"k"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: '#,##0'
    series_colors:
      series_field: '#235391'
    column_spacing_ratio: 0
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 7
