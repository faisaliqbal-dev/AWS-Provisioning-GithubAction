variable "subnet_id" {
  type = string
}
output "instance_id" {
  value = aws_instance.practice_vm.id
}

output "public_ip" {
  value = aws_instance.practice_vm.public_ip
}
