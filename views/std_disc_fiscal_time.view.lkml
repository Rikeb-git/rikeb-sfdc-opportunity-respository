view: std_disc_fiscal_time {
  sql_table_name: dbo.StdDisc_FiscalTime ;;

  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: cal_month {
    type: string
    sql: ${TABLE}.CalMonth ;;
  }

  dimension: cal_month_id {
    type: number
    sql: ${TABLE}.CalMonthId ;;
  }

  dimension_group: calendar {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      week_of_year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CalendarDate ;;
  }

  dimension: calendar_date_id {
    type: number
    sql: ${TABLE}.CalendarDateID ;;
  }

  dimension: calendar_qtr {
    type: string
    sql: ${TABLE}.CalendarQtr ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension: createdby {
    type: string
    sql: ${TABLE}.createdby ;;
  }

  dimension: day_number_in_qtr {
    type: number
    sql: ${TABLE}.DayNumberInQtr ;;
  }

  dimension: day_number_in_year {
    type: number
    sql: ${TABLE}.DayNumberInYear ;;
  }

  dimension: dayof_week {
    type: string
    sql: ${TABLE}.DayofWeek ;;
  }

  dimension_group: fiscal_cut_off {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fiscalCutOffDate ;;
  }

  dimension: fiscal_day_ago {
    type: number
    sql: ${TABLE}.FiscalDayAgo ;;
  }

  dimension: fiscal_month_num_in_qtr {
    type: number
    sql: ${TABLE}.FiscalMonthNumInQtr ;;
  }

  dimension: fiscal_month_num_in_year {
    type: number
    sql: ${TABLE}.FiscalMonthNumInYear ;;
  }

  dimension: fiscal_month_year {
    type: string
    sql: ${TABLE}.FiscalMonthYear ;;
  }

  dimension: fiscal_qtr_ago {
    type: number
    sql: ${TABLE}.FiscalQtrAgo ;;
  }

  dimension: fiscal_qtr_seq {
    type: number
    sql: ${TABLE}.FiscalQtrSeq ;;
  }

  dimension_group: fiscal_quarter_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FiscalQuarterEndDate ;;
  }

  dimension_group: fiscal_quarter_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FiscalQuarterStartDate ;;
  }

  dimension: fiscal_quarter_year {
    type: string
    sql: ${TABLE}.FiscalQuarterYear ;;
    suggest_persist_for: "2 seconds"
  }

  dimension: fiscal_week_ago {
    type: number
    sql: ${TABLE}.FiscalWeekAgo ;;
  }

  dimension: fiscal_week_num_in_qtr {
    type: string
    sql: ${TABLE}.FiscalWeekNumInQtr ;;
    suggest_persist_for: "2 seconds"
  }

  dimension: fiscal_wk_number_in_qtr {
    type: number
    #sql: toint(substring(${TABLE}.FiscalWeekNumInQtr,4,strlen(${TABLE}.FiscalWeekNumInQtr))) ;;
    #sql: substring(${fiscal_week_num_in_qtr}, 3, DATALENGTH(${fiscal_week_num_in_qtr}));;
    sql: cast(substring(${fiscal_week_num_in_qtr}, 3, DATALENGTH(${fiscal_week_num_in_qtr})) as bigint);;
    suggest_persist_for: "2 seconds"
    }

  dimension: fiscal_week_qtr {
    type: string
    sql: ${TABLE}.FiscalWeekQtr ;;
  }

  dimension: fiscal_week_year {
    type: number
    sql: ${TABLE}.FiscalWeekYear ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}.FiscalYear ;;
  }

  dimension: fiscalweekqtrid {
    type: number
    value_format_name: id
    sql: ${TABLE}.fiscalweekqtrid ;;
  }

  dimension_group: graceperiod {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Graceperiod ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: modifiedby {
    type: string
    sql: ${TABLE}.Modifiedby ;;
  }

  dimension_group: qtr_ago {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.QtrAgoDate ;;
  }

  dimension: quaterly_working_days_left {
    type: number
    sql: ${TABLE}.QuaterlyWorkingDaysLeft ;;
  }

  dimension_group: sapadjusted {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SAPAdjustedDate ;;
  }

  dimension: weekby_no_daysin_qtr {
    type: string
    sql: ${TABLE}.WeekbyNoDaysinQtr ;;
  }

  dimension_group: year2agodate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.year2agodate ;;
  }

  dimension_group: year3agodate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.year3agodate ;;
  }

  dimension_group: year_ago {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.YearAgoDate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  parameter: date_granularity {
    type: string
    allowed_value: { value: "Weekly" }
    allowed_value: { value: "Yearly" }
  }

  dimension: date {
    label_from_parameter: date_granularity
    sql:
    CASE
      WHEN {% parameter date_granularity %} = 'Weekly'
        THEN cast(${fiscal_wk_number_in_qtr} as int)
      WHEN {% parameter date_granularity %} = 'Yearly'
        THEN cast(${fiscal_year} as int)
      ELSE NULL
    END ;;
  }
}
