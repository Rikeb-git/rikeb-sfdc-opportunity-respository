view: console_view {
  sql_table_name: dbo.console_view ;;

  dimension: allocation {
    type: string
    sql: ${TABLE}.allocation ;;
  }

  dimension: asp_dollar {
    type: string
    sql: ${TABLE}.asp_dollar ;;
  }

  dimension: available {
    type: string
    sql: ${TABLE}.available ;;
  }

  dimension: available_dollar {
    type: string
    sql: ${TABLE}.available_dollar ;;
  }

  dimension: backlog_ic {
    type: string
    sql: ${TABLE}.backlog_ic ;;
  }

  dimension: backlog_ici {
    type: string
    sql: ${TABLE}.backlog_ici ;;
  }

  dimension: backlog_icr {
    type: string
    sql: ${TABLE}.backlog_icr ;;
  }

  dimension: backlog_other {
    type: string
    sql: ${TABLE}.backlog_other ;;
  }

  dimension: backlog_total {
    type: string
    sql: ${TABLE}.backlog_total ;;
  }

  dimension: backlog_total_dollar {
    type: string
    sql: ${TABLE}.backlog_total_dollar ;;
  }

  dimension: backlog_tr {
    type: string
    sql: ${TABLE}.backlog_tr ;;
  }

  dimension: backlog_tr_dollar {
    type: string
    sql: ${TABLE}.backlog_tr_dollar ;;
  }

  dimension: backlog_znc {
    type: string
    sql: ${TABLE}.backlog_znc ;;
  }

  dimension: backlog_zqt {
    type: string
    sql: ${TABLE}.backlog_zqt ;;
  }

  dimension: bu {
    type: string
    sql: ${TABLE}.bu ;;
  }

  dimension: cb_quarantine_backlog {
    type: string
    sql: ${TABLE}.cb_quarantine_backlog ;;
  }

  dimension: clear_by_po {
    type: string
    sql: ${TABLE}.clear_by_po ;;
  }

  dimension: confirmed_supply {
    type: string
    sql: ${TABLE}.confirmed_supply ;;
  }

  dimension: consigned {
    type: string
    sql: ${TABLE}.consigned ;;
  }

  dimension: createdat {
    type: string
    sql: ${TABLE}.createdat ;;
  }

  dimension: cycle_stock {
    type: string
    sql: ${TABLE}.cycle_stock ;;
  }

  dimension: deletedat {
    type: string
    sql: ${TABLE}.deletedat ;;
  }

  dimension: demand_to_go {
    type: string
    sql: ${TABLE}.demand_to_go ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: dp_cover_percentage {
    type: string
    sql: ${TABLE}.dp_cover_percentage ;;
  }

  dimension: dp_ic_cq {
    type: string
    sql: ${TABLE}.dp_ic_cq ;;
  }

  dimension: dp_ic_cq_dollar {
    type: string
    sql: ${TABLE}.dp_ic_cq_dollar ;;
  }

  dimension: dp_ic_m1 {
    type: string
    sql: ${TABLE}.dp_ic_m1 ;;
  }

  dimension: dp_ic_m2 {
    type: string
    sql: ${TABLE}.dp_ic_m2 ;;
  }

  dimension: dp_ic_m3 {
    type: string
    sql: ${TABLE}.dp_ic_m3 ;;
  }

  dimension: dp_ic_nq {
    type: string
    sql: ${TABLE}.dp_ic_nq ;;
  }

  dimension: dp_ic_nq_dollar {
    type: string
    sql: ${TABLE}.dp_ic_nq_dollar ;;
  }

  dimension: dp_ic_nq_plus_1 {
    type: string
    sql: ${TABLE}.dp_ic_nq_plus_1 ;;
  }

  dimension: dp_nq {
    type: string
    sql: ${TABLE}.dp_nq ;;
  }

  dimension: dp_nq_dollar {
    type: string
    sql: ${TABLE}.dp_nq_dollar ;;
  }

  dimension: dp_nq_plus_1 {
    type: string
    sql: ${TABLE}.dp_nq_plus_1 ;;
  }

  dimension: dp_orders_to_go {
    type: string
    sql: ${TABLE}.dp_orders_to_go ;;
  }

  dimension: dp_por {
    type: string
    sql: ${TABLE}.dp_por ;;
  }

  dimension: dp_por_dollar {
    type: string
    sql: ${TABLE}.dp_por_dollar ;;
  }

  dimension: dp_por_load_percentage {
    type: string
    sql: ${TABLE}.dp_por_load_percentage ;;
  }

  dimension: dp_por_ww_totals {
    type: string
    sql: ${TABLE}.dp_por_ww_totals ;;
  }

  dimension: dp_qtr {
    type: string
    sql: ${TABLE}.dp_qtr ;;
  }

  dimension: dp_qtr_dollar {
    type: string
    sql: ${TABLE}.dp_qtr_dollar ;;
  }

  dimension: dp_qtr_plus_rolled {
    type: string
    sql: ${TABLE}.dp_qtr_plus_rolled ;;
  }

  dimension: dp_qtr_plus_rolled_dollar {
    type: string
    sql: ${TABLE}.dp_qtr_plus_rolled_dollar ;;
  }

  dimension: dp_to_go {
    type: string
    sql: ${TABLE}.dp_to_go ;;
  }

  dimension: dp_tr_cq {
    type: string
    sql: ${TABLE}.dp_tr_cq ;;
  }

  dimension: dp_tr_cq_dollar {
    type: string
    sql: ${TABLE}.dp_tr_cq_dollar ;;
  }

  dimension: dp_tr_m1 {
    type: string
    sql: ${TABLE}.dp_tr_m1 ;;
  }

  dimension: dp_tr_m2 {
    type: string
    sql: ${TABLE}.dp_tr_m2 ;;
  }

  dimension: dp_tr_m3 {
    type: string
    sql: ${TABLE}.dp_tr_m3 ;;
  }

  dimension: dp_tr_nq {
    type: string
    sql: ${TABLE}.dp_tr_nq ;;
  }

  dimension: dp_tr_nq_plus_1 {
    type: string
    sql: ${TABLE}.dp_tr_nq_plus_1 ;;
  }

  dimension: eos_date {
    type: string
    sql: ${TABLE}.eos_date ;;
  }

  dimension: esc_dollar {
    type: string
    sql: ${TABLE}.esc_dollar ;;
  }

  dimension: excess_qtr {
    type: string
    sql: ${TABLE}.excess_qtr ;;
  }

  dimension: excess_qtr_dollar {
    type: string
    sql: ${TABLE}.excess_qtr_dollar ;;
  }

  dimension: extra_to_hit_dp {
    type: string
    sql: ${TABLE}.extra_to_hit_dp ;;
  }

  dimension: extra_to_hit_dp_dollar {
    type: string
    sql: ${TABLE}.extra_to_hit_dp_dollar ;;
  }

  dimension: future_alloc_share {
    type: string
    sql: ${TABLE}.future_alloc_share ;;
  }

  dimension: future_alloc_share_percentage {
    type: string
    sql: ${TABLE}.future_alloc_share_percentage ;;
  }

  dimension: future_allocation {
    type: string
    sql: ${TABLE}.future_allocation ;;
  }

  dimension: future_allocation_ww_totals {
    type: string
    sql: ${TABLE}.future_allocation_ww_totals ;;
  }

  dimension: global_planner {
    type: string
    sql: ${TABLE}.global_planner ;;
  }

  dimension: global_rebalance_po {
    type: string
    sql: ${TABLE}.global_rebalance_po ;;
  }

  dimension: in_inspection {
    type: string
    sql: ${TABLE}.in_inspection ;;
  }

  dimension: in_process {
    type: string
    sql: ${TABLE}.in_process ;;
  }

  dimension: in_quarantine {
    type: string
    sql: ${TABLE}.in_quarantine ;;
  }

  dimension: in_rework {
    type: string
    sql: ${TABLE}.in_rework ;;
  }

  dimension: in_transit {
    type: string
    sql: ${TABLE}.in_transit ;;
  }

  dimension: inv_target {
    type: string
    sql: ${TABLE}.inv_target ;;
  }

  dimension: inv_target_dollar {
    type: string
    sql: ${TABLE}.inv_target_dollar ;;
  }

  dimension: life_cycle {
    type: string
    sql: ${TABLE}.life_cycle ;;
  }

  dimension: load_vs_dp {
    type: string
    sql: ${TABLE}.load_vs_dp ;;
  }

  dimension: local_rebalance_po {
    type: string
    sql: ${TABLE}.local_rebalance_po ;;
  }

  dimension: new_order {
    type: string
    sql: ${TABLE}.new_order ;;
  }

  dimension: new_order_dollar {
    type: string
    sql: ${TABLE}.new_order_dollar ;;
  }

  dimension: node {
    type: string
    sql: ${TABLE}.node ;;
  }

  dimension: node_base_num {
    type: string
    sql: ${TABLE}.node_base_num ;;
  }

  dimension: node_name {
    type: string
    sql: ${TABLE}.node_name ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.objective ;;
  }

  dimension: objective_percentage {
    type: string
    sql: ${TABLE}.objective_percentage ;;
  }

  dimension: ocean_sku {
    type: string
    sql: ${TABLE}.ocean_sku ;;
  }

  dimension: on_hand {
    type: string
    sql: ${TABLE}.on_hand ;;
  }

  dimension: on_hand_dollar {
    type: string
    sql: ${TABLE}.on_hand_dollar ;;
  }

  dimension: open_po {
    type: string
    sql: ${TABLE}.open_po ;;
  }

  dimension: open_po_dollar {
    type: string
    sql: ${TABLE}.open_po_dollar ;;
  }

  dimension: open_po_in_qtr {
    type: string
    sql: ${TABLE}.open_po_in_qtr ;;
  }

  dimension: open_po_in_qtr_dollar {
    type: string
    sql: ${TABLE}.open_po_in_qtr_dollar ;;
  }

  dimension: open_po_not_in_transit {
    type: string
    sql: ${TABLE}.open_po_not_in_transit ;;
  }

  dimension: orders_qtd {
    type: string
    sql: ${TABLE}.orders_qtd ;;
  }

  dimension: orders_qtd_dollar {
    type: string
    sql: ${TABLE}.orders_qtd_dollar ;;
  }

  dimension: part_class {
    type: string
    sql: ${TABLE}.part_class ;;
  }

  dimension: part_number {
    type: string
    sql: ${TABLE}.part_number ;;
  }

  dimension: por_ic {
    type: string
    sql: ${TABLE}.por_ic ;;
  }

  dimension: por_tr {
    type: string
    sql: ${TABLE}.por_tr ;;
  }

  dimension: por_tr_dollar {
    type: string
    sql: ${TABLE}.por_tr_dollar ;;
  }

  dimension: predecessor {
    type: string
    sql: ${TABLE}.predecessor ;;
  }

  dimension: pricing_current {
    type: string
    sql: ${TABLE}.pricing_current ;;
  }

  dimension: product_base {
    type: string
    sql: ${TABLE}.product_base ;;
  }

  dimension: product_in_backlog {
    type: string
    sql: ${TABLE}.product_in_backlog ;;
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}.product_line ;;
  }

  dimension: product_new_order {
    type: string
    sql: ${TABLE}.product_new_order ;;
  }

  dimension: proj_qtr_gap {
    type: string
    sql: ${TABLE}.proj_qtr_gap ;;
  }

  dimension: projected_supply {
    type: string
    sql: ${TABLE}.projected_supply ;;
  }

  dimension: promotion {
    type: string
    sql: ${TABLE}.promotion ;;
  }

  dimension: ras_family {
    type: string
    sql: ${TABLE}.ras_family ;;
  }

  dimension: ras_line {
    type: string
    sql: ${TABLE}.ras_line ;;
  }

  dimension: ras_model {
    type: string
    sql: ${TABLE}.ras_model ;;
  }

  dimension: ras_product {
    type: string
    sql: ${TABLE}.ras_product ;;
  }

  dimension: ras_type {
    type: string
    sql: ${TABLE}.ras_type ;;
  }

  dimension: rebalance {
    type: string
    sql: ${TABLE}.rebalance ;;
  }

  dimension: rebalance_dollar {
    type: string
    sql: ${TABLE}.rebalance_dollar ;;
  }

  dimension: receipts_qtd {
    type: string
    sql: ${TABLE}.receipts_qtd ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_basenum {
    type: string
    sql: ${TABLE}.region_basenum ;;
  }

  dimension: regional_planner {
    type: string
    sql: ${TABLE}.regional_planner ;;
  }

  dimension: replacement {
    type: string
    sql: ${TABLE}.replacement ;;
  }

  dimension: rev_dollar {
    type: string
    sql: ${TABLE}.rev_dollar ;;
  }

  dimension: rev_gap_mth {
    type: string
    sql: ${TABLE}.rev_gap_mth ;;
  }

  dimension: rev_gap_mth_dollar {
    type: string
    sql: ${TABLE}.rev_gap_mth_dollar ;;
  }

  dimension: rev_gap_mth_status {
    type: string
    sql: ${TABLE}.rev_gap_mth_status ;;
  }

  dimension: rev_gap_qtr {
    type: string
    sql: ${TABLE}.rev_gap_qtr ;;
  }

  dimension: rev_gap_qtr_dollar {
    type: string
    sql: ${TABLE}.rev_gap_qtr_dollar ;;
  }

  dimension: rev_gap_qtr_status {
    type: string
    sql: ${TABLE}.rev_gap_qtr_status ;;
  }

  dimension: rolled_backlog {
    type: string
    sql: ${TABLE}.rolled_backlog ;;
  }

  dimension: rolled_backlog_dollar {
    type: string
    sql: ${TABLE}.rolled_backlog_dollar ;;
  }

  dimension: rolled_backlog_ww_totals {
    type: string
    sql: ${TABLE}.rolled_backlog_ww_totals ;;
  }

  dimension: safety_stock {
    type: string
    sql: ${TABLE}.safety_stock ;;
  }

  dimension: ships_hold {
    type: string
    sql: ${TABLE}.ships_hold ;;
  }

  dimension: ships_ic_m1 {
    type: string
    sql: ${TABLE}.ships_ic_m1 ;;
  }

  dimension: ships_ic_m2 {
    type: string
    sql: ${TABLE}.ships_ic_m2 ;;
  }

  dimension: ships_ic_m3 {
    type: string
    sql: ${TABLE}.ships_ic_m3 ;;
  }

  dimension: ships_ic_qtd {
    type: string
    sql: ${TABLE}.ships_ic_qtd ;;
  }

  dimension: ships_qtd {
    type: string
    sql: ${TABLE}.ships_qtd ;;
  }

  dimension: ships_qtd_dollar {
    type: string
    sql: ${TABLE}.ships_qtd_dollar ;;
  }

  dimension: ships_tr_m1 {
    type: string
    sql: ${TABLE}.ships_tr_m1 ;;
  }

  dimension: ships_tr_m2 {
    type: string
    sql: ${TABLE}.ships_tr_m2 ;;
  }

  dimension: ships_tr_m3 {
    type: string
    sql: ${TABLE}.ships_tr_m3 ;;
  }

  dimension: ships_tr_qtd {
    type: string
    sql: ${TABLE}.ships_tr_qtd ;;
  }

  dimension: ships_tr_qtd_dollar {
    type: string
    sql: ${TABLE}.ships_tr_qtd_dollar ;;
  }

  dimension: ships_v_dp {
    type: string
    sql: ${TABLE}.ships_v_dp ;;
  }

  dimension: shortage {
    type: string
    sql: ${TABLE}.shortage ;;
  }

  dimension: shortage_cap {
    type: string
    sql: ${TABLE}.shortage_cap ;;
  }

  dimension: shortage_dollar {
    type: string
    sql: ${TABLE}.shortage_dollar ;;
  }

  dimension: shortage_region_flag {
    type: string
    sql: ${TABLE}.shortage_region_flag ;;
  }

  dimension: shortage_status {
    type: string
    sql: ${TABLE}.shortage_status ;;
  }

  dimension: soi {
    type: string
    sql: ${TABLE}.soi ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.supplier ;;
  }

  dimension: supplier_group {
    type: string
    sql: ${TABLE}.supplier_group ;;
  }

  dimension: to_buy_final {
    type: string
    sql: ${TABLE}.to_buy_final ;;
  }

  dimension: to_buy_final_dollar {
    type: string
    sql: ${TABLE}.to_buy_final_dollar ;;
  }

  dimension: to_buy_qty {
    type: string
    sql: ${TABLE}.to_buy_qty ;;
  }

  dimension: to_buy_qty_dollar {
    type: string
    sql: ${TABLE}.to_buy_qty_dollar ;;
  }

  dimension: to_buy_to_target {
    type: string
    sql: ${TABLE}.to_buy_to_target ;;
  }

  dimension: to_buy_to_target_dollar {
    type: string
    sql: ${TABLE}.to_buy_to_target_dollar ;;
  }

  dimension: total_load {
    type: string
    sql: ${TABLE}.total_load ;;
  }

  dimension: total_load_dollar {
    type: string
    sql: ${TABLE}.total_load_dollar ;;
  }

  dimension: unbooked {
    type: string
    sql: ${TABLE}.unbooked ;;
  }

  dimension: unbooked_dollar {
    type: string
    sql: ${TABLE}.unbooked_dollar ;;
  }

  dimension: unbooked_status {
    type: string
    sql: ${TABLE}.unbooked_status ;;
  }

  dimension: updatedat {
    type: string
    sql: ${TABLE}.updatedat ;;
  }

  dimension: ww_asp_dollar {
    type: string
    sql: ${TABLE}.ww_asp_dollar ;;
  }

  dimension: z_quarantine_backlog {
    type: string
    sql: ${TABLE}.z_quarantine_backlog ;;
  }

  measure: count {
    type: count
    drill_fields: [node_name]
  }
}
