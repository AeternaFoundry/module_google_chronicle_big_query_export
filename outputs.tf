output "chronicle_big_query_exports_id" {
  description = "Map of id values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no id are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chronicle_big_query_exports_big_query_export_package" {
  description = "Map of big_query_export_package values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no big_query_export_package are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => v.big_query_export_package if v.big_query_export_package != null && length(v.big_query_export_package) > 0 }
}
output "chronicle_big_query_exports_entity_graph_settings" {
  description = "Map of entity_graph_settings values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no entity_graph_settings are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => one(v.entity_graph_settings) if v.entity_graph_settings != null && length(v.entity_graph_settings) > 0 }
}
output "chronicle_big_query_exports_instance" {
  description = "Map of instance values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no instance are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "chronicle_big_query_exports_ioc_matches_settings" {
  description = "Map of ioc_matches_settings values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no ioc_matches_settings are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => one(v.ioc_matches_settings) if v.ioc_matches_settings != null && length(v.ioc_matches_settings) > 0 }
}
output "chronicle_big_query_exports_location" {
  description = "Map of location values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no location are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => v.location if v.location != null && length(v.location) > 0 }
}
output "chronicle_big_query_exports_name" {
  description = "Map of name values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no name are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => v.name if v.name != null && length(v.name) > 0 }
}
output "chronicle_big_query_exports_project" {
  description = "Map of project values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no project are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => v.project if v.project != null && length(v.project) > 0 }
}
output "chronicle_big_query_exports_provisioned" {
  description = "Map of provisioned values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no provisioned are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => v.provisioned if v.provisioned != null }
}
output "chronicle_big_query_exports_rule_detections_settings" {
  description = "Map of rule_detections_settings values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no rule_detections_settings are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => one(v.rule_detections_settings) if v.rule_detections_settings != null && length(v.rule_detections_settings) > 0 }
}
output "chronicle_big_query_exports_udm_events_aggregates_settings" {
  description = "Map of udm_events_aggregates_settings values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no udm_events_aggregates_settings are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => one(v.udm_events_aggregates_settings) if v.udm_events_aggregates_settings != null && length(v.udm_events_aggregates_settings) > 0 }
}
output "chronicle_big_query_exports_udm_events_settings" {
  description = "Map of udm_events_settings values across all chronicle_big_query_exports, keyed the same as var.chronicle_big_query_exports except keys with no udm_events_settings are omitted"
  value       = { for k, v in google_chronicle_big_query_export.chronicle_big_query_exports : k => one(v.udm_events_settings) if v.udm_events_settings != null && length(v.udm_events_settings) > 0 }
}

