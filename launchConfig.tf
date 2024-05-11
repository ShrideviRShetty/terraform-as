resource "aws_launch_template" "example" {
  name_prefix   = "example_template"
  image_id      = "ami-0e4fd655fb4e26c30"
  instance_type   = "t2.micro"
  key_name        = "simple"
  user_data       = file("datafile.sh")
  security_groups = [aws_security_group.example.id]
tage={
 name="Template1"
}
}
