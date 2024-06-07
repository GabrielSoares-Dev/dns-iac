resource "aws_route53_record" "example_subdomain" {
  for_each = var.example_subdomains
  zone_id  = aws_route53_zone.primary.id
  name     = each.value.name
  type     = "A"

  alias {
    name                   = data.aws_ssm_parameter.zone_id_api_gateway_domain_name_dev.value
    zone_id                = data.aws_ssm_parameter.api_gw_laravel_boilerplate_zone_id_dev.value
    evaluate_target_health = false

  }
}


resource "aws_route53_record" "db_mysql_subdomain" {
  zone_id = aws_route53_zone.primary.id
  name    = var.mysql_subdomain
  type    = "A"

  alias {
    name                   = data.aws_db_instance.mysql_instance.endpoint
    zone_id                = data.aws_db_instance.mysql_instance.hosted_zone_id
    evaluate_target_health = false
  }
}
