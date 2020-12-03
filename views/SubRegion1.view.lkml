view: SubRegion1 {
  #sql_table_name: dbo.PIPELINE_SNAPSHOT ;;

  derived_table: {
    # sql: SELECT DISTINCT SubRegion1 from ${pipeline_snapshot.SQL_TABLE_NAME} ;;
    sql: SELECT DISTINCT s.SubRegion1 from ${pipeline_snapshot.SQL_TABLE_NAME} AS s;;
    persist_for: "480 hours"
    indexes: ["SubRegion1"]
  }

  dimension: SubRegion1 {
    type: string
    sql: ${TABLE}.SubRegion1 ;;
    bypass_suggest_restrictions: yes
  }
    }
