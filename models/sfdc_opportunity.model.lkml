connection: "opportunity_data"

# include all the views
include: "/views/**/*.view"

datagroup: sfdc_opportunity_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "120 hour"
}

persist_with: sfdc_opportunity_default_datagroup

explore: birst_reported_region_map {}

#explore: fiscal_time {}

# explore: pipeline_snapshot {}

explore: pipeline_snapshot {

  sql_always_where: ${pipeline_snapshot.close_date} = ${close_date.calendar_date}
    AND ${pipeline_snapshot.snap_date} = ${snap_date.calendar_date}
    AND ${sales_stage}!='Error';;

  # sql_always_where: ${pipeline_snapshot.close_date} = ${close_date.calendar_date}
  # ;;

  join: close_date {
    from: std_disc_fiscal_time
    type: left_outer
    sql_on: ${pipeline_snapshot.close_date} = ${close_date.calendar_date} ;;
    relationship: many_to_one
  }
  join: snap_date {
    from: std_disc_fiscal_time
    type: left_outer
    sql_on: ${pipeline_snapshot.snap_date} = ${snap_date.calendar_date} ;;
    relationship: many_to_one
  }
}


# explore: std_disc_fiscal_time {
#   join: close_date {
#     from: pipeline_snapshot
#     #type: left_outer
#     #sql_on: ${pipeline_snapshot.close_date} = ${close_date.calendar_date} ;;
#     #sql_on: ${std_disc_fiscal_time.calendar_date} = ${close_date.close_date} ;;
#     sql: RIGHT JOIN pipeline_snapshot  as close_date ON  ${std_disc_fiscal_time.calendar_date} = ${close_date.close_date} ;;
#     relationship: many_to_one
#   }
#   join: snap_date {
#     from: pipeline_snapshot
#     #type: left_outer
#     #sql_on: ${pipeline_snapshot.snap_date} = ${snap_date.calendar_date} ;;
#     #sql_on: ${std_disc_fiscal_time.calendar_date} = ${snap_date.snap_date} ;;
#     sql: RIGHT JOIN pipeline_snapshot as snap_date ON ${std_disc_fiscal_time.calendar_date} = ${snap_date.snap_date} ;;
#     relationship: many_to_one
#   }
# }

# explore: std_disc_fiscal_time_snapshot {
#   join: pipeline_snapshot {
#     type: left_outer
#     sql_on: ${std_disc_fiscal_time_snapshot.calendar_date} = ${pipeline_snapshot.snap_date} ;;
#     relationship: many_to_one
#   }
# }
