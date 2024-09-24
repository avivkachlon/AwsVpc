output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.main_vpc.id
}

output "subnet1_id" {
  description = "The ID of the first created subnet"
  value       = aws_subnet.subnet1.id
}

output "subnet2_id" {
  description = "The ID of the second created subnet"
  value       = aws_subnet.subnet2.id
}
