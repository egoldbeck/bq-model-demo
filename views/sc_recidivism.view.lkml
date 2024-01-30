# The name of this view in Looker is "Sc Recidivism"
view: sc_recidivism {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `crime_data.sc_recidivism` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age At Release" in Explore.

  dimension: age_at_release {
    type: string
    sql: ${TABLE}.Age_at_Release ;;
  }

  dimension: avg_days_per_drug_test {
    type: number
    sql: ${TABLE}.Avg_Days_per_DrugTest ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_days_per_drug_test {
    type: sum
    sql: ${avg_days_per_drug_test} ;;  }
  measure: average_avg_days_per_drug_test {
    type: average
    sql: ${avg_days_per_drug_test} ;;  }

  dimension: condition_cog_ed {
    type: yesno
    sql: ${TABLE}.Condition_Cog_Ed ;;
  }

  dimension: condition_mh_sa {
    type: yesno
    sql: ${TABLE}.Condition_MH_SA ;;
  }

  dimension: condition_other {
    type: yesno
    sql: ${TABLE}.Condition_Other ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: delinquency_reports {
    type: string
    sql: ${TABLE}.Delinquency_Reports ;;
  }

  dimension: dependents {
    type: string
    sql: ${TABLE}.Dependents ;;
  }

  dimension: drug_tests_cocaine_positive {
    type: number
    sql: ${TABLE}.DrugTests_Cocaine_Positive ;;
  }

  dimension: drug_tests_meth_positive {
    type: number
    sql: ${TABLE}.DrugTests_Meth_Positive ;;
  }

  dimension: drug_tests_other_positive {
    type: number
    sql: ${TABLE}.DrugTests_Other_Positive ;;
  }

  dimension: drug_tests_thc_positive {
    type: number
    sql: ${TABLE}.DrugTests_THC_Positive ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.Education_Level ;;
  }

  dimension: employment_exempt {
    type: yesno
    sql: ${TABLE}.Employment_Exempt ;;
  }

  dimension: gang_affiliated {
    type: yesno
    sql: ${TABLE}.Gang_Affiliated ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: jobs_per_year {
    type: number
    sql: ${TABLE}.Jobs_Per_Year ;;
  }

  dimension: percent_days_employed {
    type: number
    sql: ${TABLE}.Percent_Days_Employed ;;
  }

  dimension: prior_arrest_episodes_drug {
    type: string
    sql: ${TABLE}.Prior_Arrest_Episodes_Drug ;;
  }

  dimension: prior_arrest_episodes_dvcharges {
    type: yesno
    sql: ${TABLE}.Prior_Arrest_Episodes_DVCharges ;;
  }

  dimension: prior_arrest_episodes_felony {
    type: string
    sql: ${TABLE}.Prior_Arrest_Episodes_Felony ;;
  }

  dimension: prior_arrest_episodes_gun_charges {
    type: yesno
    sql: ${TABLE}.Prior_Arrest_Episodes_GunCharges ;;
  }

  dimension: prior_arrest_episodes_misd {
    type: string
    sql: ${TABLE}.Prior_Arrest_Episodes_Misd ;;
  }

  dimension: prior_arrest_episodes_ppviolation_charges {
    type: string
    sql: ${TABLE}.Prior_Arrest_Episodes_PPViolationCharges ;;
  }

  dimension: prior_arrest_episodes_property {
    type: string
    sql: ${TABLE}.Prior_Arrest_Episodes_Property ;;
  }

  dimension: prior_arrest_episodes_violent {
    type: string
    sql: ${TABLE}.Prior_Arrest_Episodes_Violent ;;
  }

  dimension: prior_conviction_episodes_domestic_violence_charges {
    type: yesno
    sql: ${TABLE}.Prior_Conviction_Episodes_DomesticViolenceCharges ;;
  }

  dimension: prior_conviction_episodes_drug {
    type: string
    sql: ${TABLE}.Prior_Conviction_Episodes_Drug ;;
  }

  dimension: prior_conviction_episodes_felony {
    type: string
    sql: ${TABLE}.Prior_Conviction_Episodes_Felony ;;
  }

  dimension: prior_conviction_episodes_gun_charges {
    type: yesno
    sql: ${TABLE}.Prior_Conviction_Episodes_GunCharges ;;
  }

  dimension: prior_conviction_episodes_misd {
    type: string
    sql: ${TABLE}.Prior_Conviction_Episodes_Misd ;;
  }

  dimension: prior_conviction_episodes_ppviolation_charges {
    type: yesno
    sql: ${TABLE}.Prior_Conviction_Episodes_PPViolationCharges ;;
  }

  dimension: prior_conviction_episodes_prop {
    type: string
    sql: ${TABLE}.Prior_Conviction_Episodes_Prop ;;
  }

  dimension: prior_conviction_episodes_viol {
    type: yesno
    sql: ${TABLE}.Prior_Conviction_Episodes_Viol ;;
  }

  dimension: prior_revocations_parole {
    type: yesno
    sql: ${TABLE}.Prior_Revocations_Parole ;;
  }

  dimension: prior_revocations_probation {
    type: yesno
    sql: ${TABLE}.Prior_Revocations_Probation ;;
  }

  dimension: prison_offense {
    type: string
    sql: ${TABLE}.Prison_Offense ;;
  }

  dimension: prison_years {
    type: string
    sql: ${TABLE}.Prison_Years ;;
  }

  dimension: program_attendances {
    type: string
    sql: ${TABLE}.Program_Attendances ;;
  }

  dimension: program_unexcused_absences {
    type: string
    sql: ${TABLE}.Program_UnexcusedAbsences ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.Race ;;
  }

  dimension: recidivism_arrest_year1 {
    type: yesno
    sql: ${TABLE}.Recidivism_Arrest_Year1 ;;
  }

  dimension: recidivism_arrest_year2 {
    type: yesno
    sql: ${TABLE}.Recidivism_Arrest_Year2 ;;
  }

  dimension: recidivism_arrest_year3 {
    type: yesno
    sql: ${TABLE}.Recidivism_Arrest_Year3 ;;
  }

  dimension: recidivism_within_3years {
    type: yesno
    sql: ${TABLE}.Recidivism_Within_3years ;;
  }

  dimension: residence_changes {
    type: string
    sql: ${TABLE}.Residence_Changes ;;
  }

  dimension: residence_puma {
    type: number
    sql: ${TABLE}.Residence_PUMA ;;
  }

  dimension: supervision_level_first {
    type: string
    sql: ${TABLE}.Supervision_Level_First ;;
  }

  dimension: supervision_risk_score_first {
    type: number
    sql: ${TABLE}.Supervision_Risk_Score_First ;;
  }

  dimension: training_sample {
    type: number
    sql: ${TABLE}.Training_Sample ;;
  }

  dimension: violations_electronic_monitoring {
    type: yesno
    sql: ${TABLE}.Violations_ElectronicMonitoring ;;
  }

  dimension: violations_fail_to_report {
    type: yesno
    sql: ${TABLE}.Violations_FailToReport ;;
  }

  dimension: violations_instruction {
    type: yesno
    sql: ${TABLE}.Violations_Instruction ;;
  }

  dimension: violations_move_without_permission {
    type: yesno
    sql: ${TABLE}.Violations_MoveWithoutPermission ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
