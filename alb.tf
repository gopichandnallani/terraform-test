resource "aws_lb" "test" {
  name               = var.aws_lb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_all.id]
  subnets            = [for subnet in aws_subnet.public : subnet.id]
  ip_address_type    = "ipv4"


  tags = {
    Owner = "Terrafrom"
  }
}

# Target Group 
resource "aws_lb_target_group" "test-tg" {
  name        = var.targetgroup_name
  target_type = "instance"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.main.id
}

resource "aws_lb_target_group_attachment" "test-attachment" {
  target_group_arn = aws_lb_target_group.test-tg.arn
  target_id        = aws_instance.web-1.0.id
  port             = 80
}

# aws_lb listener
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.test.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.test-tg.arn
  }
}

resource "aws_lb_listener" "manual" {
}


resource "aws_lb_target_group" "manual-tg" {
  name        = var.targetgroup1_name
  target_type = "instance"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.main.id
}