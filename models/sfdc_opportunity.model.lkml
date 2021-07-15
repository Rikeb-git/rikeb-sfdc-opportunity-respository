connection: "opportunity_data"

# include all the views
include: "/views/**/*.view"

datagroup: sfdc_opportunity_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  # sql_trigger: SELECT max(snap_date) FROM dbo.PIPELINE_SNAPSHOT ;;
  max_cache_age: "120 hours"
}

persist_with: sfdc_opportunity_default_datagroup

explore: birst_reported_region_map {}

#explore: fiscal_time {}

# explore: pipeline_snapshot {}

# explore: test_product_line {
#   from: ProductLine
# }

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
  join: SubRegion1 {
    from: SubRegion1
    type: left_outer
    sql_on: ${pipeline_snapshot.sub_region1} = ${SubRegion1.SubRegion1} ;;
    relationship: many_to_one
  }
  join: ProductLine {
    from: ProductLine
    type: left_outer
    sql_on: ${pipeline_snapshot.product_line} = ${ProductLine.ProductLine} ;;
    relationship: many_to_one
  }
  # join: fiscal_quarter_year  {
  #   from: fiscal_quarter_year
  #   type: left_outer
  #   sql_on: ${pipeline_snapshot.product_line} = ${fiscal_quarter_year.fiscal_quarter_year} ;;
  #   relationship: many_to_one
  # }
}

explore: fiscal_quarter_year {}
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
