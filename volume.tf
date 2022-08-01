resource "aws_ebs_volume" "additional_volume" {
    count = 1
    type = "standard"
    availability_zone = var.azs[count.index]
    size              = 40  #change the size of the volume to the 10Gb later.
    tags = {
      Name = "Additional-volume"
      Owner = "Terraform"
    }
}

resource "aws_volume_attachment" "ebs-attach" {
    device_name = "/dev/sdh"
    count = 1
    volume_id = aws_ebs_volume.additional_volume.*.id[count.index]
    instance_id = aws_instance.web-1.*.id[count.index]
}