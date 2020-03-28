connection: "bigquery_wip"

# include all the views
include: "/views/**/*.view"

include: "/dashboards/**/*.dashboard"

datagroup: wip_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: wip_poc_default_datagroup

explore: wip_client {}

explore: wip_model_metadata_item {}

explore: wip_time_range {}

explore: v_model_metadata_kpi{}

explore: v_model_performance {}

explore: v_sales_forecast {}

explore: v_evaluation_set {}

explore: v_store {}

explore: v_geo_weather_impact {}

explore: v_weather_sales {}
