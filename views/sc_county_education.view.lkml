# The name of this view in Looker is "Sc County Education"
view: sc_county_education {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `crime_data.sc_county_education` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "County" in Explore.

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: fips {
    type: number
    sql: ${TABLE}.FIPS ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fips {
    type: sum
    sql: ${fips} ;;  }
  measure: average_fips {
    type: average
    sql: ${fips} ;;  }

  dimension: people__education__at_least_bachelors_degree_ {
    type: number
    sql: ${TABLE}.People__Education__At_Least_Bachelors_Degree_ ;;
  }

  dimension: people__education__less_than_9th_grade_ {
    type: number
    sql: ${TABLE}.People__Education__Less_Than_9th_Grade_ ;;
  }

  dimension: people_education__less_than_high_school_ {
    type: number
    sql: ${TABLE}.People_Education__Less_Than_High_School_ ;;
  }

  dimension: percent_9th {
    type: number
    sql: ${TABLE}.Percent_9th ;;
  }

  dimension: percent_ba {
    type: number
    sql: ${TABLE}.Percent_BA ;;
  }

  dimension: percent_hs {
    type: number
    sql: ${TABLE}.Percent_HS ;;
  }

  dimension: rank_within_us_ba {
    type: number
    sql: ${TABLE}.Rank_within_US_BA ;;
  }

  dimension: rank_within_us_hs {
    type: number
    sql: ${TABLE}.Rank_within_US_HS ;;
  }

  dimension: rank_within_us_less_than_9th {
    type: number
    sql: ${TABLE}.Rank_within_US_less_than_9th ;;
  }
  measure: count {
    type: count
  }
}
