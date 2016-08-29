#--------------------------------------------------------------
# vpc settings
#--------------------------------------------------------------
vpc_name = "demo-prod-vpc"
vpc_cidr = "10.0.0.0/16"
vpc_internet_gateway = "demo-prod-igw"

vpc_subnet_front_public_1_name = "demo-prod-front-subnet-1"
vpc_subnet_front_public_1_cidr = "10.0.10.0/24"
vpc_subnet_front_public_2_name = "demo-prod-front-subnet-2"
vpc_subnet_front_public_2_cidr = "10.0.20.0/24"

vpc_subnet_app_private_1_name = "demo-prod-app-subnet-1"
vpc_subnet_app_private_1_cidr = "10.0.30.0/24"
vpc_subnet_app_private_2_name = "demo-prod-app-subnet-2"
vpc_subnet_app_private_2_cidr = "10.0.40.0/24"

vpc_subnet_backend_private_1_name = "demo-prod-backend-subnet-1"
vpc_subnet_backend_private_1_cidr = "10.0.50.0/24"
vpc_subnet_backend_private_2_name = "demo-prod-backend-subnet-2"
vpc_subnet_backend_private_2_cidr = "10.0.60.0/24"

vpc_routetable_public_1_name = "demo-prod-public-rt-1"
vpc_routetable_public_2_name = "demo-prod-public-rt-2"
vpc_routetable_private_name = "demo-prod-private-rt"
vpc_routetable_private_1_name = "demo-prod-private-rt-1"
vpc_routetable_private_2_name = "demo-prod-private-rt-2"

vpc_dhcp_options_name = "demo-prod-dhcp_options"

#--------------------------------------------------------------
# security group settings
#--------------------------------------------------------------
ssh-only-name = "demo-prod-ssh-only"
elb-sg-name = "demo-prod-elb-sg"
cms-elb-sg-name = "demo-prod-cms-elb-sg"
web-sg-name = "demo-prod-web-sg"
cms-web-sg-name = "demo-prod-cms-web-sg"
mysql-db-sg-name = "demo-prod-mysql-db-sg"
postgre-db-sg-name = "demo-prod-postgre-db-sg"
memcached-cache-sg-name = "demo-prod-memcached-cache-sg"
redis-cache-sg-name = "demo-prod-redis-cache-sg"
