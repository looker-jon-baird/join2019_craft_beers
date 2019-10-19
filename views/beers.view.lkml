view: beers {
  sql_table_name: craft_beers.beers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: abv {
    type: number
    sql: ${TABLE}.abv ;;
  }

  dimension: brewery_id {
    type: number
    sql: ${TABLE}.brewery_id ;;
  }

  dimension: ibu {
    type: number
    sql: ${TABLE}.ibu ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ounces {
    type: number
    sql: ${TABLE}.ounces ;;
  }

  dimension: style {
    type: string
    sql: ${TABLE}.style ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
