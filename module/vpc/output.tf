output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.main_sub.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}
