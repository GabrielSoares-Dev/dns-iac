data "aws_acm_certificate" "boilerplate_nestjs_certificate" {
  domain   = "${lower(var.environment)}.${var.default_example_domain}"
}