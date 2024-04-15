resource "aws_launch_configuration" "example" {
  image_id        = aws_instance.example.ami
  instance_type   = aws_instance.example.instance_type
  key_name        = aws_instance.example.key_name
  user_data       = file("datafile.sh")
  security_groups = [aws_security_group.example.id]
}
