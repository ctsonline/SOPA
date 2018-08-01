connection: "ctsdev"

# include all the views
include: "*.view"

datagroup: sopa_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sopa_default_datagroup

explore: sopa_watermeters {
  label: "SOPA Water Meters"
  }

explore: sopa_programs {
  label: "SOPA Irrigation Programs"
}
