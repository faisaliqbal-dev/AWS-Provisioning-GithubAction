output "instance_id" {
  value = module.ec2_instance[0].instance_id
}

output "public_ip" {
  value = module.ec2_instance[0].public_ip
}
