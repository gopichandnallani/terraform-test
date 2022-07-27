output "instance-ids" {
  value = aws_instance.web-1.*.id
}

output "vpc_id" {
    value = aws_vpc.main.id
}

output "security-groupid" {
    value = aws_security_group.allow_all.id
}

output "IGW" {
    value = aws_internet_gateway.gw.id
}

