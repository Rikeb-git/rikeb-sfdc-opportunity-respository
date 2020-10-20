view: fiscal_time {
  sql_table_name: dbo.FiscalTime ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: cal_month {
    type: string
    sql: ${TABLE}.CalMonth ;;
  }

  dimension: cal_month_id {
    type: string
    sql: ${TABLE}.CalMonthId ;;
  }

  dimension: calendar_date {
    type: string
    sql: ${TABLE}.CalendarDate ;;
  }

  dimension: calendar_date_id {
    type: string
    sql: ${TABLE}.CalendarDateID ;;
  }

  dimension: calendar_qtr {
    type: string
    sql: ${TABLE}.CalendarQtr ;;
  }

  dimension: calendar_year {
    type: string
    sql: ${TABLE}.CalendarYear ;;
  }

  dimension: created_date {
    type: string
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension: createdby {
    type: string
    sql: ${TABLE}.createdby ;;
  }

  dimension: day_number_in_qtr {
    type: string
    sql: ${TABLE}.DayNumberInQtr ;;
  }

  dimension: day_number_in_year {
    type: string
    sql: ${TABLE}.DayNumberInYear ;;
  }

  dimension: dayof_week {
    type: string
    sql: ${TABLE}.DayofWeek ;;
  }

  dimension: fiscal_cut_off_date {
    type: string
    sql: ${TABLE}.fiscalCutOffDate ;;
  }

  dimension: fiscal_day_ago {
    type: string
    sql: ${TABLE}.FiscalDayAgo ;;
  }

  dimension: fiscal_month_num_in_qtr {
    type: string
    sql: ${TABLE}.FiscalMonthNumInQtr ;;
  }

  dimension: fiscal_month_num_in_year {
    type: string
    sql: ${TABLE}.FiscalMonthNumInYear ;;
  }

  dimension: fiscal_month_year {
    type: string
    sql: ${TABLE}.FiscalMonthYear ;;
  }

  dimension: fiscal_qtr_ago {
    type: string
    sql: ${TABLE}.FiscalQtrAgo ;;
  }

  dimension: fiscal_qtr_seq {
    type: string
    sql: ${TABLE}.FiscalQtrSeq ;;
  }

  dimension: fiscal_quarter_end_date {
    type: string
    sql: ${TABLE}.FiscalQuarterEndDate ;;
  }

  dimension: fiscal_quarter_start_date {
    type: string
    sql: ${TABLE}.FiscalQuarterStartDate ;;
  }

  dimension: fiscal_quarter_year {
    type: string
    sql: ${TABLE}.FiscalQuarterYear ;;
  }

  dimension: fiscal_week_ago {
    type: string
    sql: ${TABLE}.FiscalWeekAgo ;;
  }

  dimension: fiscal_week_num_in_qtr {
    type: string
    sql: ${TABLE}.FiscalWeekNumInQtr ;;
  }

  dimension: fiscal_week_qtr {
    type: string
    sql: ${TABLE}.FiscalWeekQtr ;;
  }

  dimension: fiscal_week_year {
    type: string
    sql: ${TABLE}.FiscalWeekYear ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FiscalYear ;;
  }

  dimension: fiscalweekqtrid {
    type: string
    sql: ${TABLE}.fiscalweekqtrid ;;
  }

  dimension: graceperiod {
    type: string
    sql: ${TABLE}.Graceperiod ;;
  }

  dimension: modified_date {
    type: string
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: modifiedby {
    type: string
    sql: ${TABLE}.Modifiedby ;;
  }

  dimension: qtr_ago_date {
    type: string
    sql: ${TABLE}.QtrAgoDate ;;
  }

  dimension: quaterly_working_days_left {
    type: string
    sql: ${TABLE}.QuaterlyWorkingDaysLeft ;;
  }

  dimension: sapadjusted_date {
    type: string
    sql: ${TABLE}.SAPAdjustedDate ;;
  }

  dimension: weekby_no_daysin_qtr {
    type: string
    sql: ${TABLE}.WeekbyNoDaysinQtr ;;
  }

  dimension: year2agodate {
    type: string
    sql: ${TABLE}.year2agodate ;;
  }

  dimension: year3agodate {
    type: string
    sql: ${TABLE}.year3agodate ;;
  }

  dimension: year_ago_date {
    type: string
    sql: ${TABLE}.YearAgoDate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
