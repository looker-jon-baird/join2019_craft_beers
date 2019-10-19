view: geography {
  sql_table_name: craft_beers.geography ;;

  dimension: zip_code {
    primary_key: yes
    sql: ${TABLE}.zip ;;
  }

  dimension: city_state_key {
    type: string
    sql: CONCAT(${TABLE}.primary_city,', ',${TABLE}.state) ;;
  }

  dimension: population {
  type: number
  sql: ${TABLE}.POPULATION_COUNT ;;
  }
}

#   dimension: acceptable_cities {
#     type: string
#     sql: ${TABLE}.ACCEPTABLE_CITIES ;;
#   }
#
#   dimension: acs_estimated_households_2011 {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_HOUSEHOLDS_2011 ;;
#   }
#
#   dimension: acs_estimated_households_2011_margin {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_HOUSEHOLDS_2011_MARGIN ;;
#   }
#
#   dimension: acs_estimated_households_2012 {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_HOUSEHOLDS_2012 ;;
#   }
#
#   dimension: acs_estimated_households_2012_margin {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_HOUSEHOLDS_2012_MARGIN ;;
#   }
#
#   dimension: acs_estimated_households_2013 {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_HOUSEHOLDS_2013 ;;
#   }
#
#   dimension: acs_estimated_households_2013_margin {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_HOUSEHOLDS_2013_MARGIN ;;
#   }
#
#   dimension: acs_estimated_households_2014 {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_HOUSEHOLDS_2014 ;;
#   }
#
#   dimension: acs_estimated_households_2014_margin {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_HOUSEHOLDS_2014_MARGIN ;;
#   }
#
#   dimension: acs_estimated_population_2011 {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_POPULATION_2011 ;;
#   }
#
#   dimension: acs_estimated_population_2011_margin {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_POPULATION_2011_MARGIN ;;
#   }
#
#   dimension: acs_estimated_population_2012 {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_POPULATION_2012 ;;
#   }
#
#   dimension: acs_estimated_population_2012_margin {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_POPULATION_2012_MARGIN ;;
#   }
#
#   dimension: acs_estimated_population_2013 {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_POPULATION_2013 ;;
#   }
#
#   dimension: acs_estimated_population_2013_margin {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_POPULATION_2013_MARGIN ;;
#   }
#
#   dimension: acs_estimated_population_2014 {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_POPULATION_2014 ;;
#   }
#
#   dimension: acs_estimated_population_2014_margin {
#     type: number
#     sql: ${TABLE}.ACS_ESTIMATED_POPULATION_2014_MARGIN ;;
#   }
#
#   dimension: american_indian_or_alaskan_native {
#     type: number
#     sql: ${TABLE}.AMERICAN_INDIAN_OR_ALASKAN_NATIVE ;;
#   }
#
#   dimension: approximate_latitude {
#     type: number
#     sql: ${TABLE}.APPROXIMATE_LATITUDE ;;
#   }
#
#   dimension: approximate_longitude {
#     type: number
#     sql: ${TABLE}.APPROXIMATE_LONGITUDE ;;
#   }
#
#   dimension: area_codes {
#     type: string
#     sql: ${TABLE}.AREA_CODES ;;
#   }
#
#   dimension: area_land {
#     type: number
#     sql: ${TABLE}.AREA_LAND ;;
#   }
#
#   dimension: asian {
#     type: number
#     sql: ${TABLE}.ASIAN ;;
#   }
#
#   dimension: black_or_african_american {
#     type: number
#     sql: ${TABLE}.BLACK_OR_AFRICAN_AMERICAN ;;
#   }
#
#   dimension: country {
#     type: string
#     map_layer_name: countries
#     sql: ${TABLE}.COUNTRY ;;
#   }
#
#   dimension: county {
#     type: string
#     sql: ${TABLE}.COUNTY ;;
#   }
#
#   dimension: decommissioned {
#     type: number
#     sql: ${TABLE}.DECOMMISSIONED ;;
#   }
#
#   dimension: housing_count {
#     type: number
#     sql: ${TABLE}.HOUSING_COUNT ;;
#   }
#
#   dimension: internal_point_latitude {
#     type: number
#     sql: ${TABLE}.INTERNAL_POINT_LATITUDE ;;
#   }
#
#   dimension: internal_point_longitude {
#     type: string
#     sql: ${TABLE}.INTERNAL_POINT_LONGITUDE ;;
#   }
#
#   dimension: irs_estimated_households_2005 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_HOUSEHOLDS_2005 ;;
#   }
#
#   dimension: irs_estimated_households_2006 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_HOUSEHOLDS_2006 ;;
#   }
#
#   dimension: irs_estimated_households_2007 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_HOUSEHOLDS_2007 ;;
#   }
#
#   dimension: irs_estimated_households_2008 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_HOUSEHOLDS_2008 ;;
#   }
#
#   dimension: irs_estimated_households_2009 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_HOUSEHOLDS_2009 ;;
#   }
#
#   dimension: irs_estimated_households_2010 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_HOUSEHOLDS_2010 ;;
#   }
#
#   dimension: irs_estimated_households_2011 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_HOUSEHOLDS_2011 ;;
#   }
#
#   dimension: irs_estimated_households_2012 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_HOUSEHOLDS_2012 ;;
#   }
#
#   dimension: irs_estimated_households_2013 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_HOUSEHOLDS_2013 ;;
#   }
#
#   dimension: irs_estimated_households_2014 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_HOUSEHOLDS_2014 ;;
#   }
#
#   dimension: irs_estimated_population_2005 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_POPULATION_2005 ;;
#   }
#
#   dimension: irs_estimated_population_2006 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_POPULATION_2006 ;;
#   }
#
#   dimension: irs_estimated_population_2007 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_POPULATION_2007 ;;
#   }
#
#   dimension: irs_estimated_population_2008 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_POPULATION_2008 ;;
#   }
#
#   dimension: irs_estimated_population_2009 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_POPULATION_2009 ;;
#   }
#
#   dimension: irs_estimated_population_2010 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_POPULATION_2010 ;;
#   }
#
#   dimension: irs_estimated_population_2011 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_POPULATION_2011 ;;
#   }
#
#   dimension: irs_estimated_population_2012 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_POPULATION_2012 ;;
#   }
#
#   dimension: irs_estimated_population_2013 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_POPULATION_2013 ;;
#   }
#
#   dimension: irs_estimated_population_2014 {
#     type: number
#     sql: ${TABLE}.IRS_ESTIMATED_POPULATION_2014 ;;
#   }
#
#   dimension: latitude_max {
#     type: number
#     sql: ${TABLE}.LATITUDE_MAX ;;
#   }
#
#   dimension: latitude_min {
#     type: number
#     sql: ${TABLE}.LATITUDE_MIN ;;
#   }
#
#   dimension: longitude_max {
#     type: number
#     sql: ${TABLE}.LONGITUDE_MAX ;;
#   }
#
#   dimension: longitude_min {
#     type: number
#     sql: ${TABLE}.LONGITUDE_MIN ;;
#   }
#
#   dimension: median_earnings_past_year {
#     type: number
#     sql: ${TABLE}.MEDIAN_EARNINGS_PAST_YEAR ;;
#   }
#
#   dimension: median_gross_rent {
#     type: number
#     sql: ${TABLE}.MEDIAN_GROSS_RENT ;;
#   }
#
#   dimension: median_home_value {
#     type: number
#     sql: ${TABLE}.MEDIAN_HOME_VALUE ;;
#   }
#
#   dimension: median_household_income {
#     type: number
#     sql: ${TABLE}.MEDIAN_HOUSEHOLD_INCOME ;;
#   }
#
#   dimension: native_hawaiian_and_other_pacific_islander {
#     type: number
#     sql: ${TABLE}.NATIVE_HAWAIIAN_AND_OTHER_PACIFIC_ISLANDER ;;
#   }
#
#   dimension: other_race {
#     type: number
#     sql: ${TABLE}.OTHER_RACE ;;
#   }
#
#   dimension: percent_bachelors_degree {
#     type: number
#     sql: ${TABLE}.PERCENT_BACHELORS_DEGREE ;;
#   }
#
#   dimension: percent_graduate_degree {
#     type: number
#     sql: ${TABLE}.PERCENT_GRADUATE_DEGREE ;;
#   }
#
#   dimension: percent_high_school_graduate {
#     type: number
#     sql: ${TABLE}.PERCENT_HIGH_SCHOOL_GRADUATE ;;
#   }
#
#   dimension: percent_population_in_poverty {
#     type: number
#     sql: ${TABLE}.PERCENT_POPULATION_IN_POVERTY ;;
#   }
#
#   dimension: polygon_offset_latitude {
#     type: number
#     sql: ${TABLE}.POLYGON_OFFSET_LATITUDE ;;
#   }
#
#   dimension: polygon_offset_longitude {
#     type: number
#     sql: ${TABLE}.POLYGON_OFFSET_LONGITUDE ;;
#   }
#
#   dimension: pop_10_to_19 {
#     type: number
#     sql: ${TABLE}.POP_10_TO_19 ;;
#   }
#
#   dimension: pop_20_to_29 {
#     type: number
#     sql: ${TABLE}.POP_20_TO_29 ;;
#   }
#
#   dimension: pop_30_to_39 {
#     type: number
#     sql: ${TABLE}.POP_30_TO_39 ;;
#   }
#
#   dimension: pop_40_to_49 {
#     type: number
#     sql: ${TABLE}.POP_40_TO_49 ;;
#   }
#
#   dimension: pop_50_to_59 {
#     type: number
#     sql: ${TABLE}.POP_50_TO_59 ;;
#   }
#
#   dimension: pop_60_to_69 {
#     type: number
#     sql: ${TABLE}.POP_60_TO_69 ;;
#   }
#
#   dimension: pop_70_to_79 {
#     type: number
#     sql: ${TABLE}.POP_70_TO_79 ;;
#   }
#
#   dimension: pop_80_plus {
#     type: number
#     sql: ${TABLE}.POP_80_PLUS ;;
#   }
#
#   dimension: pop_under_10 {
#     type: number
#     sql: ${TABLE}.POP_UNDER_10 ;;
#   }
#
#   dimension: population_center_latitude {
#     type: number
#     sql: ${TABLE}.POPULATION_CENTER_LATITUDE ;;
#   }
#
#   dimension: population_center_longitude {
#     type: number
#     sql: ${TABLE}.POPULATION_CENTER_LONGITUDE ;;
#   }
#
#   dimension: primary_city {
#     type: string
#     sql: ${TABLE}.PRIMARY_CITY ;;
#   }
#
#   dimension: state {
#     type: string
#     sql: ${TABLE}.STATE ;;
#   }
#
#   dimension: timezone {
#     type: string
#     sql: ${TABLE}.TIMEZONE ;;
#   }
#
#   dimension: total_female_population {
#     type: number
#     sql: ${TABLE}.TOTAL_FEMALE_POPULATION ;;
#   }
#
#   dimension: total_male_population {
#     type: number
#     sql: ${TABLE}.TOTAL_MALE_POPULATION ;;
#   }
#
#   dimension: two_or_more_races {
#     type: number
#     sql: ${TABLE}.TWO_OR_MORE_RACES ;;
#   }
#
#   dimension: type {
#     type: string
#     sql: ${TABLE}.TYPE ;;
#   }
#
#   dimension: unacceptable_cities {
#     type: string
#     sql: ${TABLE}.UNACCEPTABLE_CITIES ;;
#   }
#
#   dimension: white {
#     type: number
#     sql: ${TABLE}.WHITE ;;
#   }
#
#   dimension: world_region {
#     type: string
#     sql: ${TABLE}.WORLD_REGION ;;
#   }
#
#   dimension: zip {
#     type: zipcode
#     sql: ${TABLE}.ZIP ;;
#   }
#
#   measure: count {
#     type: count
#     drill_fields: []
#   }
# }
