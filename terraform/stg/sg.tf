#--------------------------------------------------------------
# Security Group
#--------------------------------------------------------------
resource "aws_security_group" "elb-sg" {
  name              = "${var.elb-sg-name}"
  description       = "${var.elb-sg-name}"
  vpc_id            = "${aws_vpc.vpc.id}"
  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags {
    Name            = "${var.elb-sg-name}"
  }
}

resource "aws_security_group" "cms-elb-sg" {
  name              = "${var.cms-elb-sg-name}"
  description       = "${var.cms-elb-sg-name}"
  vpc_id            = "${aws_vpc.vpc.id}"
  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags {
    Name            = "${var.cms-elb-sg-name}"
  }
}

resource "aws_security_group" "web-sg" {
  name              = "${var.web-sg-name}"
  description       = "${var.web-sg-name}"
  vpc_id            = "${aws_vpc.vpc.id}"
  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = ["${aws_security_group.elb-sg.id}"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags {
    Name            = "${var.web-sg-name}"
  }
}

resource "aws_security_group" "cms-web-sg" {
  name              = "${var.cms-web-sg-name}"
  description       = "${var.cms-web-sg-name}"
  vpc_id            = "${aws_vpc.vpc.id}"
  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = ["${aws_security_group.cms-elb-sg.id}"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags {
    Name            = "${var.cms-web-sg-name}"
  }
}

resource "aws_security_group" "mysql-db-sg" {
  name              = "${var.mysql-db-sg-name}"
  description       = "${var.mysql-db-sg-name}"
  vpc_id            = "${aws_vpc.vpc.id}"
  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = ["${aws_security_group.web-sg.id}"]
  }
  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = ["${aws_security_group.cms-web-sg.id}"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags {
    Name            = "${var.mysql-db-sg-name}"
  }
}

resource "aws_security_group" "postgre-db-sg" {
  name              = "${var.postgre-db-sg-name}"
  description       = "${var.postgre-db-sg-name}"
  vpc_id            = "${aws_vpc.vpc.id}"
  ingress {
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = ["${aws_security_group.web-sg.id}"]
  }
  ingress {
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = ["${aws_security_group.cms-web-sg.id}"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags {
    Name            = "${var.postgre-db-sg-name}"
  }
}

resource "aws_security_group" "memcached-cache-sg" {
  name              = "${var.memcached-cache-sg-name}"
  description       = "${var.memcached-cache-sg-name}"
  vpc_id            = "${aws_vpc.vpc.id}"
  ingress {
    from_port       = 11212
    to_port         = 11212
    protocol        = "tcp"
    security_groups = ["${aws_security_group.web-sg.id}"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags {
    Name            = "${var.memcached-cache-sg-name}"
  }
}

resource "aws_security_group" "redis-cache-sg" {
  name              = "${var.redis-cache-sg-name}"
  description       = "${var.redis-cache-sg-name}"
  vpc_id            = "${aws_vpc.vpc.id}"
  ingress {
    from_port       = 6379
    to_port         = 6379
    protocol        = "tcp"
    security_groups = ["${aws_security_group.web-sg.id}"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags {
    Name            = "${var.redis-cache-sg-name}"
  }
}
