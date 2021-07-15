# explore: test_product_line {
#   from: ProductLine
# }

view: ProductLine{
  #sql_table_name: dbo.PIPELINE_SNAPSHOT ;;

  derived_table: {
    # persist_for: "480 hours"
    # indexes: ["ProductLine"]
    sql: SELECT DISTINCT Product_Line from ${pipeline_snapshot.SQL_TABLE_NAME} ;;
    #sql: SELECT DISTINCT p.Product_Line from ${pipeline_snapshot.SQL_TABLE_NAME} AS p;;
    #updated by removeing comment in 11th row and commented 12th row
    # sql_trigger_value: SELECT CUR_DATE();;
    persist_for: "480 hours"
    indexes: ["Product_Line"]
  }


  dimension: ProductLine {
    type: string
    sql: ${TABLE}.Product_Line ;;
    bypass_suggest_restrictions: yes
  }
}
