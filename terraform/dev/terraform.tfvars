#--------------------------------------------------------------
# vpc settings
#--------------------------------------------------------------
vpc_name = "demo-develop-vpc"
vpc_cidr = "10.20.0.0/16"
vpc_internet_gateway = "demo-develop-igw"

vpc_subnet_front_public_1_name = "demo-develop-front-subnet-1"
vpc_subnet_front_public_1_cidr = "10.20.10.0/24"
vpc_subnet_front_public_2_name = "demo-develop-front-subnet-2"
vpc_subnet_front_public_2_cidr = "10.20.20.0/24"

vpc_subnet_app_private_1_name = "demo-develop-app-subnet-1"
vpc_subnet_app_private_1_cidr = "10.20.30.0/24"
vpc_subnet_app_private_2_name = "demo-develop-app-subnet-2"
vpc_subnet_app_private_2_cidr = "10.20.40.0/24"

vpc_subnet_backend_private_1_name = "demo-develop-backend-subnet-1"
vpc_subnet_backend_private_1_cidr = "10.20.50.0/24"
vpc_subnet_backend_private_2_name = "demo-develop-backend-subnet-2"
vpc_subnet_backend_private_2_cidr = "10.20.60.0/24"

vpc_routetable_public_1_name = "demo-develop-public-rt-1"
vpc_routetable_public_2_name = "demo-develop-public-rt-2"
vpc_routetable_private_name = "demo-develop-private-rt"
vpc_routetable_private_1_name = "demo-develop-private-rt-1"
vpc_routetable_private_2_name = "demo-develop-private-rt-2"

vpc_dhcp_options_name = "demo-develop-dhcp_options"

#--------------------------------------------------------------
# security group settings
#--------------------------------------------------------------
ssh-only-name = "demo-develop-ssh-only"
elb-sg-name = "demo-develop-elb-sg"
cms-elb-sg-name = "demo-develop-cms-elb-sg"
web-sg-name = "demo-develop-web-sg"
cms-web-sg-name = "demo-develop-cms-web-sg"
mysql-db-sg-name = "demo-develop-mysql-db-sg"
postgre-db-sg-name = "demo-develop-postgre-db-sg"
memcached-cache-sg-name = "demo-develop-memcached-cache-sg"
redis-cache-sg-name = "demo-develop-redis-cache-sg"
