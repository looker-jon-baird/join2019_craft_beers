view: breweries {
  sql_table_name: craft_beers.breweries ;;

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: brewery_name {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  dimension: brewery_city {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }

  dimension: brewery_state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.string_field_3 ;;
  }

  dimension: city_state_key {
    hidden: yes
    sql: CONCAT(${brewery_city},', ',${brewery_state} ;;
  }

  measure: count {
    label: "Number of Breweries"
    type: count
    drill_fields: [id, brewery_name]
  }
}
