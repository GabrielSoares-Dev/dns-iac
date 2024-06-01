resource "aws_route53_record" "example_subdomain" {
  for_each = var.example_subdomains
  zone_id  = aws_route53_zone.primary.id
  name     = each.value.name
  type     = "A"
}
