view: deal_disc_quoted_yotta {
  sql_table_name: dbo.DealDisc_Quoted_Yotta ;;

  dimension: business_area_code {
    type: string
    sql: ${TABLE}."Business Area Code" ;;
  }

  dimension: catalog_deal_flag {
    type: string
    sql: ${TABLE}."Catalog Deal Flag" ;;
  }

  dimension: deal_id {
    type: string
    sql: ${TABLE}."Deal ID" ;;
  }

  dimension: deal_version_number_ {
    type: number
    sql: ${TABLE}."Deal Version Number " ;;
  }

  dimension: eclipse_customer_name {
    type: string
    sql: ${TABLE}."Eclipse Customer Name" ;;
  }

  dimension: eclipse_customer_segment_code {
    type: string
    sql: ${TABLE}."Eclipse Customer Segment Code" ;;
  }

  dimension: end_customer_identifier {
    type: string
    sql: ${TABLE}."End Customer Identifier" ;;
  }

  dimension: end_customer_name {
    type: string
    sql: ${TABLE}."End Customer Name" ;;
  }

  dimension: framework_flag {
    type: string
    sql: ${TABLE}."Framework Flag" ;;
  }

  dimension: global_business_unit_description {
    type: string
    sql: ${TABLE}."Global Business Unit Description" ;;
  }

  dimension: manufacturing_product_product_line_identifier {
    type: string
    sql: ${TABLE}."Manufacturing Product Product Line Identifier" ;;
  }

  dimension: miscellaneous_charge_code {
    type: string
    sql: ${TABLE}."Miscellaneous Charge Code" ;;
  }

  dimension: opportunity_identifier {
    type: string
    sql: ${TABLE}."Opportunity Identifier" ;;
  }

  dimension: profit_center_level_0_name {
    type: string
    sql: ${TABLE}."Profit Center Level 0 Name" ;;
  }

  dimension: profit_center_level_1_name {
    type: string
    sql: ${TABLE}."Profit Center Level 1 Name" ;;
  }

  dimension: profit_center_level_2_name {
    type: string
    sql: ${TABLE}."Profit Center Level 2 Name" ;;
  }

  dimension: profit_center_level_3_name {
    type: string
    sql: ${TABLE}."Profit Center Level 3 Name" ;;
  }

  dimension: profit_center_level_4_name {
    type: string
    sql: ${TABLE}."Profit Center Level 4 Name" ;;
  }

  dimension: profit_center_level_5_name {
    type: string
    sql: ${TABLE}."Profit Center Level 5 Name" ;;
  }

  dimension: quote_distribution_fiscal_year_month_display_code {
    type: string
    sql: ${TABLE}."Quote Distribution Fiscal Year Month Display Code" ;;
  }

  dimension: quote_distribution_fiscal_year_quarter_display_code {
    type: string
    sql: ${TABLE}."Quote Distribution Fiscal Year Quarter Display Code" ;;
  }

  dimension: quoted_bdnet_revenue_us_dollar_amount {
    type: number
    sql: ${TABLE}."Quoted BDNet Revenue US Dollar Amount" ;;
  }

  dimension: quoted_cost_of_sales_us_dollar_amount {
    type: number
    sql: ${TABLE}."Quoted Cost of Sales US Dollar Amount" ;;
  }

  dimension: quoted_gross_margin_us_dollar_amount {
    type: number
    sql: ${TABLE}."Quoted Gross Margin US Dollar Amount" ;;
  }

  dimension: quoted_gross_revenue_lp_us_dollar_amount {
    type: number
    sql: ${TABLE}."Quoted Gross Revenue @LP US Dollar Amount" ;;
  }

  dimension: quoted_gross_revenue_ndp_us_dollar_amount {
    type: number
    sql: ${TABLE}."Quoted Gross Revenue @NDP US Dollar Amount" ;;
  }

  dimension: win_loss_status_code {
    type: string
    sql: ${TABLE}."Win Loss Status Code" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      profit_center_level_0_name,
      profit_center_level_1_name,
      profit_center_level_2_name,
      profit_center_level_3_name,
      profit_center_level_4_name,
      profit_center_level_5_name,
      eclipse_customer_name,
      end_customer_name
    ]
  }
}
