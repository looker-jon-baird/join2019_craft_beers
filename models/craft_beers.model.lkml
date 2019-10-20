connection: "lookerdata"

# include all the views
include: "/views/**/*.view"

datagroup: craft_beers_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: craft_beers_default_datagroup

explore: beers {
  label: "Beers & Breweries"

  join: breweries {
    type: left_outer
    relationship: many_to_one
    sql_on: ${beers.brewery_id} = ${breweries.id} ;;
  }

  join: geoinfo_city {
    view_label: "Geographic Information"
    type: left_outer
    relationship: many_to_one
    sql_on: ${breweries.brewery_city_state} = ${geoinfo_city.city_state} ;;
  }
}

explore: geoinfo_zip {
  hidden: yes
}

explore: geoinfo_city {
  hidden: yes
}
