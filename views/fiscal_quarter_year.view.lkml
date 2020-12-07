# If necessary, uncomment the line below to include explore_source.
# include: "sfdc_opportunity.model.lkml"

view: fiscal_quarter_year {
  derived_table: {
    persist_for: "480 hours"
    indexes: ["fiscal_quarter_year"]
    explore_source: pipeline_snapshot {
      column: fiscal_quarter_year { field: snap_date.fiscal_quarter_year }
    }
  }
  dimension: fiscal_quarter_year {bypass_suggest_restrictions: yes}

}
