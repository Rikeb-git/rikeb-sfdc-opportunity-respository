view: dcl_test{
  derived_table: {

    sql: SELECT 1 as number;;
    # sql_trigger_value: SELECT CUR_DATE();;
    persist_for: "480 hours"
    indexes: ["number"]
  }


  dimension: dim_number {
    type: number
    sql: ${TABLE}.number ;;
  }
}
