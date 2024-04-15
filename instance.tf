resource "aws_instance" "example" {
  ami                    = "ami-0451f2687182e0411"
  instance_type          = "t2.micro"
  key_name               = "simple"
  subnet_id              = aws_subnet.subnet1.id
  associate_public_ip_address = true
}
