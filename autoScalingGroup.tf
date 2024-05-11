resource "aws_autoscaling_group" "example" {
  launch_template      = aws_launch_template.example.name
  min_size             = 2
  max_size             = 3
  desired_capacity     = 2
  target_group_arns    = [aws_lb_target_group.example.arn]
  vpc_zone_identifier  = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]

  tag {
    key                 = "Name"
    value               = "terraform-asg-example"
    propagate_at_launch = true
  }
}
