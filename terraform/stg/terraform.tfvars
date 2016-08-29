#--------------------------------------------------------------
# vpc settings
#--------------------------------------------------------------
vpc_name = "demo-staging-vpc"
vpc_cidr = "10.10.0.0/16"
vpc_internet_gateway = "demo-staging-igw"

vpc_subnet_front_public_1_name = "demo-staging-front-subnet-1"
vpc_subnet_front_public_1_cidr = "10.10.10.0/24"
vpc_subnet_front_public_2_name = "demo-staging-front-subnet-2"
vpc_subnet_front_public_2_cidr = "10.10.20.0/24"

vpc_subnet_app_private_1_name = "demo-staging-app-subnet-1"
vpc_subnet_app_private_1_cidr = "10.10.30.0/24"
vpc_subnet_app_private_2_name = "demo-staging-app-subnet-2"
vpc_subnet_app_private_2_cidr = "10.10.40.0/24"

vpc_subnet_backend_private_1_name = "demo-staging-backend-subnet-1"
vpc_subnet_backend_private_1_cidr = "10.10.50.0/24"
vpc_subnet_backend_private_2_name = "demo-staging-backend-subnet-2"
vpc_subnet_backend_private_2_cidr = "10.10.60.0/24"

vpc_routetable_public_1_name = "demo-staging-public-rt-1"
vpc_routetable_public_2_name = "demo-staging-public-rt-2"
vpc_routetable_private_name = "demo-staging-private-rt"
vpc_routetable_private_1_name = "demo-staging-private-rt-1"
vpc_routetable_private_2_name = "demo-staging-private-rt-2"

vpc_dhcp_options_name = "demo-staging-dhcp_options"

#--------------------------------------------------------------
# security group settings
#--------------------------------------------------------------
ssh-only-name = "demo-staging-ssh-only"
elb-sg-name = "demo-staging-elb-sg"
cms-elb-sg-name = "demo-staging-cms-elb-sg"
web-sg-name = "demo-staging-web-sg"
cms-web-sg-name = "demo-staging-cms-web-sg"
mysql-db-sg-name = "demo-staging-mysql-db-sg"
postgre-db-sg-name = "demo-staging-postgre-db-sg"
memcached-cache-sg-name = "demo-staging-memcached-cache-sg"
redis-cache-sg-name = "demo-staging-redis-cache-sg"
