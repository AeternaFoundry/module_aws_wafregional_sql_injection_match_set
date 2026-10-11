variable "wafregional_sql_injection_match_sets" {
  description = <<EOT
Map of wafregional_sql_injection_match_sets, attributes below
Required:
    - name
Optional:
    - region
    - sql_injection_match_tuple (block):
        - field_to_match (required, block):
            - data (optional)
            - type (required)
        - text_transformation (required)
EOT

  type = map(object({
    name   = string
    region = optional(string)
    sql_injection_match_tuple = optional(list(object({
      field_to_match = object({
        data = optional(string)
        type = string
      })
      text_transformation = string
    })))
  }))
}

