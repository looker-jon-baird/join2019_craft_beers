view: geoinfo_city {
  derived_table: {
    sql: SELECT
      CONCAT(geoinfo_zip.primary_city,', ',geoinfo_zip.state)  AS city_state,
      COALESCE(SUM(geoinfo_zip.POPULATION_COUNT ), 0) AS city_population
      FROM craft_beers.geography  AS geoinfo_zip

      GROUP BY 1
      ORDER BY 2 DESC
    ;;
    persist_for: "24 hours"
  }

  dimension: city_state {
    primary_key: yes
    label: "City"
    type: string
    sql: ${TABLE}.city_state ;;
  }

  dimension: city_population {
    type: number
    sql: ${TABLE}.city_population ;;
  }

  measure: total_population {
    type: sum
    sql: ${city_population} ;;
  }

}
