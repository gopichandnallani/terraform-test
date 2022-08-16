output "route53_zone_name" {
    value = aws_route53_record.primary.name
}

output "route53_zone_id" {
    value = aws_route53_record.primary.id
}