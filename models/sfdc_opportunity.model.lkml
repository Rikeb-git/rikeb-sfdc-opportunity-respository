connection: "opportunity_data"

# include all the views
include: "/views/**/*.view"

datagroup: sfdc_opportunity_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sfdc_opportunity_default_datagroup

explore: birst_reported_region_map {}

explore: budget_fy2020_table {}

explore: console_view {}

explore: pipeline_snapshot {}

explore: pipeline_snapshot_new {}
