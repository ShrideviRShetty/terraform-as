resource "aws_lb" "example" {
  name               = "terraform-example-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]

  enable_deletion_protection = false

  tags = {
    Name = "terraform-example-alb"
  }
}
