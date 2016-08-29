#--------------------------------------------------------------
# Subnets
#--------------------------------------------------------------

#--------------------------------------------------------------
# Front Subnet
#--------------------------------------------------------------
resource "aws_subnet" "vpc_subnet_front_public_1" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.vpc_subnet_front_public_1_cidr}"
  availability_zone = "ap-northeast-1b"
  map_public_ip_on_launch = true
  tags {
    Name = "${var.vpc_subnet_front_public_1_name}"
  }
}
resource "aws_subnet" "vpc_subnet_front_public_2" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.vpc_subnet_front_public_2_cidr}"
  availability_zone = "ap-northeast-1c"
  map_public_ip_on_launch = true
  tags {
    Name = "${var.vpc_subnet_front_public_2_name}"
  }
}

#--------------------------------------------------------------
# App Subnet
#--------------------------------------------------------------
resource "aws_subnet" "vpc_subnet_app_private_1" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.vpc_subnet_app_private_1_cidr}"
  availability_zone = "ap-northeast-1b"
  tags {
    Name = "${var.vpc_subnet_app_private_1_name}"
  }
}
resource "aws_subnet" "vpc_subnet_app_private_2" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.vpc_subnet_app_private_2_cidr}"
  availability_zone = "ap-northeast-1c"
  tags {
    Name = "${var.vpc_subnet_app_private_2_name}"
  }
}

#--------------------------------------------------------------
# Backend Subnet
#--------------------------------------------------------------
resource "aws_subnet" "vpc_subnet_backend_private_1" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.vpc_subnet_backend_private_1_cidr}"
  availability_zone = "ap-northeast-1b"
  tags {
    Name = "${var.vpc_subnet_backend_private_1_name}"
  }
}
resource "aws_subnet" "vpc_subnet_backend_private_2" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.vpc_subnet_backend_private_2_cidr}"
  availability_zone = "ap-northeast-1c"
  tags {
    Name = "${var.vpc_subnet_backend_private_2_name}"
  }
}
