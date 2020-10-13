view: birst_reported_region_map {
  sql_table_name: dbo.Birst_Reported_Region_Map ;;

  dimension: area_birst {
    type: string
    sql: ${TABLE}."Area (Birst)" ;;
  }

  dimension: area_formatted {
    type: string
    sql: ${TABLE}."Area (Formatted)" ;;
  }

  dimension: area_reported_region {
    type: string
    sql: ${TABLE}."Area (Reported Region)" ;;
  }

  dimension: areaegi {
    type: string
    sql: ${TABLE}."Area(EGI)" ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.Sort_order ;;
  }

  dimension: sub_theater {
    type: string
    sql: ${TABLE}."Sub Theater" ;;
  }

  dimension: sub_theater_egi {
    type: string
    sql: ${TABLE}."SubTheater (EGI)" ;;
  }

  dimension: sub_theater_egiareaegi {
    type: string
    sql: ${TABLE}."SubTheater (EGI)Area(EGI)" ;;
  }

  dimension: subtheater_egimapping_region {
    type: string
    sql: ${TABLE}.Subtheater_EGImapping_region ;;
  }

  dimension: theater_birst {
    type: string
    sql: ${TABLE}."Theater (Birst)" ;;
  }

  dimension: theater_birstarea_birst {
    type: string
    sql: ${TABLE}."Theater (Birst)Area (Birst)" ;;
  }

  dimension: ww_subtheater {
    type: number
    sql: ${TABLE}."WW Subtheater" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
