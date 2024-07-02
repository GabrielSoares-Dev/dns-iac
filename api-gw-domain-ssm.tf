# data "aws_ssm_parameter" "zone_id_api_gw_domain_name_dev" {
#   name = "/dev/api-gw/boilerplate-laravel-10-serverless/domain/name"
# }

# data "aws_ssm_parameter" "api_gw_laravel_boilerplate_zone_id_dev" {
#   name = "/dev/api-gw/boilerplate-laravel-10-serverless/domain/zone-id"
# }

# data "aws_ssm_parameter" "zone_id_api_gw_domain_name_dev" {
#   name = "/dev/api-gw/boilerplate-nestjs-serverless/domain/name"
# }

# data "aws_ssm_parameter" "api_gw_nestjs_boilerplate_zone_id_dev" {
#   name = "/dev/api-gw/boilerplate-nestjs-serverless/domain/zone-id"
# }

data "aws_ssm_parameter" "boilerplate_nestjs_serverless_ssm_api_gw_id" {
  name = "/${lower(var.environment)}/api-gw/boilerplate-nestjs-serverless/id"
}

data "aws_ssm_parameter" "boilerplate_nestjs_serverless_ssm_api_gw_domain_name" {
  name = "/${lower(var.environment)}/api-gw/boilerplate-nestjs-serverless/domain/name"
}

data "aws_ssm_parameter" "boilerplate_nestjs_serverless_ssm_api_gw_domain_zone_id" {
  name = "/${lower(var.environment)}/api-gw/boilerplate-nestjs-serverless/domain/zone-id"
}


