# VPC Outputs
output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main_vpc.id
}

output "cidr_block" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.main_vpc.cidr_block
}

# Subnet Outputs
output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = [
    aws_subnet.public_subnet1.id,
    aws_subnet.public_subnet2.id
  ]
}

# Web Server Outputs
output "web_server_dns" {
  description = "Public DNS of the web server instance"
  value       = "http://${aws_instance.web_server_1.public_dns}"
}

output "web_server_ip" {
  description = "Public IP of the web server instance"
  value       = "http://${aws_instance.web_server_1.public_ip}"
}