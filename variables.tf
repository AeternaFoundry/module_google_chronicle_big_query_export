variable "chronicle_big_query_exports" {
  description = <<EOT
Map of chronicle_big_query_exports, attributes below
Required:
    - instance
    - location
Optional:
    - big_query_export_package
    - project
    - entity_graph_settings (block):
        - enabled (required)
        - retention_days (required)
    - ioc_matches_settings (block):
        - enabled (required)
        - retention_days (required)
    - rule_detections_settings (block):
        - enabled (required)
        - retention_days (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - udm_events_aggregates_settings (block):
        - enabled (required)
        - retention_days (required)
    - udm_events_settings (block):
        - enabled (required)
        - retention_days (required)
EOT

  type = map(object({
    instance                 = string
    location                 = string
    big_query_export_package = optional(string)
    project                  = optional(string)
    entity_graph_settings = optional(object({
      enabled        = bool
      retention_days = number
    }))
    ioc_matches_settings = optional(object({
      enabled        = bool
      retention_days = number
    }))
    rule_detections_settings = optional(object({
      enabled        = bool
      retention_days = number
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    udm_events_aggregates_settings = optional(object({
      enabled        = bool
      retention_days = number
    }))
    udm_events_settings = optional(object({
      enabled        = bool
      retention_days = number
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

