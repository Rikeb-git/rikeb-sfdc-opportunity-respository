view: pipeline_snapshot {
  #sql_table_name: dbo.PIPELINE_SNAPSHOT ;;

  derived_table: {
    sql:
      SELECT
       *
      FROM
        dbo.PIPELINE_SNAPSHOT
      where region='EMEA'         ;;
  }

  dimension: account_name_latin_capture {
    type: string
    sql: ${TABLE}.Account_Name_Latin_Capture ;;
  }

  dimension: account_st_id {
    type: number
    sql: ${TABLE}.Account_ST_ID ;;
  }

  dimension: bg_target_segments {
    type: string
    sql: ${TABLE}.BG_Target_Segments ;;
  }

  dimension_group: close {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Close_Date ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: coverage_segmentation {
    type: string
    sql: ${TABLE}.Coverage_Segmentation ;;
  }

  dimension: fiscal_period {
    type: string
    sql: ${TABLE}.Fiscal_Period ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}.Forecast_Category ;;
  }

  dimension: industry_segment {
    type: string
    sql: ${TABLE}.Industry_Segment ;;
  }

  dimension: industry_vertical {
    type: string
    sql: ${TABLE}.Industry_Vertical ;;
  }

  dimension: managed_by {
    type: string
    sql: ${TABLE}.Managed_By ;;
  }

  dimension: market_segmentation {
    type: string
    sql: ${TABLE}.Market_Segmentation ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}.Opportunity_Id ;;
  }

  dimension: opportunity_owner {
    type: string
    sql: ${TABLE}.Opportunity_Owner ;;
  }

  dimension: opportunity_owner_manager {
    type: string
    sql: ${TABLE}.Opportunity_Owner_Manager ;;
  }

  dimension: opportunity_record_type {
    type: string
    sql: ${TABLE}.OPPORTUNITY_RECORD_TYPE ;;
  }

  dimension: opportunity_type {
    type: string
    sql: ${TABLE}.Opportunity_Type ;;
  }

  dimension: owner_company_type {
    type: string
    sql: ${TABLE}.Owner_Company_Type ;;
  }

  dimension: primary_competitor {
    type: string
    sql: ${TABLE}.Primary_Competitor ;;
  }

  dimension: primary_pipeline_owner_user {
    type: string
    sql: ${TABLE}.Primary_Pipeline_Owner_User ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}.Product_Line ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sales_stage {
    type: string
    sql: ${TABLE}.Sales_Stage ;;
  }

  dimension_group: snap {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week,
      day_of_week_index
    ]
    sql: ${TABLE}.Snap_Date ;;
  }

  dimension: until_today {
    type: yesno
    # sql: ${snap_day_of_week_index} <= DAYOFWEEK(CURRENT_DATE)-1 AND ${snap_day_of_week_index} >= 0 ;;
    # sql: ${snap_day_of_week_index} <= DAYOFWEEK(CONVERT (DATE, SYSDATETIME()))-1 AND ${snap_day_of_week_index} >= 0 ;;
    sql: ${snap_day_of_week_index} <= datepart(weekday, CONVERT (DATE, SYSDATETIME()))-1 AND ${snap_day_of_week_index} >= 0 ;;

  }

  dimension: sub_product_line {
    type: string
    sql: ${TABLE}.Sub_Product_Line ;;
  }

  dimension: sub_region1 {
    type: string
    sql: ${TABLE}.SubRegion1 ;;
  }

  dimension: sub_region2 {
    type: string
    sql: ${TABLE}.SubRegion2 ;;
  }

  dimension: sub_total {
    type: number
    sql: ${TABLE}.SUB_TOTAL ;;
  }

  dimension: sub_total_converted {
    type: number
    sql: ${TABLE}.SUB_TOTAL_CONVERTED ;;
  }

  dimension: total_opportunity_value_converted {
    type: number
    sql: ${TABLE}.Total_Opportunity_Value_Converted ;;
  }

  dimension: value_converted {
    type: number
    sql: ${TABLE}.Value_Converted ;;
  }
  dimension: buckets {
    type: tier
    tiers: [0, 25000, 50000, 100000, 250000, 500000, 1000000, 5000000, 10000000]
    style: relational
    sql: ${value_converted} ;;
  }

  dimension: won_lost_reason {
    type: string
    sql: ${TABLE}.Won_Lost_Reason ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: pipeline {
    type: sum
    sql: ${value_converted} ;;
    value_format: "$ 0.00,,\" M\""
    filters: {
      field: forecast_category
      value: "Pipeline"
    }
  }

  measure: upside {
    type: sum
    sql: ${value_converted} ;;
    value_format: "$ 0.00,,\" M\""
    filters: {
      field: forecast_category
      value: "Upside"
    }
  }

  measure: commit {
    type: sum
    sql: ${value_converted} ;;
    value_format: "$ 0.00,,\" M\""
    filters: {
      field: forecast_category
      value: "Commit"
    }
  }

  measure: won {
    type: sum
    sql: ${value_converted} ;;
    value_format: "$ 0.00,,\" M\""
    filters: {
      field: forecast_category
      value: "Won"
    }
  }

  measure: omitted {
    type: sum
    sql: ${value_converted} ;;
    value_format: "$ 0.00,,\" M\""
    filters: {
      field: forecast_category
      value: "Omitted"
    }
  }

  measure: open_pipeline {
    type: sum
    sql:
    CASE WHEN ${forecast_category} = 'Pipeline' OR ${forecast_category} = 'Upside' OR ${forecast_category} = 'Commit'

    THEN ${value_converted}
    ELSE NULL
    END ;;
    value_format: "$ 0.00,,\" M\""
  }

  measure: total_pipeline {
    type: sum
    sql:
    CASE WHEN ${forecast_category} = 'Pipeline' OR ${forecast_category} = 'Upside' OR ${forecast_category} = 'Commit' OR ${forecast_category} = 'Won'

    THEN ${value_converted}
    ELSE NULL
    END ;;
    value_format: "$ 0.00,,\" M\""
  }

  measure: Pipeline_Commit_Won{
    type: sum
    sql:
    CASE WHEN ${forecast_category} = 'Pipeline' OR ${forecast_category} = 'Commit'

    THEN ${value_converted}
    ELSE NULL
    END ;;
    value_format: "$ 0.00,,\" M\""
  }

  measure: valueconverted {
    type: sum
    sql: ${value_converted} ;;
    value_format: "$ 0.00,,\" M\""
  }

  measure: dealcount {
    type: count_distinct
    sql: ${opportunity_id} ;;
  }

  # dimension: geo_drilldown {
  #   sql: ${TABLE}.region ;;
  #   drill_fields: [sub_region1,sub_region2,country]
  # }

  dimension: geo_drilldown {
    sql: ${TABLE}.region ;;
    drill_fields: [sub_region1,sub_region2,country]

    link: {
      label: "Show as line plot" #or whatever label we want
      url: "
      {% assign vis_config = '{
      vis={\"x_axis_gridlines\":false,\"y_axis_gridlines\":true,\"show_view_names\":false,\"show_y_axis_labels\":true,\"show_y_axis_ticks\":true,\"y_axis_tick_density\":\"default\",\"y_axis_tick_density_custom\":5,\"show_x_axis_label\":true,\"show_x_axis_ticks\":true,\"y_axis_scale_mode\":\"linear\",\"x_axis_reversed\":false,\"y_axis_reversed\":false,\"plot_size_by_field\":false,\"trellis\":\"\",\"stacking\":\"normal\",\"limit_displayed_rows\":false,\"legend_position\":\"center\",\"point_style\":\"none\",\"show_value_labels\":false,\"label_density\":25,\"x_axis_scale\":\"auto\",\"y_axis_combined\":true,\"ordering\":\"none\",\"show_null_labels\":false,\"show_totals_labels\":false,\"show_silhouette\":false,\"totals_color\":\"#808080\",\"type\":\"looker_column\",\"defaults_version\":1}
      }' %}
      {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=5000"
    }
  }

  parameter: metric_selector {
    type: string
    allowed_value: {
      label: "Deal Value"
      value: "valueconverted"
    }
    allowed_value: {
      label: "Deal Count"
      value: "dealcount"
    }
  }

  measure: metric {
    label_from_parameter: metric_selector
    type: number
#value_format: "$ 0.00,,\" M\""
value_format:"[>=1000000]$0.00,,\"M\";0"
    sql:
    CASE
    WHEN {% parameter metric_selector %} = 'valueconverted'
    THEN ${valueconverted}
    WHEN {% parameter metric_selector %} = 'dealcount'
    THEN ${dealcount}
    ELSE NULL
    END ;;
    # html: {% if metric_selector._parameter_value == 'valueconverted' %}
    #   {{rendered_value | divided_by: 1000000 | round: 2}} M
    #   {% elsif metric_selector._parameter_value == 'dealcount' %}
    #   {{rendered_value}}
    #   {% else %}
    #   {{rendered_value}}
    #   {% endif %};;
  }
}
