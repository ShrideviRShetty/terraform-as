resource "aws_launch_configuration" "example" {
  version         = v1.1
  ami             = ami-0e4fd655fb4e26c30
  instance_type   = aws_instance.example.instance_type
  key_name        = aws_instance.example.key_name
  user_data       = file("datafile.sh")
  security_groups = [aws_security_group.example.id]
}
