view: pipeline_snapshot {
  sql_table_name: dbo.PIPELINE_SNAPSHOT ;;

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

  dimension: hpe_opportunity_id {
    type: string
    sql: ${TABLE}.HPE_Opportunity_Id ;;
  }

  dimension: hpe_sub_total {
    type: number
    sql: ${TABLE}.HPE_SUB_TOTAL ;;
  }

  dimension: hpe_sub_total_converted {
    type: number
    sql: ${TABLE}.HPE_SUB_TOTAL_CONVERTED ;;
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
      year
    ]
    sql: ${TABLE}.Snap_Date ;;
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

  dimension: total_opportunity_value_converted {
    type: number
    sql: ${TABLE}.Total_Opportunity_Value_Converted ;;
  }

  dimension: value_converted {
    type: number
    sql: ${TABLE}.Value_Converted ;;
  }

  dimension: won_lost_reason {
    type: string
    sql: ${TABLE}.Won_Lost_Reason ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
