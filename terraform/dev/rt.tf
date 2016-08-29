#--------------------------------------------------------------
# Routes Table
#--------------------------------------------------------------
resource "aws_route_table" "public-rt-1" {
  vpc_id = "${aws_vpc.vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }
  tags {
    Name = "${var.vpc_routetable_public_1_name}"
  }
}

resource "aws_route_table" "public-rt-2" {
  vpc_id = "${aws_vpc.vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }
  tags {
    Name = "${var.vpc_routetable_public_2_name}"
  }
}

resource "aws_route_table" "private-rt-1" {
  vpc_id = "${aws_vpc.vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat-gateway-1.id}"
  }
  tags {
    Name = "${var.vpc_routetable_private_1_name}"
  }
}

resource "aws_route_table" "private-rt-2" {
  vpc_id = "${aws_vpc.vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat-gateway-1.id}"
  }
  tags {
    Name = "${var.vpc_routetable_private_2_name}"
  }
}
