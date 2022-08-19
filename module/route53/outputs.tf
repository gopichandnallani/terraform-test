output "route53_zone_name" {
    value = aws_route53_zone.primary.name
}

output "route53_zone_id" {
    value = aws_route53_zone.primary.id
}