# CONFIGURATION AWS PROVIDER
region = "us-east-1"

#####################
# VPC
#####################
subnet_cidr_vpc = "10.0.0.0/16"
dns_hostnames   = true

#####################
# CONFIGURATION SUBNET
#####################
map_public_ip_on_launch = true

# cidr blocks for subnets
public_subnet_cidr  = ["10.0.0.0/24", "10.0.2.0/24"]
private_subnet_cidr = ["10.0.1.0/24", "10.0.3.0/24"]

# Availiability Zones
availability_zones = ["us-east-1a", "us-east-1b"]

#####################
# INSTANCE
#####################
instance_type = "t2.micro"

#####################
# CONFIGURATION SECURITY GROUP
#####################
# Instance EC2 Security Group for web server
all_destination_cidr = "0.0.0.0/0"
web_port             = 80
ssh_port             = 22

# RDS DB Security Group
mysql_port = 3306