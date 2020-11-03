view: deal_disc_new_product_mapping {
  sql_table_name: dbo.DealDisc_New_Product_Mapping ;;

  dimension: product_group_new {
    type: string
    sql: ${TABLE}.ProductGroup_New ;;
  }

  dimension: product_line_code {
    type: string
    sql: ${TABLE}.ProductLineCode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
