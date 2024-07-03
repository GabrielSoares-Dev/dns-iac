# resource "aws_route53_record" "example_subdomain" {
#   for_each = var.example_subdomains
#   zone_id  = aws_route53_zone.primary.id
#   name     = each.value.name
#   type     = "A"

#   alias {
#     name                   = data.aws_ssm_parameter.boilerplate_nestjs_serverless_ssm_api_gw_domain_name.value
#     zone_id                = data.aws_ssm_parameter.boilerplate_nestjs_serverless_ssm_api_gw_domain_zone_id.value
#     evaluate_target_health = false
#   }
# }


# resource "aws_route53_record" "db_mysql_subdomain" {
#   zone_id = aws_route53_zone.primary.id
#   name    = var.mysql_subdomain
#   type    = "CNAME"
#   ttl     = 300
#   records = [data.aws_db_instance.mysql_instance.address]
# }
