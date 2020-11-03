view: deal_disc_bmi_offline_pdm {
  sql_table_name: dbo.DealDisc_BMI_Offline_PDM ;;

  dimension: escalation_type {
    type: string
    sql: ${TABLE}.EscalationType ;;
  }

  dimension: price_mechanism_name {
    type: string
    sql: ${TABLE}.Price_Mechanism_Name ;;
  }

  dimension: sales_quote_id {
    type: string
    sql: ${TABLE}.Sales_Quote_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [price_mechanism_name]
  }
}
