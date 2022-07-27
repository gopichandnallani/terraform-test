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
    ami       = "${data.aws_ami.ubuntu.id}"
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