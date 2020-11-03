view: deal_disc_actuals_pdm {
  sql_table_name: dbo.DealDisc_Actuals_PDM ;;

  dimension: at_net_so {
    type: number
    sql: ${TABLE}."At Net SO" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: deal_id {
    type: string
    sql: ${TABLE}.DealID ;;
  }

  dimension: deal_version_number {
    type: string
    sql: ${TABLE}.Deal_Version_Number ;;
  }

  dimension: end_user_name {
    type: string
    sql: ${TABLE}.End_User_Name ;;
  }

  dimension: escalation_type {
    type: string
    sql: ${TABLE}.Escalation_Type ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.Geo ;;
  }

  dimension: gross_margin {
    type: number
    sql: ${TABLE}."Gross Margin" ;;
  }

  dimension: gross_so {
    type: number
    sql: ${TABLE}."Gross SO" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: mccode {
    type: string
    sql: ${TABLE}.MCcode ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: ndp_so {
    type: number
    sql: ${TABLE}."NDP SO" ;;
  }

  dimension: ngq_bmi_pricing_type {
    type: string
    sql: ${TABLE}.NGQ_BMI_Pricing_Type ;;
  }

  dimension: pl {
    type: string
    sql: ${TABLE}.PL ;;
  }

  dimension: pricing_agreement {
    type: string
    sql: ${TABLE}."Pricing Agreement" ;;
  }

  dimension: pricing_touch {
    type: string
    sql: ${TABLE}.Pricing_Touch ;;
  }

  dimension: pricing_type {
    type: string
    sql: ${TABLE}.Pricing_Type ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: rtm {
    type: string
    sql: ${TABLE}.RTM ;;
  }

  dimension: win_loss_status_code {
    type: string
    sql: ${TABLE}.Win_Loss_Status_Code ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [end_user_name]
  }
}
