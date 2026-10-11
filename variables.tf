variable "cloud_migrations_migration_assets_lookup" {
  description = <<EOT
Map of cloud_migrations_migration_assets_lookup, attributes below
Optional:
    - display_name
    - migration_asset_id
    - migration_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    display_name       = optional(string)
    migration_asset_id = optional(string)
    migration_id       = optional(string)
    state              = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

