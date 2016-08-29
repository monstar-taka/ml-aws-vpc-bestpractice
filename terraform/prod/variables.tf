#--------------------------------------------------------------
# AWS Common settings
#--------------------------------------------------------------
variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "ap-northeast-1"
}

#--------------------------------------------------------------
# vpc settings
#--------------------------------------------------------------
variable "vpc_name" {}
variable "vpc_cidr" {}
variable "vpc_internet_gateway" {}

variable "vpc_subnet_front_public_1_name" {}
variable "vpc_subnet_front_public_1_cidr" {}
variable "vpc_subnet_front_public_2_name" {}
variable "vpc_subnet_front_public_2_cidr" {}
variable "vpc_subnet_app_private_1_name" {}
variable "vpc_subnet_app_private_1_cidr" {}
variable "vpc_subnet_app_private_2_name" {}
variable "vpc_subnet_app_private_2_cidr" {}
variable "vpc_subnet_backend_private_1_name" {}
variable "vpc_subnet_backend_private_1_cidr" {}
variable "vpc_subnet_backend_private_2_name" {}
variable "vpc_subnet_backend_private_2_cidr" {}

variable "vpc_routetable_public_1_name" {}
variable "vpc_routetable_public_2_name" {}
variable "vpc_routetable_private_name" {}
variable "vpc_routetable_private_1_name" {}
variable "vpc_routetable_private_2_name" {}

variable "vpc_dhcp_options_name" {}

#--------------------------------------------------------------
# security group settings
#--------------------------------------------------------------
variable "ssh-only-name" {}
variable "elb-sg-name" {}
variable "cms-elb-sg-name" {}
variable "web-sg-name" {}
variable "cms-web-sg-name" {}
variable "mysql-db-sg-name"{}
variable "postgre-db-sg-name"{}
variable "memcached-cache-sg-name"{}
variable "redis-cache-sg-name"{}
