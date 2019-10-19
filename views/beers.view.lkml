view: beers {
  sql_table_name: craft_beers.beers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: abv {
    type: number
    label: "ABV"
    description: "Alcohol by Volume"
    value_format_name: percent_1
    sql: ${TABLE}.abv ;;
  }

  dimension: brewery_id {
    hidden: yes
    type: number
    sql: ${TABLE}.brewery_id ;;
  }

  dimension: ibu {
    type: number
    label: "IBU"
    description: "International Bitterness Units: a gauge of beer's bitterness; typically range from 5 (low bitterness) to 120 (high bitterness)"
    sql: ${TABLE}.ibu ;;
  }

  dimension: int64_field_0 {
    hidden: yes
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

##### Count Measures #####
  measure: count_beers {
    group_label: "(1) Count Measures"
    label: "Number of Beers"
    type: count
    drill_fields: [id, name]
  }

  measure: count_styles {
    group_label: "(1) Count Measures"
    label: "Number of Distinct Styles"
    type: count_distinct
    sql: ${style} ;;
    drill_fields: [id, name]
  }

##### ABV Measures #####
  measure: average_abv {
    group_label: "(2) ABV Measures"
    label: "Average ABV"
    type: average
    sql: ${abv} ;;
    drill_fields: [id, name]
  }

  measure: max_abv {
    group_label: "(2) ABV Measures"
    label: "Max ABV"
    type: max
    sql: ${abv} ;;
    drill_fields: [id, name]
  }

  measure: min_abv {
    group_label: "(2) ABV Measures"
    label: "Min ABV"
    type: min
    sql: ${abv} ;;
    drill_fields: [id, name]
  }


##### IBU Measures #####
  measure: average_ibu {
    group_label: "(3) IBU Measures"
    label: "Average IBU"
    type: average
    sql: ${ibu} ;;
    drill_fields: [id, name]
  }

  measure: max_ibu {
    group_label: "(3) IBU Measures"
    label: "Max IBU"
    type: max
    sql: ${ibu} ;;
    drill_fields: [id, name]
  }

  measure: min_ibu {
    group_label: "(3) IBU Measures"
    label: "Min IBU"
    type: min
    sql: ${ibu} ;;
    drill_fields: [id, name]
  }
}
