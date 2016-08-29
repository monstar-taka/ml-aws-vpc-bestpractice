#--------------------------------------------------------------
# Routes Table Association
#--------------------------------------------------------------
resource "aws_route_table_association" "public-rt-1" {
  subnet_id = "${aws_subnet.vpc_subnet_front_public_1.id}"
  route_table_id = "${aws_route_table.public-rt-1.id}"
}
resource "aws_route_table_association" "public-rt-2" {
  subnet_id = "${aws_subnet.vpc_subnet_front_public_2.id}"
  route_table_id = "${aws_route_table.public-rt-2.id}"
}

resource "aws_route_table_association" "private-rt-1" {
  subnet_id = "${aws_subnet.vpc_subnet_app_private_1.id}"
  route_table_id = "${aws_route_table.private-rt-1.id}"
}
resource "aws_route_table_association" "private-rt-2" {
  subnet_id = "${aws_subnet.vpc_subnet_app_private_2.id}"
  route_table_id = "${aws_route_table.private-rt-2.id}"
}

resource "aws_route_table_association" "private-rt-3" {
  subnet_id = "${aws_subnet.vpc_subnet_backend_private_1.id}"
  route_table_id = "${aws_route_table.private-rt-1.id}"
}
resource "aws_route_table_association" "private-rt-4" {
  subnet_id = "${aws_subnet.vpc_subnet_backend_private_2.id}"
  route_table_id = "${aws_route_table.private-rt-2.id}"
}
