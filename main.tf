resource "google_chronicle_big_query_export" "chronicle_big_query_exports" {
  for_each = var.chronicle_big_query_exports

  instance                 = each.value.instance
  location                 = each.value.location
  big_query_export_package = each.value.big_query_export_package
  project                  = each.value.project

  dynamic "entity_graph_settings" {
    for_each = each.value.entity_graph_settings != null ? [each.value.entity_graph_settings] : []
    content {
      enabled        = entity_graph_settings.value.enabled
      retention_days = entity_graph_settings.value.retention_days
    }
  }

  dynamic "ioc_matches_settings" {
    for_each = each.value.ioc_matches_settings != null ? [each.value.ioc_matches_settings] : []
    content {
      enabled        = ioc_matches_settings.value.enabled
      retention_days = ioc_matches_settings.value.retention_days
    }
  }

  dynamic "rule_detections_settings" {
    for_each = each.value.rule_detections_settings != null ? [each.value.rule_detections_settings] : []
    content {
      enabled        = rule_detections_settings.value.enabled
      retention_days = rule_detections_settings.value.retention_days
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "udm_events_aggregates_settings" {
    for_each = each.value.udm_events_aggregates_settings != null ? [each.value.udm_events_aggregates_settings] : []
    content {
      enabled        = udm_events_aggregates_settings.value.enabled
      retention_days = udm_events_aggregates_settings.value.retention_days
    }
  }

  dynamic "udm_events_settings" {
    for_each = each.value.udm_events_settings != null ? [each.value.udm_events_settings] : []
    content {
      enabled        = udm_events_settings.value.enabled
      retention_days = udm_events_settings.value.retention_days
    }
  }
}

