resource "aws_route_table_association" "example_rta" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.example_rt.id
}

resource "aws_route_table_association" "example_rtb" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.example_rt.id
}
