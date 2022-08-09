data "aws_ami" "ubuntu" {
    owners           = ["373042721571"]
    most_recent      = true


  filter {
    name   = "name"
    values = ["image-test"]
  }
}

data "template_file" "user_data" {
template = file("userdata.sh")
}

resource "aws_instance" "web-1" {
    count     = 1
    ami       = lookup(var.amis, var.region, "us-east-1")
    instance_type = "t2.micro"
    key_name        = var.key_name
    subnet_id       = aws_subnet.public.*.id[count.index]
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    associate_public_ip_address = true
    user_data = data.template_file.user_data.rendered
    tags = {
        Name = "Server-1"
        Owner = "Terraform"
    }
}

# resource "null_resource" "null_resource_test" {
#     provisioner "local-exec" {
#         command = "echo ${aws_instance.web-1.0.public_ip} >> details && echo ${aws_instance.web-1.0.private_ip} >> details "
#     }
# }