view: model_user_predictions {
  parameter: percent9th{type: number}
  parameter: percentHS {type: number}
  parameter: percentBA {type: number}

  derived_table: {
    sql:
     SELECT * FROM ML.EXPLAIN_PREDICT(MODEL crime_data.rec_model, (
       SELECT
        {% parameter percent9th %} AS percent_9th,
        {% parameter percentHS %} AS percent_HS,
        {% parameter percentBA %} AS percent_BA,
        001 as id
      ) );;
  }

  dimension: predicted_recidivism {
    type: string
    sql:crime_data.rec_model )) ;;
  }}
