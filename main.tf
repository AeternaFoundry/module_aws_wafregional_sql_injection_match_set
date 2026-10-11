resource "aws_wafregional_sql_injection_match_set" "wafregional_sql_injection_match_sets" {
  for_each = var.wafregional_sql_injection_match_sets

  name   = each.value.name
  region = each.value.region

  dynamic "sql_injection_match_tuple" {
    for_each = each.value.sql_injection_match_tuple != null ? each.value.sql_injection_match_tuple : []
    content {
      field_to_match {
        data = sql_injection_match_tuple.value.field_to_match.data
        type = sql_injection_match_tuple.value.field_to_match.type
      }
      text_transformation = sql_injection_match_tuple.value.text_transformation
    }
  }
}

