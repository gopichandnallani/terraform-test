resource "null_resource" "cluster" {
  count = 1
  provisioner "file" {
    source      = "index.html"
    destination = "/tmp/index.html"
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("development.pem")
      host        = aws_instance.web-1.*.public_ip[count.index] # we need to use like this when we have the multiple instances.
    }
  }

  provisioner "remote-exec" {
    inline = [
        "echo 'my public ip address is ${aws_instance.web-1.0.public_ip}' >> /tmp/index.html",
        "sudo rm /var/www/html/*.html",
        "sudo cp /tmp/index.html /var/www/html/index.html"
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("development.pem")
      host        = aws_instance.web-1.*.public_ip[count.index] # we need to use like this when we have the multiple instances.
    }
  }
}