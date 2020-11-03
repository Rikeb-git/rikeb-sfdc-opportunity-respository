view: deal_disc_cpq_ngq_offline_pdm {
  sql_table_name: dbo.DealDisc_CPQ_NGQ_Offline_PDM ;;

  dimension: deal_nr {
    type: string
    sql: ${TABLE}.DEAL_NR ;;
  }

  dimension: escalation_type {
    type: string
    sql: ${TABLE}.Escalation_Type ;;
  }

  dimension: quote_type {
    type: string
    sql: ${TABLE}.QuoteType ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.Version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
