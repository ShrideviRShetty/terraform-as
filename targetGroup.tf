resource "aws_lb_target_group" "example" {
  name        = "terraform-example-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.example.id
  target_type = "instance"
}
