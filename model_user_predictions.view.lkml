view: model_user_predictions {
  parameter: percent9th{type: number}
  parameter: percentHS {type: number}
  parameter: percentBA {type: number}

  derived_table: {
    sql:
     SELECT * FROM ML.EXPLAIN_PREDICT(MODEL retail_banking.fraud_prediction, (
       SELECT '001' AS trans_id,
        {% parameter percent9th %} AS percent_9th,
        {% parameter percentHS %} AS percent_HS,
        {% parameter percentBA %} AS percent_BA
      ) );;
  }

  dimension: predicted_recidivism {
    type: string
    sql: ${TABLE}.predicted_recidivism ;;
  }}
