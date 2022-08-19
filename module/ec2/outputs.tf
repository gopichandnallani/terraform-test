output "instance_ids" {
    value = aws_instance.web-1.*.id
}

output "instance-public-ip" {
    value = aws_instance.web-1.*.public_ip
}