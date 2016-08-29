#--------------------------------------------------------------
# VPC
#--------------------------------------------------------------
resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  tags {
    Name = "${var.vpc_name}"
  }
}

#--------------------------------------------------------------
# VPC NAT Gateway
#--------------------------------------------------------------
resource "aws_nat_gateway" "nat-gateway-1" {
    allocation_id = "${aws_eip.eip-nat-1.id}"
    subnet_id = "${aws_subnet.vpc_subnet_front_public_1.id}"
}
resource "aws_eip" "eip-nat-1" {
    vpc = true
}

resource "aws_nat_gateway" "nat-gateway-2" {
    allocation_id = "${aws_eip.eip-nat-2.id}"
    subnet_id = "${aws_subnet.vpc_subnet_front_public_2.id}"
}
resource "aws_eip" "eip-nat-2" {
    vpc = true
}

#--------------------------------------------------------------
# VPC DHCP Options
#--------------------------------------------------------------
resource "aws_vpc_dhcp_options" "dhcp" {
    domain_name = "ec2.internal.com"
    domain_name_servers = ["AmazonProvidedDNS"]
    tags {
        Name = "${var.vpc_dhcp_options_name}"
    }
}
resource "aws_vpc_dhcp_options_association" "dhcp-association" {
    vpc_id = "${aws_vpc.vpc.id}"
    dhcp_options_id = "${aws_vpc_dhcp_options.dhcp.id}"
}
