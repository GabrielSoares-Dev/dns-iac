data "aws_ssm_parameter" "zone_id_api_gateway_domain_name_dev" {
  name = "/dev/api-gw/boilerplate-laravel-10-serverless/domain/name"
}

data "aws_ssm_parameter" "api_gw_laravel_boilerplate_zone_id_dev" {
  name = "/dev/api-gw/boilerplate-laravel-10-serverless/domain/zone-id"
}
