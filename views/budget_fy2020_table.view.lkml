view: budget_fy2020_table {
  sql_table_name: dbo.Budget_FY2020_Table ;;

  dimension: budget {
    type: number
    sql: ${TABLE}.Budget ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}."Product Line" ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: sub_theater {
    type: string
    sql: ${TABLE}."Sub Theater" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
