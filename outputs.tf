output "wafregional_sql_injection_match_sets_id" {
  description = "Map of id values across all wafregional_sql_injection_match_sets, keyed the same as var.wafregional_sql_injection_match_sets"
  value       = { for k, v in aws_wafregional_sql_injection_match_set.wafregional_sql_injection_match_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "wafregional_sql_injection_match_sets_name" {
  description = "Map of name values across all wafregional_sql_injection_match_sets, keyed the same as var.wafregional_sql_injection_match_sets"
  value       = { for k, v in aws_wafregional_sql_injection_match_set.wafregional_sql_injection_match_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "wafregional_sql_injection_match_sets_region" {
  description = "Map of region values across all wafregional_sql_injection_match_sets, keyed the same as var.wafregional_sql_injection_match_sets"
  value       = { for k, v in aws_wafregional_sql_injection_match_set.wafregional_sql_injection_match_sets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "wafregional_sql_injection_match_sets_sql_injection_match_tuple" {
  description = "Map of sql_injection_match_tuple values across all wafregional_sql_injection_match_sets, keyed the same as var.wafregional_sql_injection_match_sets"
  value       = { for k, v in aws_wafregional_sql_injection_match_set.wafregional_sql_injection_match_sets : k => v.sql_injection_match_tuple if v.sql_injection_match_tuple != null && length(v.sql_injection_match_tuple) > 0 }
}

